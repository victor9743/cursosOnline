class AdminsDashboardController < ApplicationController
  before_action :authenticate_admin!
  def index
    @alunos = Aluno.all
    @admins = Admin.all
    @instrutores = Instrutor.all
    @cursos = Curso.all
  end

  def new_aluno
  end

  def new_instrutor
  end

  def new_admin
  end

  def confirmar_pagamento
    respond_to do |format|
      begin
        format.html { redirect_to admins_dashboard_index_path, notice: "Pagamento aprovado" }
      rescue => erro
          logInfo(erro.message)
          format.html { render :index, status: :unprocessable_entity }
      end
    end
  end
end
