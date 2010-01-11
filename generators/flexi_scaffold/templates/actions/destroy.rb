  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.destroy
    flash[:notice] = "<%= name.underscore.humanize.downcase %> excluída com sucesso!."
    redirect_to <%= items_path('url') %>
  end
