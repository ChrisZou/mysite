require 'redcarpet/render_strip'

module ApplicationHelper
  def current_user
    nil
  end

  def is_admin
    current_user && current_user.email == '875156226@qq.com'
  end

  def markdown_to_html(markdown_str)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, fenced_code_blocks: true)
    markdown.render(markdown_str).html_safe
  end

  def markdown_to_text(markdown_str)
    stripDown = Redcarpet::Render::StripDown.new
    stripDown.normal_text(markdown_str)
  end
end
