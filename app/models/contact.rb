class Contact < ActiveRecord::Base
	after_create :notify_admin

  def notify_admin
  	AdminMailer.contact_form(self).deliver
  end
end
