class Friend < ActiveRecord::Base
  belongs_to :follower, class_name: 'User'
  belongs_to :followee, class_name: 'User'

  def self.following_ids(id)
    select { |friend| friend.follower_id == id }.map { |f| f.followee }.map { |f| f.id }
  end

  def self.following(user)
    select { |friend| friend.follower == user }.map { |f| f.followee }
  end
end
