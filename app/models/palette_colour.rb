class PaletteColour < ActiveRecord::Base
  belongs_to :colour
  belongs_to :palette
end
