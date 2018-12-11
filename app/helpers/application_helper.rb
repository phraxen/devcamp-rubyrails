module ApplicationHelper
  def login_helper css_class
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: css_class) +
        (link_to 'Register', new_user_registration_path, class: css_class)
    else
      content_tag(:li, (link_to 'Logout', destroy_user_session_path, method: :delete), class: css_class)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source].humanize}! You're viewing the #{layout_name.humanize} layout."
      content_tag(:p, greeting, class: 'source-greeting')
    end
  end

  def copyright_generator
    PhexViewTool::Renderer.copyright 'Philip Baumann',
                                     'All rights reserved.',
                                     2018
  end
end
