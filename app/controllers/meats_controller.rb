class MeatsController < ApplicationController

	before_action :signed_in_user

	def new
		@meat = Meat.new
	end

	def create
		@meat = Meat.new(meat_params)

		if(@meat.save)
			flash[:success] = "Successfully added a product"
			redirect_to @meat
		else
			render 'new'
		end
		
	end

	# show a specific meat
	def show
		@meat = Meat.find(params[:id])
	end

	# show ALL meats in the DB
	def index
		@meats = Meat.all
	end

	# edit a meat
	def edit
		@meat = Meat.find(params[:id])
	end

	# update a record in the DB
	def update
		@meat = Meat.find(params[:id])

		if @meat.update(meat_params)
			redirect_to @meat
		else
			render 'edit'
		end
	end

	def destroy
		@meat = Meat.find(params[:id])
		@meat.destroy

		redirect_to meats_path
	end

	# render a jsonp response
	def renderJson
		@meats = Meat.all
		render :json => @meats.to_json, :callback => params[:callback]
	end

	private

		def meat_params
			params.require(:meat).permit(:name, :supplier_id, :image, :ab_free, :hormone_free, :wild_caught, :farm_grown, :artificial_color, :description, :growth_conditions)
		end

end
