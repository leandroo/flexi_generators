ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html = html_tag.html_safe
  elements = Nokogiri::HTML::DocumentFragment.parse(html_tag).css "label, input, select, textarea"
  elements.each do |e|
    if e.node_name.eql? 'label'
      e['class'] = 'control-label error'
      html = %(#{e}).html_safe
    else
      e['class'] = "#{e['class']} error"
      html = %(#{e}).html_safe
    end
  end
  html
end