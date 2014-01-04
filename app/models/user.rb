class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :manage_blogs

	has_many :manage_friends_asso, :class_name => 'Manage::Friend', :foreign_key => :from_user_id
  has_many :manage_friends, :through => :manage_friends_asso, :source => :to_user_id

  has_many :orders_asso, :class_name => 'Order', :foreign_key => :buyer_user_id
  has_many :orders, :through => :orders_asso, :source => :business_user_id

  belongs_to :asct_info

  has_attached_file :avatar, {
    :styles => {
      :thumb => ["50x50#", :png],
      :medium => ["100x100#", :png],
      :large => ["300x300>", :png]
    },
    :default_url => "/assets/noimg.png"
  }
  
end
