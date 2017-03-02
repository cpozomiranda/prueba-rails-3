class UserSongsController < ApplicationController
  def index
  	@user = current_user
  	@songs = @user.songs
  	@user_songs = @user.user_songs.order('id DESC')
  	
  end


  def user_list
  	
  end
end
