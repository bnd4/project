class Thead < ActiveRecord::Base
  has_many :orders

  validates :name, presence: true
  validates :head, presence: true

end
