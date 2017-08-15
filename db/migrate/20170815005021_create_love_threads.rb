class CreateLoveThreads < ActiveRecord::Migration
  def change
    create_table :love_threads do |t|
      t.references :collection, index: true
      t.string :title
      t.float :price

      t.timestamps
    end
  end
end
