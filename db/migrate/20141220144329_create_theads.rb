class CreateTheads < ActiveRecord::Migration
  def change
    create_table :theads do |t|
      t.text :head
      t.text :name

      t.timestamps
    end
  end
end
