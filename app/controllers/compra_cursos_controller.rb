class CompraCursosController < ApplicationController
  before_action :set_compra_curso, only: %i[ show edit update destroy ]

  # GET /compra_cursos or /compra_cursos.json
  def index
    @compra_cursos = CompraCurso.all
  end

  # GET /compra_cursos/1 or /compra_cursos/1.json
  def show
  end

  # GET /compra_cursos/new
  def new
    @compra_curso = CompraCurso.new
  end

  # GET /compra_cursos/1/edit
  def edit
  end

  # POST /compra_cursos or /compra_cursos.json
  def create
    @compra_curso = CompraCurso.new(compra_curso_params)

    respond_to do |format|
      if @compra_curso.save
        format.html { redirect_to compra_curso_url(@compra_curso), notice: "Compra curso was successfully created." }
        format.json { render :show, status: :created, location: @compra_curso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compra_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_cursos/1 or /compra_cursos/1.json
  def update
    respond_to do |format|
      if @compra_curso.update(compra_curso_params)
        format.html { redirect_to compra_curso_url(@compra_curso), notice: "Compra curso was successfully updated." }
        format.json { render :show, status: :ok, location: @compra_curso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compra_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_cursos/1 or /compra_cursos/1.json
  def destroy
    @compra_curso.destroy

    respond_to do |format|
      format.html { redirect_to compra_cursos_url, notice: "Compra curso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_curso
      @compra_curso = CompraCurso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compra_curso_params
      params.require(:compra_curso).permit(:descricao, :cod_barras, :valor, :aprovado)
    end
end
