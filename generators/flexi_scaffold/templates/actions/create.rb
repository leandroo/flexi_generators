  def create
    @<%= singular_name %> = <%= class_name %>.new(params[:<%= singular_name %>])
    if @<%= singular_name %>.save
      flash[:notice] = "<%= name.underscore.humanize.downcase %> adicionada com sucesso!"
      redirect_to <%= item_path('url') %>
    else
      render :action => 'new'
    end
  end
