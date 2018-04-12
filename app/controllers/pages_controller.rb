class PagesController < ApplicationController
	
	def welcome 
		render :welcome
	end 

	def contest
		render :contest
	end 
end
