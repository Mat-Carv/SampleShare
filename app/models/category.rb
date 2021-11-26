class Category < ApplicationRecord
    # each category can given to many different packs
    has_many :packs
end
