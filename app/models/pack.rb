class Pack < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :purchases
  has_many :user_purchases, through: :purchases, source: :user
end
