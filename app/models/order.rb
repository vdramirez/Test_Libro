class Order < ApplicationRecord
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  has_many :line_items, :dependent => :destroy


  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
end
