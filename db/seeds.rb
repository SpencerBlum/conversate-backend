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
    username: "boozie",
    password: "1234",
    first_name: "Lil",
    last_name: "Boozie",
    email: "boozie@gmail.com",
    phone_number:  31212121
)

samamtha = User.create(
    username: "weezy",
    password: "1234",
    first_name: "Lil",
    last_name: "Wayne",
    email: "wayne5@gmail.com",
    phone_number:  31212121)

    test1 = User.create(
        username: "june",
        password: "1234",
        first_name: "Hailey",
        last_name: "Bieber",
        email: "Hailey4@gmail.com",
        phone_number:  31212121)

        test2 = User.create(
            username: "SmokinJoe",
            password: "1234",
            first_name: "Joe",
            last_name: "Burrow",
            email: "sam3@gmail.com",
            phone_number:  31212121)

            test3 = User.create(
                username: "TigerKing#f*ckCarrol",
                password: "1234",
                first_name: "Joe",
                last_name: "Exotic",
                email: "joe@gmail.com",
                phone_number:  31212121)


                test4 = User.create(
                    username: "CoolCats&Kittens",
                    password: "1234",
                    first_name: "Carrol",
                    last_name: "Baskin",
                    email: "bigcatrescue@gmail.com",
                    phone_number:  31212121)

                    test5 = User.create(
                        username: "TSwift",
                        password: "1234",
                        first_name: "Taylor",
                        last_name: "Swift",
                        email: "taylor@gmail.com",
                        phone_number:  31212121)

                        test6 = User.create(
                            username: "Jogen",
                            password: "1234",
                            first_name: "Joe",
                            last_name: "Rogen",
                            email: "taylor@gmail.com",
                            phone_number:  31212121)


            

puts "users seeded"
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

    ContactConnection.create(
        user_id: test3.id,
        user_contact_id: test4.id
    )

    ContactConnection.create(
        user_id: test4.id,
        user_contact_id: test3.id
    )


    puts "contactConnection seeded"

    c1 = Conversation.create(to_user_id: sam.id , from_user_id: spencer.id)
    c2 = Conversation.create(to_user_id: test3.id , from_user_id: test4.id)

    # c3 = Conversation.create(to_user_id: jim.id, from_user_id: spencer.id)
    puts "Conversation seeded"

    UserConversation.create(user_id: spencer.id, conversation_id: c1.id)
    UserConversation.create(user_id: sam.id, conversation_id: c1.id)

    UserConversation.create(user_id: test3.id, conversation_id: c2.id)
    UserConversation.create(user_id: test4.id, conversation_id: c2.id)


    puts "User Conversation seeded"


   m1 = Message.create(message: "Hey whats up?", user_id: spencer.id)
   m2 = Message.create(message: "What it's to you", user_id: sam.id)
   m3 = Message.create(message: "Woohhh chill boozie", user_id: spencer.id)
   m5 = Message.create(message: "How are you? you have been killing it on the bball court", user_id: sam.id)
   m4 = Message.create(message: "Yo what is poppin today i am doing fine how are you", user_id: spencer.id)

   m6 = Message.create(message: "F*ck you you carol", user_id: test3.id)
   puts "Message seeded"


   ConversationMessage.create(conversation_id: c1.id, message_id: m1.id)
   ConversationMessage.create(conversation_id: c1.id, message_id: m2.id)
   ConversationMessage.create(conversation_id: c1.id, message_id: m3.id)



ConversationMessage.create(conversation_id: c2.id, message_id: m6.id)

