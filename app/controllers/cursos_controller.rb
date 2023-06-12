class CursosController < ApplicationController
  before_action :authenticate_instrutor!
  before_action :set_curso, only: %i[ show edit update destroy ]

  # GET /cursos or /cursos.json
  def index
    @cursos = Curso.all
  end

  # GET /cursos/1 or /cursos/1.json
  def show
  end

  # GET /cursos/new
  def new
    @curso = Curso.new
    @AreaConhecimento = AreaConhecimento.where(ativo: true)
  end

  # GET /cursos/1/edit
  def edit
  end

  # POST /cursos or /cursos.json
  def create
    @curso = Curso.new(
      titulo: curso_params["titulo"],
      descricao: curso_params["descricao"],
      duracao: "#{curso_params["duracao"]} Mes(es)",
      preco: curso_params["preco"],
      nivel_dificuldade:  curso_params["nivel_dificuldade"],
      id_instrutor:  current_instrutor.id
    )

    respond_to do |format|
      if @curso.save
        if !params["conhecimentos"].nil?
          params["conhecimentos"].each do |conhecimento|
            CursoAreaConhecimento.create!(
              id_curso: @curso.id,
              id_area_conhecimento: conhecimento
            )
          end
        end
        format.html { redirect_to instrutores_dashboard_index_path, notice: "Curso was successfully created." }
        format.json { render :show, status: :created, location: @curso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursos/1 or /cursos/1.json
  def update
    respond_to do |format|
      if @curso.update(curso_params)
        format.html { redirect_to curso_url(@curso), notice: "Curso was successfully updated." }
        format.json { render :show, status: :ok, location: @curso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursos/1 or /cursos/1.json
  def destroy
    @curso.destroy

    respond_to do |format|
      format.html { redirect_to instrutores_dashboard_index_url, notice: "Curso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso
      @curso = Curso.find(params[:id])
      @AreaConhecimento = AreaConhecimento.where(ativo: true)
      @cursoAreaConhecimento = CursoAreaConhecimento.where(id_curso: @curso.id)
      @arrayConhecimentos = []

      @cursoAreaConhecimento.each do |conhecimento|
        @arrayConhecimentos.push(conhecimento.id_area_conhecimento)
      end
    end

    # Only allow a list of trusted parameters through.
    def curso_params
      params.require(:curso).permit(:titulo, :descricao, :nivel_dificuldade, :duracao, :preco, :id_instrutor)
    end
end
