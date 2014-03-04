class UserMailer < ActionMailer::Base
	layout 'mailer'
  default from: "noreply@facebase.com"

  def welcome(user)
  	@user = user
  	mail(to: @user.email, subject: 'welcome to facebase, the base for your face')
  end

end