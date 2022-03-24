class Restaurant < ApplicationRecord
  has_many :products
  belongs_to :user
  validates :name, presence: true

  def total_of_products
    products.count
  end
end
