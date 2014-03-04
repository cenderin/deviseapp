	desc "this is the mailer that we are doing"
	task mailer: :environment do 
		User.all.each do |user|
			UserMailer.welcome(user).deliver
	end
end