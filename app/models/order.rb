class Order < ApplicationRecord
  has_many :order_items
  before_save :update_total
  before_create :update_status
end
