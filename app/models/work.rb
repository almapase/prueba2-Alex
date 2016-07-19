class Work < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory

  scope :last_5, -> { order(created_at: :desc).limit(5) }
  scope :without_item, -> { where(inventory_id: nil)  }
end
