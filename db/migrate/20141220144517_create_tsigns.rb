class CreateTsigns < ActiveRecord::Migration
  def change
    create_table :tsigns do |t|
      t.text :signature
      t.belongs_to :order

      t.timestamps
    end
  end
end
