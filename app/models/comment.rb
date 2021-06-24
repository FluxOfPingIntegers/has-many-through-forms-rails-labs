class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post



  def user_attributes=(user_attributes)
    if !user_attributes[:username].empty?
      user = User.create(user_attributes)
      self.user_id = user.id
    else
      false
    end

  end

end
