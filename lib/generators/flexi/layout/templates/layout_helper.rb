# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title
    @show_title
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def menu(name, path)
    content_tag(:li, link_to(name, path), :class => "#{'active' if request.path.gsub(/(.[^\/]+|\/)/).first == path}")
  end

  def analytics(site_id)
    html = <<-ANALYTICS
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', '#{site_id}']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
    ANALYTICS

    html.html_safe if Rails.env.production?
  end

  def app_name
    Rails.application.class.to_s.split("::").first
  end
end
