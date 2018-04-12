class PagesController < ApplicationController
	
	def welcome 
		@header = "This is the welcome page"
		render :welcome
	end 

	def contest
		@header = "This is the contest page"
		render :contest
	end 

	def kitten 
		requested_size = params[:size]
		@kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
	end

end
