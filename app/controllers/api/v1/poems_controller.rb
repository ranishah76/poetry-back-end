class Api::V1::PoemsController < ApplicationController

  def index
    get_poems()
    poems = Poem.all
    render json: poems
  end
  
end
