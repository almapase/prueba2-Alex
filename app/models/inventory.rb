class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :destroy
  validates :size, numericality: {greater_than: 0}
  after_destroy :record_serial_number

  scope :filter_by_size, ->(query) { where(size: query)  }

  def record_serial_number
    text = "La pieza con serial #{serial_number} ha sido borrada"
    Record.create(description: text)
  end
end
