class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :conversations , :username, :phone_number, :contacts
  
  def contacts
    ActiveModel::SerializableResource.new(self.object.contacts,  each_serializer: ContactSerializer)
  end

  def conversations
  
    rtn = []
    self.object.conversations.each do |convo|
      obj = {}
      obj[:conversation_id] = convo.id
      convos  = UserConversation.where(conversation_id: convo.id)
      convos.each do |specconvo|
        if (specconvo.user_id != self.object.id)
          foundUser = User.find_by(id: specconvo.user_id)
          obj[:first_name] = foundUser.first_name
          obj[:last_name] = foundUser.last_name
          obj[:to_user_id] = foundUser.id
          rtn.push(obj)
        end

      end
    
    end
    return rtn
  end
  
end

