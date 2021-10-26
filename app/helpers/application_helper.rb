module ApplicationHelper

  def login_helper style="", tag
    login_helper_link = " "
    if current_user.is_a?(GuestUser)
      login_helper_link << "<#{tag}><a href='#{new_user_session_path}' class='#{style}'>Login</a></#{tag}>" + "<#{tag}><a href='#{new_user_registration_path}' class='#{style}'>Register</a></#{tag}>"
      ##(link_to "Login", new_user_session_path, class: style) + " ".html_safe + (link_to "Register", new_user_registration_path, class: style) 
    else
      login_helper_link << "<#{tag}><a href='#{destroy_user_session_path}' class='#{style}' data-method='delete'>Logout</a></#{tag}>"
      ##link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
    login_helper_link.html_safe
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are in #{layout_name} page"
      content_tag(:p, greeting , class: "source-greeting")
    end
  end

  def copyright_generator
    DevcampViewTool::Rendered.copyright "DevCamp", "All are reserved."
  end

  def nav_items
    [
      { url: root_path,
        title: "Home"
      },
      { url: about_me_path,
        title: "About"
      },
      { url: contact_path,
        title: "Contact"
      },
      { url: blogs_path,
        title: "Blog"
      },
      { url: portfolios_path,
        title: "Porfolio"
      },
    ]
  end

  def nav_helper style, tag 
    nav_links = " "
    nav_items.each do |item|
      nav_links << "<#{tag}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:notice] || flash[:error] || flash[:alert])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Devcamp portfolio", sticky: false)
  end
end
