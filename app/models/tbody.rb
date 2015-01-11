class Tbody < ActiveRecord::Base
  has_and_belongs_to_many :orders

  validates :name, presence: true
  validates :main, presence: true

end
