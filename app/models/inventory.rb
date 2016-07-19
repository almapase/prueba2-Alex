class Inventory < ActiveRecord::Base
  belongs_to :category
  validates :size, numericality: {greater_than: 0}
end
