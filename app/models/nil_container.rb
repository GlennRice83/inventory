class NilContainer
  def name
    "No Parent"
  end

  def parent
    Container.none
  end

  def children
    Container.none
  end
end
