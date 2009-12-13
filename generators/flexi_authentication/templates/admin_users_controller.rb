class Admin::UsersController < ApplicationController
  current_tab :users

  def index
    @users = User.paginate :page => params[:page], :per_page => 15  	
    
    respond_to do |format|
      format.html
    end
  end

  def new
    @user = User.new
    
    respond_to do |format|
      format.html
    end    
  end
  
  def edit
    @user = User.find(params[:id])
  end
    
  def create
    @user = User.new(params[:user])
      
    respond_to do |format|
      if @user.save
      	#session[:user_id] = @user.id
        flash[:notice] = "Usuário adicionado com sucesso!"
        format.html { redirect_to(admin_users_url) }
      else
        format.html { render :action => "new" }       
      end
    end
  end
 
  def update
     @user = User.find(params[:id])

     respond_to do |format|
       if @user.update_attributes(params[:user])
         flash[:notice] = 'Usuário foi alterado com sucesso!'
         format.html { redirect_to(admin_users_url) }
       else
         format.html { render :action => "edit" }
       end
     end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(login_url) }
    end
  end  

end