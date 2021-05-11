class WordsController < ApplicationController
  def main
    @wotd = Wotd.last
    @word = Word.new
  end

  def search
    @word = params[:word][:search_term]
    @result = Word.search_by_word(@word)
  end
end
