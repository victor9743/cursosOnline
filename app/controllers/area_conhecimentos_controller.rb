class AreaConhecimentosController < ApplicationController
  before_action :set_area_conhecimento, only: %i[ show edit update destroy ]

  # GET /area_conhecimentos or /area_conhecimentos.json
  def index
    @area_conhecimentos = AreaConhecimento.all
  end

  # GET /area_conhecimentos/1 or /area_conhecimentos/1.json
  def show
  end

  # GET /area_conhecimentos/new
  def new
    @area_conhecimento = AreaConhecimento.new
  end

  # GET /area_conhecimentos/1/edit
  def edit
  end

  # POST /area_conhecimentos or /area_conhecimentos.json
  def create
    @area_conhecimento = AreaConhecimento.new(area_conhecimento_params)

    respond_to do |format|
      if @area_conhecimento.save
        format.html { redirect_to area_conhecimento_url(@area_conhecimento), notice: "Area conhecimento was successfully created." }
        format.json { render :show, status: :created, location: @area_conhecimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @area_conhecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_conhecimentos/1 or /area_conhecimentos/1.json
  def update
    respond_to do |format|
      if @area_conhecimento.update(area_conhecimento_params)
        format.html { redirect_to area_conhecimento_url(@area_conhecimento), notice: "Area conhecimento was successfully updated." }
        format.json { render :show, status: :ok, location: @area_conhecimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @area_conhecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_conhecimentos/1 or /area_conhecimentos/1.json
  def destroy
    @area_conhecimento.destroy

    respond_to do |format|
      format.html { redirect_to area_conhecimentos_url, notice: "Area conhecimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_conhecimento
      @area_conhecimento = AreaConhecimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def area_conhecimento_params
      params.require(:area_conhecimento).permit(:descricao, :ativo)
    end
end
