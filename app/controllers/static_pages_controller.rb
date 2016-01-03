class StaticPagesController < ApplicationController
	def home
		@writings = Writing.first(3)
	end
end
