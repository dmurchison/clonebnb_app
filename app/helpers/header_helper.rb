module HeaderHelper

  def host_clonebnb_link
    return "#" if user_signed_in?
    new_user_session_path
  end

end

