class PagesController < ApplicationController
	
	def welcome 
		@header = "This is the welcome page"
		render :welcome
	end 

	def contest
		@header = "This is the contest page"
		render :contest
	end 


end
