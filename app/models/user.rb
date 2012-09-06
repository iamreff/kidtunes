# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  email      :string(255)
#  type       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :email, :type, :password, :password_confirmation
  has_secure_password

User
Kid

  before_save { |user| user.email = email.downcase }

  validates :fname, presence: true, length: { maximum: 30 }
  validates :lname, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
	uniqueness: { case_sensitive: false }	
  validates :type, presence: true
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
