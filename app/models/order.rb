class Order < ActiveRecord::Base
  has_many :theads
  has_many :tsigns
  has_and_belongs_to_many :tbodies
end
