class CreateOrderTbody < ActiveRecord::Migration
  def change
    create_join_table :orders, :tbodies
  end
end
