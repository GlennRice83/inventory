module ApplicationHelper
  def flash_div(level)
    if flash[level].present?
      classes = "alert alert-#{level}" + (level == "notice" ? "alert-info" : "")
      content_tag "div", class: classes do
        content_tag "p", flash[level]
      end
    end
  end
end
