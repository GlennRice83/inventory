Backbone.View.register = (selector) ->
    $ => new @(el: element).render() for element in $(selector)
