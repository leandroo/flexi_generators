# encoding: utf-8
class <%= session_plural_class_name %>Controller < ApplicationController
  skip_before_filter :login_required
  
  layout 'login'
  	
  def new
    @<%= session_singular_name %> = <%= session_class_name %>.new
  end
  
  def create
    @<%= session_singular_name %> = <%= session_class_name %>.new(params[:<%= session_singular_name %>])
    if @<%= session_singular_name %>.save
      flash[:notice] = "Bem-vindo!"
      redirect_to_target_or_default(admin_home_url)
    else
      flash.now[:error] = "Usuário/E-mail ou senha inválidos."	
      render :action => 'new'
    end
  end
  
  def destroy
    current_<%= session_singular_name %>.destroy if <%= session_singular_name %>
    redirect_to login_url
  end
end  
