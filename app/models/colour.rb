class Colour < ActiveRecord::Base

	belongs_to :user
	has_many :palette_colours
	has_many :palettes, :through => :palette_colours

end
