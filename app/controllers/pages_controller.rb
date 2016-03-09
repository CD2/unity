class PagesController < ApplicationController

  def show
  	path = request.path
  	@page = Page.find_by(path: path)
  	raise ActionController::RoutingError.new('Not Found') if @page.nil?
  	render @page.layout if @page.layout?
  end

end
