class Book < ApplicationRecord
  validates :title, :author, :genre, presence: true
  has_many :reviews, dependent: :destroy
end
