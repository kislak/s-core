module ApplicationHelper
  def columns_width(collection)
    return 12 if collection.empty?

    count = 12 / collection.count

    count <= 1 ? 2 : count
  end
end
