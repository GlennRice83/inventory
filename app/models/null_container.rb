class NullContainer
  def initialize(parent: nil, child: nil)
    @parent = parent
    @child = child
  end

  def name
    "Null Container"
  end

  def parent
    @parent ||= Container.none
  end

  def children
    Container.where(parent_id: nil)
  end

  def items
    Item.none
  end
end
