class CreatePaletteColours < ActiveRecord::Migration
  def change
    create_table :palette_colours do |t|
      t.references :color, index: true, foreign_key: true
      t.references :palette, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
