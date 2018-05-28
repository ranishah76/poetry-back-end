class Api::V1::PoemsController < ApplicationController

  def index
    get_poems()
    poems = Poem.all
    render json: poems
  end

  private

  def get_poems
    url = 'http://poetrydb.org/title/lines'
    response = HTTParty.get(url)


    parsed = response.parsed_response

    parsed.map()

    titles = response["titles"]
    lines = response["lines"]
    linecount = response["linecount"]




      Poem.create(title: mappedTitles, lines: mappedLines, linecount: mappedLineCount)
    # response.parsed_response
  end

end

  #
  # hank = array.select do |poem|
  #    poem[authors] === 'Alan Seeger'
  # end
  #
  # hello.each do |poem|
  #   poem.each do |attributes|
  #      Poem.create(title: attributes["title"])
  #      Poem.create(lines: attributes["lines"])
  #      Poem.create(linecount: attributes["linecount"])
  #    end
  #  end


# parsed_response = {{title} {author} {lines}}
