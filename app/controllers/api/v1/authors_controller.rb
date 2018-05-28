class Api::V1::AuthorsController < ApplicationController
 require 'httparty'

  def index
    get_authors()
    authors = Author.all
    render json: authors
  end

  private

  def get_authors
    url = 'http://poetrydb.org/authors'
    response = HTTParty.get(url)

    array = response.parsed_response["authors"]
    array.each do |author|
      Author.create(name: author)
    end
    # response.parsed_response
  end

end
