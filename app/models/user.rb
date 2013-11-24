class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :manage_blogs

	has_many :manage_friends_asso, :class_name => 'Manage::Friend', :foreign_key => :from_user_id
  has_many :manage_friends, :through => :manage_friends_asso, :source => :to_user_id
  
end
