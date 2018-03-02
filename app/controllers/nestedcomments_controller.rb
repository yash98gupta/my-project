class NestedcommentsController < ApplicationController

  def new
    @nc=Nestedcomment.new
    @comment_id = params[:id]
  end

  def create
    Nestedcomment.create(
      comment_id: params[:nestedcomment][:id],
      user_id: current_user.id,
      title: params[:nestedcomment][:title],
      description: params[:nestedcomment][:description]
    )
  redirect_to "posts_path"
  end
end
