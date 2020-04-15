class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name, :message, :created_at

  def name
    
    user = User.find_by(id: self.object.user_id)
    data = {first_name: user.first_name, last_name: user.last_name}
    return data
  end

end
