class User < ActiveRecord::Base
  has_many :works, dependent: :destroy
  validates :name, presence: true
end
