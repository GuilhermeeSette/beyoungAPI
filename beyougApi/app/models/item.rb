class Item < ApplicationRecord
  validates :sku, :description, :value, :quantity, presence: true

  belongs_to :order
end
