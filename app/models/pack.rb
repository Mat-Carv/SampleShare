class Pack < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :purchases
end
