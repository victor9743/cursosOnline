class CursoPagamentosController < ApplicationController
  before_action :set_curso_pagamento, only: %i[ show edit update destroy ]

  # GET /curso_pagamentos or /curso_pagamentos.json
  def index
    @curso_pagamentos = CursoPagamento.all
  end

  # GET /curso_pagamentos/1 or /curso_pagamentos/1.json
  def show
  end

  # GET /curso_pagamentos/new
  def new
    @curso_pagamento = CursoPagamento.new
  end

  # GET /curso_pagamentos/1/edit
  def edit
  end

  # POST /curso_pagamentos or /curso_pagamentos.json
  def create
    @curso_pagamento = CursoPagamento.new(curso_pagamento_params)

    respond_to do |format|
      if @curso_pagamento.save
        format.html { redirect_to curso_pagamento_url(@curso_pagamento), notice: "Curso pagamento was successfully created." }
        format.json { render :show, status: :created, location: @curso_pagamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curso_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curso_pagamentos/1 or /curso_pagamentos/1.json
  def update
    respond_to do |format|
      if @curso_pagamento.update(curso_pagamento_params)
        format.html { redirect_to curso_pagamento_url(@curso_pagamento), notice: "Curso pagamento was successfully updated." }
        format.json { render :show, status: :ok, location: @curso_pagamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curso_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curso_pagamentos/1 or /curso_pagamentos/1.json
  def destroy
    @curso_pagamento.destroy

    respond_to do |format|
      format.html { redirect_to curso_pagamentos_url, notice: "Curso pagamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso_pagamento
      @curso_pagamento = CursoPagamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curso_pagamento_params
      params.require(:curso_pagamento).permit(:descricao, :cod_barras, :valor, :aprovado)
    end
end
