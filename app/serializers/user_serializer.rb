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
      foundUser = User.find_by(id: convo.to_user_id)
      obj[:first_name] = foundUser.first_name
      obj[:last_name] = foundUser.last_name
      rtn.push(obj)
    end
    return rtn
  end

  # def contacts
  #   rtn = []
  #   self.object.contacts.each do ||
  # end

  
end

