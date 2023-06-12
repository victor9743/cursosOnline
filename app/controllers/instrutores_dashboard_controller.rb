class InstrutoresDashboardController < ApplicationController
  before_action :authenticate_instrutor!
  def index
    @cursos = Curso.where(id_instrutor: current_instrutor.id)
  end
end
