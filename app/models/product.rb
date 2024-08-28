class Product < ApplicationRecord
  validates_numericality_of :price, :only_integer => true, :greater_than_or_equal_to => 0
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :gender, presence: true

  belongs_to :category
  has_many :stocks
  has_many :order_products

  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end

end
