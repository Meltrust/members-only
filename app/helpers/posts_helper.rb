module PostsHelper
  def user_edit(_user)
    link_to 'Edit Profile', edit_user_registration_path if user_signed_in?
  end

  def email(post)
    @email = User.find_by(id: post.user_id).email if user_signed_in?
    @email
  end

  def author(post)
    @author = User.find_by(id: post.user_id).username if user_signed_in?
    @author
  end

  def user_email(_user)
    'Email' if user_signed_in?
  end

  def post_new(_user)
    link_to 'New Post', new_post_url if user_signed_in?
  end

  def user_sign(_user)
    link_to 'Sign In', new_user_session_path unless user_signed_in?
  end

  def user_author(_user)
    'Author' if user_signed_in?
  end

  def user_logout(_user)
    link_to 'Logout', destroy_user_session_path, method: :delete if user_signed_in?
  end
end
