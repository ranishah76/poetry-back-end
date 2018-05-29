class Api::V1::PoemsController < ApplicationController

  def index
    get_poems()
    poems = Poem.all
    render json: poems
  end

  private

  def get_poems
    url = 'http://poetrydb.org/author/William%20Shakespeare'
    response = HTTParty.get(url)

    parsed = response.parsed_response

    parsed.each do |poems|
      Poem.create(title: poems["title"], lines: poems["lines"])
    end

  end
end
