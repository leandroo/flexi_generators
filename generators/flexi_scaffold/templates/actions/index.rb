  def index
    @<%= plural_name %> = <%= class_name %>.paginate :page => params[:page],
      :per_page => 15
  end
