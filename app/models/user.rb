class User < ActiveRecord::Base
	has_many :questions
  validates :email, :fb_username, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
end