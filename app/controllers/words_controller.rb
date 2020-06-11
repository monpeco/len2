class WordsController < ApplicationController
  def new
  end
	
  def create
    @word = word_params
    puts @word
    redirect_to home_index_path
  end

  private
    def word_params
      params.require(:word).permit(:word, :translation, :association)
    end
end
