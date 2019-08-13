require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    letters_array = ('a'..'z').to_a
    10.times { @letters << letters_array.sample }
  end

  def score
    @guess = params[:guess]
    @split_guess = @guess.split(//)
    response = open("https://wagon-dictionary.herokuapp.com/#{@guess}")
    json = JSON.parse(response.read)
    result = json['found']

    # loop through  the guess deleting each match


  end
end
