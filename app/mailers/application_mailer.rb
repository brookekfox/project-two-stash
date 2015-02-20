class ApplicationMailer < ActionMailer::Base
  default from: "admin@stash.com"
  layout 'mailer'
end
