# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ContactConnection.destroy_all
Message.destroy_all
UserConversation.destroy_all

spencer = User.create(
    username: "spencerB",
    password: "1234",
    first_name: "spencer",
    last_name: "Blam",
    email: "spencer@gmail.com",
    phone_number:  31212121
)

jim = User.create(
    username: "JimA",
    password: "1234",
    first_name: "Jim",
    last_name: "Smith",
    email: "Jim@gmail.com",
    phone_number:  31212121
)

sam = User.create(
    username: "Sam",
    password: "1234",
    first_name: "Sam",
    last_name: "Johnson",
    email: "sam@gmail.com",
    phone_number:  31212121
)

puts "users seeded"
    ContactConnection.create(
        user_id: sam.id,
        user_contact_id: jim.id
    )
    ContactConnection.create(
        user_id: sam.id,
        user_contact_id: jim.id
    )

    ContactConnection.create(
        user_id: jim.id,
        user_contact_id: sam.id
    )

    ContactConnection.create(
        user_id: spencer.id,
        user_contact_id: sam.id
    )

    ContactConnection.create(
        user_id: spencer.id,
        user_contact_id: jim.id
    )
    puts "contactConnection seeded"

    c1 = Conversation.create(to_user_id: spencer.id)
    c2 = Conversation.create(to_user_id: sam.id)
    c3 = Conversation.create(to_user_id: spencer.id)
    puts "Conversation seeded"

    UserConversation.create(user_id: jim.id, conversation_id: c1.id)
    UserConversation.create(user_id: spencer.id, conversation_id: c2.id)
    UserConversation.create(user_id: jim.id, conversation_id: c3.id)

    puts "User Conversation seeded"


   m1 = Message.create(message: "Hey whats up?", user_id: spencer.id)
   m2 = Message.create(message: "How are you?", user_id: sam.id)
   m3 = Message.create(message: "I am doing well", user_id: jim.id)

   puts "Message seeded"

   ConversationMessage.create(conversation_id: c1.id, message_id: m1.id)
   ConversationMessage.create(conversation_id: c2.id, message_id: m2.id)
   ConversationMessage.create(conversation_id: c3.id, message_id: m3.id)

   puts "Conversation Message seeded"




