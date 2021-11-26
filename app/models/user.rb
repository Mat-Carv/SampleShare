class User < ApplicationRecord
  validates :username, presence: true

  # sample packs created by the user
  has_many :packs, dependent: :destroy

  # purchases of packs created by other users
  has_many :purchases, dependent: :destroy

  # access to packs created by others users that have been purchased by the current user
  has_many :purchased_packs, through: :purchases, source: :pack
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
