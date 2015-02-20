class UserMailer < ApplicationMailer

	def welcome(user)
		@greeting = "Hi #{user.name}"
		mail to: 'brookekfox@gmail.com', subject: "WELCOME TO STASH"
	end

end
