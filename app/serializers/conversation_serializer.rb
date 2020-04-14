class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :messages

  def messages
    ActiveModel::SerializableResource.new(self.object.messages,  each_serializer: MessageSerializer)
  end

end
