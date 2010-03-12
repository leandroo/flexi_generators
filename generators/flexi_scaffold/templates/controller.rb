class <%= plural_class_name %>Controller < ApplicationController
  current_tab :<%= plural_name %>
  
  <%= controller_methods :actions %>
end
