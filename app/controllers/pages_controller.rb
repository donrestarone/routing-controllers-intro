class PagesController < ApplicationController
	
	def welcome 
		@header = "This is the welcome page"
		render :welcome
	end 

	def contest
		@header = "This is the contest page"
		flash[:notice] = "sorry, the contest has ended"
		redirect_to '/welcome'
		#render :contest
	end 

	def set_kitten_url 
		requested_size = params[:size]
		@kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
	end 

	def kitten 
		set_kitten_url
	end

	def kittens 
		set_kitten_url
	end 

	def secrets
		secret_word = "don-restarone"
		if params[:magic_word] != secret_word
			#redirect_to '/secrets'
		 	flash[:alert] = "sorry, you are not authorized to see that page!"
			redirect_to '/welcome'
		end 
	end 



end
