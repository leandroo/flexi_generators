  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.destroy
    flash[:notice] = "<%= singular_name.capitalize %> excluída com sucesso!"
    redirect_to <%= items_path('url') %>
  end
