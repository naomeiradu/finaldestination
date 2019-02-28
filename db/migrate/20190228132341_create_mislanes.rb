class CreateMislanes < ActiveRecord::Migration[5.2]
  def change
    create_table :mislanes do |t|
      t.string :Title
      t.string :Category
      t.integer :year_release
      t.integer :Cost

      t.timestamps
    end
  end
end
