class Manage::Blog < ActiveRecord::Base
	belongs_to :user
	has_attached_file :picture, {
    :styles => {
      :thumb => ["50x50#", :png],
      :medium => ["100x100#", :png],
      :large => ["300x300>", :png]
    },
    :default_url => "/assets/noimg.png"
  }
  include PublicActivity::Model

  tracked :owner => proc {|controller, model| controller.current_user}, # set owner to current_user by default (check app/controllers/application_controller.rb)
          :params => {
            :summary => proc {|controller, model| controller.truncate(model.content, length: 30)}   # by default save truncated summary of the post's body
          }
end
