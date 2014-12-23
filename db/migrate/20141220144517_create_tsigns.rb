class CreateTsigns < ActiveRecord::Migration
  def change
    create_table :tsigns do |t|
      t.text :signature

      t.timestamps
    end
  end
end
