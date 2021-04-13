class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..12 }
  validates :email, presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { in: 6..16 }

  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
