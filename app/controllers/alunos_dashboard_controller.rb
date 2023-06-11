class AlunosDashboardController < ApplicationController
  before_action :authenticate_aluno!
  def index
  end
end
