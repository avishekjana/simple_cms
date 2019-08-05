module PublicHelper
  def is_active_page? page_id, current_page_id
    page_id.to_s == current_page_id ? "active" : ""
  end
end
