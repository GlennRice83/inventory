class NullContainer
  def initalize(parent: nil, child: nil)
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
    @child ||= Container.none
  end

  def items
    Item.none
  end
end
