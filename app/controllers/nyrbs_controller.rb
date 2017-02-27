class NyrbsController < ApplicationController
	def index
		@nyrbs = Nyrb.all
	end

	
end
