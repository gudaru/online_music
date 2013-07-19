class CommentsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  def new
  end

  def create
  	@comment = current_user.comments.build(comment_params)
  	
  end

  def destroy
  end
end
