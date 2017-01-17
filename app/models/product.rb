class Product < ApplicationRecord
  validates :title, presence: true
  validates :quanlity, presence: true
  validates :price, presence: true
  validates :quanlity, numericality: { greater_than: 0}
  validates :price, numericality: { greater_than: 0}
end
