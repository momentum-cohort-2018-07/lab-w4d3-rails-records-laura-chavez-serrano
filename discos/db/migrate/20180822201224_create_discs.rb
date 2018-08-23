class CreateDiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :discs do |t|
      t.string :title
      t.string :artist
      t.integer :year

      t.timestamps
    end
  end
end