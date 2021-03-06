  class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  serialize :following, Array

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :tweets

  mount_uploader :avatar, AvatarUploader

end
