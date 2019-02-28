class CreateMslanes < ActiveRecord::Migration[5.2]
  def change
    create_table :mslanes do |t|
      t.string :Title
      t.string :Category
      t.integer :Release
      t.integer :Cost

      t.timestamps
    end
  end
end
