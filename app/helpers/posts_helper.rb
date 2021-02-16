module PostsHelper
  def sign_in_navbar_post
    link_to('New Post', root_path, class: 'button is-info is-inverted') if user_signed_in?
  end

  def sign_in_navbar1
    if user_signed_in?
      link_to(current_user.name, edit_user_registration_path, class: 'button is-info')
    else
      link_to('Sign Up', new_user_registration_path, class: 'button is-info')
    end
  end

  def sign_in_navbar2
    if user_signed_in?
      link_to('Logout', destroy_user_session_path, method: :delete, class: 'button is-info')
    else
      link_to('Sign In', new_user_session_path, class: 'button is-info')
    end
  end
end
