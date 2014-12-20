class CreateTheads < ActiveRecord::Migration
  def change
    create_table :theads do |t|
      t.text :head
      t.belongs_to :order

      t.timestamps
    end
  end
end
