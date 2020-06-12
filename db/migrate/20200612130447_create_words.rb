class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :original
      t.string :origin
      t.string :translation
      t.string :destination
      t.string :pronunciation
      t.text :hint

      t.timestamps
    end
  end
end
