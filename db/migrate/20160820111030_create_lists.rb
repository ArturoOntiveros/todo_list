class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :task
      t.string :title
      t.string :note
      t.boolean :completed

      t.timestamps
    end
  end
end
