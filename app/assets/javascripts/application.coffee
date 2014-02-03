#= require jquery
#= require jquery_ujs
#= require jquery.nested_attributes
#= require underscore
#= require backbone
#= require backbone.view_registrar
#= require foundation
#= require turbolinks
#= require_tree .

$ ->
  $(document).foundation()
  @Mother =
    Views: {}
