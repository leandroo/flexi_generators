  def update
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    if @<%= singular_name %>.update_attributes(params[:<%= singular_name %>])
      flash[:notice] = "<%= name.underscore.humanize.downcase %> alterada com sucesso!"
      redirect_to <%= item_path('url') %>
    else
      render :action => 'edit'
    end
  end
