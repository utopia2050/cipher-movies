module ApplicationHelper
  def nav_link(link_text, link_path, link_method = "get")
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      if link_method == "get"
        link_to link_text, link_path
      elsif link_method == "delete"
        link_to link_text, link_path, :method => :delete
      end

    end
  end
end
