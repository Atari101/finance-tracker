class FriendshipsController < ApplicationController
    def destroy
        @friendship = current_user.friendships.where(friend_id: params[:id]).first_name
        @friendship.destroy
        respond_to do |format|
            format.html {redirect_to my_friends_path, notice: "Friend was successfully removed"}
        end
    end
end

def show
    @user = User.find(params[:id])
    @user_stocks = @user.stocks
end