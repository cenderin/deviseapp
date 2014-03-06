class AdminMailer < ActionMailer::Base
  default from: "contact@facebase.com",
  				to: 'me@facebase.com'
  def contact_form(params)
  	@params = params
  	mail(subject: "next contact form submission")
  end
  def newsletter_form(params)
  	@params = params
  	mail(subject: "new newsletter signup")
  end
end

