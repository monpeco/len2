class WordsController < ApplicationController
  def new
  end
	
  def create
    @word = Word.new(word_params)
    @word.save
    redirect_to home_index_path
  end

  private
    def word_params
      params.require(:word).permit(:origin, :destination, :original, :pronunciation, :translation, :hint)
    end
end
