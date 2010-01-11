class <%= controller_class_name %>Controller < ResourceController::Base
  current_tab :<%= plural_name %>

  private
  def collection
    @collection ||= end_of_association_chain.paginate :page => params[:page],
      :per_page => 15
  end 
  
  create do
    flash "<%= singular_name.capitalize %> adicionada com sucesso!"
  end
  
  update do
    flash "<%= singular_name.capitalize %> alterada com sucesso!"
  end
  
  destroy do
    flash "<%= singular_name.capitalize %> excluída com sucesso!"
  end
  
  create.response do |wants|
    wants.html { redirect_to(collection_url) }
  end
 
  update.response do |wants|
    wants.html { redirect_to(collection_url) }
  end
end
