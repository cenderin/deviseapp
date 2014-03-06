class StaticController < ApplicationController
  def index
  end
  def contact
  	@contact = Contact.new
  	if request.post?
  		@contact.assign_attributes(contact_params)
			 if @contact.save
				 redirect_to contact_path, notice: "we wont get back to you"
			 else
			 	flash[:alert] = 'oops'
			 	render :contact
			 end
  	end
  end
  def newsletter
  	@newsletter = Newsletter.new
  	if request.post?
  		@newsletter.assign_attributes(news_params)
  		if @newsletter.save
  			redirect_to newsletter_path, notice: "thanks for signing your soul away!"
  		else 
  			flash[:alert] = "how did you fuck that up?"
  			render :newsletter
  		end
  	end
  end

  private

  def contact_params
  	params.require(:contact).permit(:name, :email, :concern)
  end

  def news_params
  	params.require(:newsletter).permit(:name, :email)
  end
end
