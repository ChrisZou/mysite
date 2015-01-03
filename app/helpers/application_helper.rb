module ApplicationHelper
  def current_user
    nil
  end

  def is_admin
    current_user && current_user.email == '875156226@qq.com'
  end
end
