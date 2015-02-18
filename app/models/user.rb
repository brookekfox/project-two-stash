require 'bcrypt'

class User < ActiveRecord::Base
	has_secure_password

	has_many :books
	has_many :movies
	has_many :comics
	has_many :graphic_novels
	has_many :tv_seasons

	# has_attached_file :avatar,
	# 									:styles => {
	# 										:medium => '300x300>',
	# 										:thumb => '100x100>'
	# 									},
	# 									:default_url => '/images/:style/missing.png'
	# validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end