module ApplicationHelper
  def determine_active(cat)
    active?(cat) ? "active" : ""
  end

  def active?(cat)
    cat == @category
  end
end
