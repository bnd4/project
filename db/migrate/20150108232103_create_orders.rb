class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :thead
      t.belongs_to :tsign
      t.text :name
      t.text :template

      t.timestamps
    end
  end
end
