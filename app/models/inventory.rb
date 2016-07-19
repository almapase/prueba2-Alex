class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work
  validates :size, numericality: {greater_than: 0}
end
