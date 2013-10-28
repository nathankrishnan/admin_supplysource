class ProductsController < ApplicationController

	before_action :signed_in_user, only: [:new, :create, :show, :index, :edit, :update, :destroy]

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)

		if(@product.save)
			flash[:success] = "Successfully added a product"
			redirect_to @product
		else
			render 'new'
		end
		
	end

	# show a specific product
	def show
		@product = Product.find(params[:id])
	end

	# show ALL products in the DB
	def index
		@products = Product.all
	end

	# edit a product
	def edit
		@product = Product.find(params[:id])
	end

	# update a record in the DB
	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to Products_path
	end

	# render a jsonp response
	def renderJson
		@product = Product.find(params[:id])
		render :json => @product.to_json, :callback => params[:callback]
	end

	private

		def product_params
			params.require(:product).permit(:name, :price, :image, :category, :packaged, :calories, :gluten, :protein, :carbs)
		end

end
