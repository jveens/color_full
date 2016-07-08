class RenameColorsTableToColours < ActiveRecord::Migration
  def change
  	rename_table :colors, :colours
  end
end
