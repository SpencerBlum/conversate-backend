class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :messages, :user_id

  def messages
    ActiveModel::SerializableResource.new(self.object.messages,  each_serializer: MessageSerializer)
  end

  def user_id
    user = User.find_by(id: self.object.to_user_id)
    data = {first_name: user.first_name, last_name: user.last_name}
    return data

    
  end

end
