class ChangeTableColorsName < ActiveRecord::Migration
  def change
  	def change
		rename_table :colors, :colours
	end 
  end
end
