class MeatsController < ApplicationController

	def new
	end

	def create
		@meat = Meat.new(meat_params)
 
		@meat.save
		redirect_to @meat
	end

	# show a specific meat
	def show
		@meat = Meat.find(params[:id])
	end

	# show ALL meats in the DB
	def index
		@meats = Meat.all
	end


	private

		def meat_params
			params.require(:meat).permit(:name, :supplier_name, :thumbnail, :ab_free, :hormone_free, :wild_caught, :farm_grown, :artificial_color, :description, :growth_conditions)
		end

end
