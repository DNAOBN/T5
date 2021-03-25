class MainController < ApplicationController
  def index
    @disciplinas = Disciplina.all
    @discentes = Discente.all
    @docentes = Docente.all
    @identidades = Identidade.all
  end
end
