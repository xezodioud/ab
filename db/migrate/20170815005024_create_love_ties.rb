class CreateLoveTies < ActiveRecord::Migration
  def change
    create_table :love_ties do |t|
      t.references :collection, index: true
      t.string :title
      t.float :price

      t.timestamps
    end
  end
end
