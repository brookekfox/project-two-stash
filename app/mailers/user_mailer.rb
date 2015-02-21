class UserMailer < ApplicationMailer

	def welcome(user)
		@greeting = "Hi #{user.name}"
		mail to: 'brookekfox@gmail.com', subject: "WELCOME TO STASH"
	end

	def new_book(book)
		@details = "#{book.title} by #{book.author_first} #{book.author_last}"
		mail to: 'brookekfox@gmail.com', subject: "YOU ADDED A BOOK"
	end

end
