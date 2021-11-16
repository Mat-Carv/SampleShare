class User < ApplicationRecord
  has_many :packs

  # has_many :purchases
  # has_many :packs, through: :purchases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
