class Meat < ActiveRecord::Base

	validates :name, presence: true
	#validates :supplier_name, presence: true

end
