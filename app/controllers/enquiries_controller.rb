class EnquiriesController < ApplicationController

	def new
		@enquiry = Enquiry.new
	end

	def create
		@enquiry = Enquiry.new(enquiry_params)
		if @enquiry.save
			flash[:success] = 'Enquiry Created'
			redirect_to contact_us_thanks_path
      EnquiryMailer.new_enquiry(@enquiry).deliver_now
		else
  		render :new
		end
	end

	private
		def enquiry_params
			params.require(:enquiry).permit(:name, :email, :phone, :body)
		end

end
