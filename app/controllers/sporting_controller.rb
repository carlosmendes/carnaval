require 'count_arrays'

class SportingController < ApplicationController
  SPORTING = ['bas dost', 'rui']

  def list
  	@players = SPORTING
  	if params[:name] && !params[:name].empty? 
	  	@players = @players.select do |player|
	  		player == params[:name]
	  	end
	  end
	@players_count = a_method(@players)
  end 

  def show
  	@player = SPORTING[params[:id].to_i]
  end
end
