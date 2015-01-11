class Tsign < ActiveRecord::Base
  has_many :orders

  validates :signature, presence: true

end
