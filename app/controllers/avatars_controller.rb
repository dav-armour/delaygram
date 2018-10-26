class AvatarsController < ApplicationController
  before_action :set_avatar, only: [:edit]

  def edit
  end

  private

  def set_avatar
    @avatar = current_user.avatar
    @avatar ||= "https://i.stack.imgur.com/34AD2.jpg"
  end
end