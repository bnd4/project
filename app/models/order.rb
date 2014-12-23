class Order < ActiveRecord::Base
  belongs_to :thead
  belongs_to :tsign
  belongs_to :tbodies
end
