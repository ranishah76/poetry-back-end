class Api::V1::AuthorsController < ApplicationController

  def index
    get_authors()
    authors = Author.all
    render json: authors
  end

end
