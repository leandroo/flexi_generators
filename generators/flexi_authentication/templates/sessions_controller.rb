class <%= session_plural_class_name %>Controller < ApplicationController
<%- if options[:authlogic] -%>
  skip_before_filter :login_required
  
  layout 'login'
  	
  def new
    @<%= session_singular_name %> = <%= session_class_name %>.new
  end
  
  def create
    @<%= session_singular_name %> = <%= session_class_name %>.new(params[:<%= session_singular_name %>])
    if @<%= session_singular_name %>.save
      flash[:notice] = "Bem vindo!"
      redirect_to_target_or_default(root_url)
    else
      flash.now[:error] = "Login ou senha inválidos."
      render :action => 'new'
    end
  end
  
  def destroy
    @<%= session_singular_name %> = <%= session_class_name %>.find
    @<%= session_singular_name %>.destroy
    flash[:notice] = "Você foi desconectado."
    redirect_to root_url
  end
<%- else -%>
  skip_before_filter :login_required
  
  layout 'login'
  
  def new
  end
  
  def create
    <%= user_singular_name %> = <%= user_class_name %>.authenticate(params[:login], params[:password])
    if <%= user_singular_name %>
      session[:<%= user_singular_name %>_id] = <%= user_singular_name %>.id
      flash[:notice] = "Bem vindo!"
      redirect_to admin_home_url
    else
      flash.now[:error] = "Login ou senha inválidos."
      render :action => 'new'
    end
  end
  
  def destroy
    session[:<%= user_singular_name %>_id] = nil
    flash[:notice] = "Você foi desconectado."
    redirect_to root_url
  end
<%- end -%>
end
