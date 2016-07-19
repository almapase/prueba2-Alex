class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :destroy
  validates :size, numericality: {greater_than: 0}

  scope :filter_by_size, ->(query) { where(size: query)  }
end
