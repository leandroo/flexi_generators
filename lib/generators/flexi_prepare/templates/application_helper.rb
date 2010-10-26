module ApplicationHelper
  def title(page_title, show_title = true)
    content_for(:title) { page_title.to_s }
    @show_title = show_title
  end
  
  def show_title?
    @show_title
  end
  
  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end
  
  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end
  
  def flash_messages
  	content = ""
    flash.collect do |key, value|
      content << content_tag(:div, value, :class=>"flash_messages #{key}")
    end
    content
  end 
  
  def analytics(site_id)
    html = <<-ANALYTICS
    <script>
     var _gaq = [['_setAccount', '#{site_id}'], ['_trackPageview']];
     (function(d, t) {
      var g = d.createElement(t),
      s = d.getElementsByTagName(t)[0];
      g.async = true;
      g.src = '//www.google-analytics.com/ga.js';
      s.parentNode.insertBefore(g, s);
      })(document, 'script');
    </script>
    ANALYTICS
    
    html.html_safe
  end   
  
end
