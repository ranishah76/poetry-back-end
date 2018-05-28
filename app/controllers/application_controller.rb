class ApplicationController < ActionController::API
  require 'httparty'

def get_authors
  url = 'http://poetrydb.org/authors'
  response = HTTParty.get(url)
  response.parsed_response = Author.all
end

end
