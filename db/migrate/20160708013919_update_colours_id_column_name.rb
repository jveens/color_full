class UpdateColoursIdColumnName < ActiveRecord::Migration
  def change
  	rename_column :palette_colours, :color_id, :colour_id
  end
end
