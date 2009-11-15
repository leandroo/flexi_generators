class HomeController < ApplicationController
  skip_before_filter :login_required
  	
  layout 'site'
  
  def index
  end
  
end
