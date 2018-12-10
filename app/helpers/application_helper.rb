module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      content_tag(:li, (link_to 'Logout', destroy_user_session_path, method: :delete), class: 'nav-item')
    else
      content_tag(:li, (link_to 'Login', new_user_session_path), class: 'nav-item') +
        content_tag(:li, (link_to 'Register', new_user_registration_path), class: 'nav-item')
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
