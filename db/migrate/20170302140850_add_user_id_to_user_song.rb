class AddUserIdToUserSong < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_songs, :user, foreign_key: true
  end
end
