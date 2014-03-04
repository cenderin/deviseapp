class UserMailer < ActionMailer::Base
	layout 'mailer'
  default from: "no-reply@facebase.com"

  def welcome(user)
  	@user = user
  	mail(to: @user.email, subject: 'welcome to facebase, the base for your face')
  end
end