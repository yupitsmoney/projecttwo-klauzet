class User < ActiveRecord::Base
  has_secure_password
  
  validates :email, presence: true, uniqueness: { case_sensitive: false}

  has_many :fashionposts
  has_many :comments
end
