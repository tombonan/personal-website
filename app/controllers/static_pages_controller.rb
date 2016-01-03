class StaticPagesController < ApplicationController
	def home
		@writings = Writing.last(3)
	end
end
