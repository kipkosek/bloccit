module UsersHelper
  def no_posts
    if @user.posts.count == 0
      return true
    end
  end

  def no_comments
    if @user.comments.count == 0
      return true
    end
  end
end
