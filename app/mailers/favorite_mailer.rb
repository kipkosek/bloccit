class FavoriteMailer < ApplicationMailer
  default from: "kipkosek@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@frozen-mountain-32418.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@frozen-mountain-32418.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@frozen-mountain-32418.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}", cc: "tim@bloc.io")
  end
end
