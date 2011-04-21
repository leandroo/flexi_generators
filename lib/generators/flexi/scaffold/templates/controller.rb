# encoding: utf-8
class Admin::<%= plural_class_name %>Controller < ApplicationController
  menu_item	:<%= plural_name %>	
  respond_to :html

  def index
    @<%= plural_name %> = <%= class_name %>.paginate :page => params[:page],
      :per_page => 15
    respond_with(:admin, @<%= plural_name %>)      
  end

  def show
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    respond_with(:admin, @<%= singular_name %>)
  end

  def new
    @<%= singular_name %> = <%= class_name %>.new
    respond_with(:admin, @<%= singular_name %>)
  end

  def edit
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
  end

  def create
    @<%= singular_name %> = <%= class_name %>.new(params[:<%= singular_name %>])
    flash[:notice] = '<%= class_name %> foi criado com sucesso.' if @<%= singular_name %>.save
    respond_with(:admin, @<%= singular_name %>)
  end

  def update
  	@<%= singular_name %> = <%= class_name %>.find(params[:id])
    flash[:notice] = '<%= class_name %> foi alterado com sucesso.' if @<%= singular_name  %>.update_attributes(params[:<%= singular_name %>])
    respond_with(:admin, @<%= singular_name %>)
  end

  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    flash[:notice] = '<%= class_name %> foi excluído com sucesso.' if @<%= singular_name %>.destroy 
    respond_with(:admin, @<%= singular_name %>)
  end
end
