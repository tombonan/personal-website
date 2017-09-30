class StaticPagesController < ApplicationController
	def home
		@writings = Writing.order("updated_at DESC").limit(3)
	end

	def portfolio
	end
end
