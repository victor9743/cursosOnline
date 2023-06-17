class AlunosDashboardController < ApplicationController
  before_action :authenticate_aluno!
  require 'securerandom'

  def index

    begin
      @curso_aluno = CursosAluno.where(id_aluno: current_aluno.id).all
      @cursos = Curso.all

    rescue => erro
      logInfo(erro.message)
      flash.now[:error] = "Ocorreu um erro: #{erro.message}"
    end

    
  end

  def comprar_curso
    respond_to do |format|
      begin
        cod_barras= SecureRandom.random_number(1000000000000000000000000000000000000000).to_s.rjust(6, '0')
        cod_barras= cod_barras.insert(6, ".")
        cod_barras= cod_barras.insert(12, ".")
        cod_barras= cod_barras.insert(19, " ")
        cod_barras= cod_barras.insert(25, ".")
        cod_barras= cod_barras.insert(31, " ")
        cod_barras= cod_barras.insert(33, " ")
        
        @curso = Curso.find(params[:id_curso])

        @curso_pagamento = CursoPagamento.new(
          descricao: "Compra do curso #{@curso.descricao}",
          cod_barras: cod_barras,
          valor: @curso.preco,
          aprovado: 0
        )

        if @curso_pagamento.save
            if CursosAluno.new(
              id_aluno: current_aluno.id,
              id_curso: @curso.id,
              id_pagamento: @curso_pagamento.id,
              curso_concluido: false
            ).save

              logInfo("Curso adicionado com sucesso")
            end
        end
        format.html { redirect_to alunos_dashboard_index_path, notice: "Curso was successfully updated." }
      rescue => erro
        logInfo(erro.message)
        format.html { render :index, status: :unprocessable_entity }
      end
    end
    
  end

end
