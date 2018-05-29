class ApplicationController < ActionController::API
  require 'httparty'

def get_poems
  url = 'http://poetrydb.org/author/William%20Shakespeare'
  response = HTTParty.get(url)

  parsed = response.parsed_response

  parsed.each do |poems|
    Poem.create(title: poems["title"], lines: poems["lines"], linecount: poems["linecount"])
  end

end

def get_authors
  url = 'http://poetrydb.org/authors'
  response = HTTParty.get(url)

  array = response.parsed_response["authors"]
  array.each do |author|
    Author.create(name: author)
  end
end

end
