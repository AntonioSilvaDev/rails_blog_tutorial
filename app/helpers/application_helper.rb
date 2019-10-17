module ApplicationHelper

  def link_with_icon(icon_class = nil, name = nil, options = nil, html_options = nil, &block) # rubocop:disable LineLength
    link_to(
      "#{icon(icon_class)}<span>#{name}</span>".html_safe,
      options,
      html_options,
      &block
    )
  end

  private

  def icon(icon_class)
    "<i class='fa fa-#{icon_class}'></i>"
  end
end
