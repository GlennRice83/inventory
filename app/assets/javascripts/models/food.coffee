Mother.Food = DS.Model.extend(
  name: DS.attr('string'),
  sku: DS.attr('string'),
  items: DS.hasMany('item', {async: true})
)
