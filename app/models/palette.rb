class Palette < ActiveRecord::Base

	belongs_to :user
	has_many :colors, :through => :palette_colours

end
