class <%= plural_class_name %>Controller < ApplicationController
  menu_item :<%= plural_name %>
  
  <%= controller_methods :actions %>
end
