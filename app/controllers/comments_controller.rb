class CommentsController < ApplicationController

  def new()
    @comment=Comment.new
    @post_id = params[:id]
  end

  def create
      Comment.create(
        post_id: params[:comment][:id],
  			user_id: current_user.id,
        title: params[:comment][:title],
  			description: params[:comment][:description]
      )
    redirect_to "/posts/#{params[:comment][:id]}"
  end

end
