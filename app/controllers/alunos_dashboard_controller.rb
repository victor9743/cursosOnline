class AlunosDashboardController < ApplicationController
  before_action :authenticate_aluno!
  def index
    @cursoAluno = CursosAluno.where(id_curso: current_aluno).all
  end
end
