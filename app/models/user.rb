require 'bcrypt'

class User < ActiveRecord::Base
	has_secure_password

	has_many :books
	has_many :movies
	has_many :comics
	has_many :graphic_novels
	has_many :tv_seasons

	validates :name, 		 presence: true, length: { maximum: 20 }
	validates :password, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create
	validates_uniqueness_of :email

	def a_method_used_for_validation_purposes
		errors.add(:name,  'cannot be more than 20 characters long')
		errors.add(:email, 'not a valid email address')
	end

end