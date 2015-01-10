class Order < ActiveRecord::Base
  belongs_to :thead
  belongs_to :tsign
  has_and_belongs_to_many :tbodies

  before_create :generate

  def generate
    self.template=self.thead.head
    str = ''
    self.tbodies.each do |tbody|
      str += tbody.main
    end
    self.template += str
    self.template+=self.tsign.signature
  end

end
