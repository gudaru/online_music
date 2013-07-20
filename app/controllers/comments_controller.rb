class CommentsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  def new
  end

  def create
  end

  def destroy
  end
end
