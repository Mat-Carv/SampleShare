class Purchase < ApplicationRecord
  # user purchasing the pack
  belongs_to :user
  # pack being purchased by the user
  belongs_to :pack
end
