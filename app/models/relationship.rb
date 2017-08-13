class Relationship < ActiveRecord::Base
  #DIVE16 RelationshipがUserに従属することを定義
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
end
