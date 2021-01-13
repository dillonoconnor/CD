class WordsController < ApplicationController
  def main
    @word = Word.new
  end

  def search
    @word = params[:word][:search_term]
    @result = Word.basic_search(@word)
  end
end
