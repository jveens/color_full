class Palette < ActiveRecord::Base

	belongs_to :user
	has_many :colours, :through => :palette_colours

end
