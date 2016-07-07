class Color < ActiveRecord::Base

	has_many :palettes, :through => :palette_colours

end
