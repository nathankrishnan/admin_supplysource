class ShopperSessionsController < ApplicationController

  def create
  		@shopper = Shopper.new(shopper_params)
  		@shopper.save
  end


  private

    def shopper_params
      params.require(:shopper).permit(:email, :password_hash, :track, :first_name, :last_name, :gender, :flag_1, :flag_2, :flag_3, :flag_4, :flag_5)
    end


end