class Product < ActiveRecord::Base

	before_save :set_scancounts

	has_attached_file :image

	validates :name, presence: true

	private

		def set_scancounts
			self.track1_scancount ||= 0
			self.track2_scancount ||= 0				
			self.track3_scancount ||= 0
		end

end
