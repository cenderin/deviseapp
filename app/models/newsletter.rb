class Newsletter < ActiveRecord::Base
	after_create :notify

  def notify
  	AdminMailer.newsletter_form(self).deliver
  	UserMailer.newsletter_form(self).deliver
  end

end
