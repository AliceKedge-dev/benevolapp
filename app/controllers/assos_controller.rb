class AssosController < ApplicationController

  def index
    @assos = Assos.all
  end
end
