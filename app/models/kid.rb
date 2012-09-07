# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  email      :string(255)
#  type       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Kid < User
#  def self.model_name
#    User.model_name
#  end
end
