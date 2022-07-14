class FriendsController < ApplicationController
  post '/friends' do
    friendship = Friend.create(friend_params)
    friendship.to_json
  end

  private

  def friend_params
    allowed_params = %w[followee_id follower_id]
    params.select { |k, _v| allowed_params.include?(k) }
  end
end
