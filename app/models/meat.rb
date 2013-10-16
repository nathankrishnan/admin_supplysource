class Meat < ActiveRecord::Base

	belongs_to :supplier

	validates :name, presence: true
	validates :supplier_id, presence: true

end
