module ApplicationHelper
  def get_visibility_status visible
    status = visible ? "Published" : "Draft"
  end
end
