class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :userinfo
  has_many :manage_blogs

  [:user_name, :user_type, :user_auth, :user_address_number, :user_address].each do |name|
    delegate name, to: :userinfo, allow_nil: true
  end
end
