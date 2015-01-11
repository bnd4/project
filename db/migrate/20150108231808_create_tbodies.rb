class CreateTbodies < ActiveRecord::Migration
  def change
    create_table :tbodies do |t|
      t.text :main
      t.text :name

      t.timestamps
    end
  end
end
