class Pack < ApplicationRecord
  # each pack is created by one user
  belongs_to :user 
  # each pack must have a category
  belongs_to :category
  # each pack may be purchased by many different users
  has_many :purchases
  # each pack may have many users who have purchased it
  has_many :user_purchases, through: :purchases, source: :user

  # may have and image and a sample file attached
  has_one_attached :image, service: :amazon
  has_one_attached :sample, service: :amazon_sample
end
