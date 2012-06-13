ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag =~ /<(input|textarea|select)/
    %|<div class="control-group error">#{html_tag} <span class="help-inline">#{[instance.error_message].join(', ')}</span></div>|.html_safe
  elsif html_tag =~ /<label/
    %|<div class="control-group error">#{html_tag}|.html_safe
  else
    html_tag
  end
end