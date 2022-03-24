class Restaurant < ApplicationRecord
  has_many :products
  validates :name, presence: true

  def total_of_products
    products.count
  end
end
