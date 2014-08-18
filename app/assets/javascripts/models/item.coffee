Mother.Item = DS.Model.extend(
  value: DS.attr('number'),
  unit: DS.attr('string'),
  food: DS.belongsTo('food')
)
