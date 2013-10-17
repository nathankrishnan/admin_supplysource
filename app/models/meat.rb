class Meat < ActiveRecord::Base
	# sets the scancount to 0 before saving a record (if nil)
	before_save :set_scancount

	belongs_to :supplier

	validates :name, presence: true
	validates :supplier_id, presence: true

	def set_scancount
		self.scancount ||= 0
	end

end
