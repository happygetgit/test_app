class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true

  
  def user_exists?(user)
    user = User.where("email = ? or username = ?", user[:email], user[:username])
    user
  end

  
end
