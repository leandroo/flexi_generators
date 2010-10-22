class Admin::<%= user_plural_class_name %>Controller < ApplicationController
  menu_item	:<%= user_plural_name %>	
  respond_to :html

  def index
    @<%= user_plural_name %> = <%= user_class_name %>.paginate :page => params[:page],
      :per_page => 15
    respond_with(:admin, @<%= user_plural_name %>)      
  end

  def show
    @<%= user_singular_name %> = <%= user_class_name %>.find(params[:id])
    respond_with(:admin, @<%= user_singular_name %>)
  end

  def new
    @<%= user_singular_name %> = <%= user_class_name %>.new
    respond_with(:admin, @<%= user_singular_name %>)
  end

  def edit
    @<%= user_singular_name %> = <%= user_class_name %>.find(params[:id])
  end

  def create
    @<%= user_singular_name %> = <%= user_class_name %>.new(params[:<%= user_singular_name %>])
    flash[:notice] = '<%= user_class_name %> foi criado com sucesso.' if @<%= user_singular_name %>.save
    respond_with(:admin, @<%= user_singular_name %>)
  end

  def update
  	@<%= user_singular_name %> = <%= user_class_name %>.find(params[:id])
    flash[:notice] = '<%= user_class_name %> foi alterado com sucesso.' if @<%= user_singular_name  %>.update_attributes(params[:<%= user_singular_name %>])
    respond_with(:admin, @<%= user_singular_name %>)
  end

  def destroy
    @<%= user_singular_name %> = <%= user_class_name %>.find(params[:id])
    flash[:notice] = '<%= user_class_name %> foi excluído com sucesso.' if @<%= user_singular_name %>.destroy 
    respond_with(:admin, @<%= user_singular_name %>)
  end
end
