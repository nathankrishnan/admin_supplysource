class Meat < ActiveRecord::Base
	# sets the scancount to 0 before saving a record (if nil)
	before_save :set_scancount

	belongs_to :supplier

	has_attached_file :image

	validates :name, presence: true
	validates :supplier_id, presence: true


	private

		def set_scancount
			self.scancount ||= 0
		end

end
