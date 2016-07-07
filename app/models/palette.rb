class Palette < ActiveRecord::Base

	has_many :colors, :through => :palette_colours

end
