class ServicesController < ApplicationController

	def index
		@services = Service.all
	end

	def show
		@service = Service.find(params[:id])
    @enquiry = Enquiry.new
	end

end
