class StaticPagesController < ApplicationController
	def home
		@writings = Writing.first(3)
	end

	def portfolio
	end
end
