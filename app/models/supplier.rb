class Supplier < ActiveRecord::Base

	has_many :meats, dependent: :destroy

end
