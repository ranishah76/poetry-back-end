class Api::V1::PoemsController < ApplicationController

  def index
    if check_poems
      get_poems()
    end
    poems = Poem.all
    render json: poems
  end

end
