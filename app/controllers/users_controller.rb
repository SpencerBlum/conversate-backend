class UsersController < ApplicationController


    def usernoconvo
        noConvo = User.user_noConvo(params[:id])
        render json: noConvo
    end

    def index
       notContact =  User.user_specific_contact(params[:id])
        render json: notContact
    end

    def newcontact
        contact = ContactConnection.new(user_id: params[:id] , user_contact_id: params[:user_contact_id] )
        contact.save
        user = User.find_by(id: params[:id])
        render json: user
 
    end

    def deletecontact
        contact = ContactConnection.find_by(user_id: params[:id] , user_contact_id: params[:user_contact_id])
        contact.destroy
        
        destroythis1 = Conversation.find_by(to_user_id: params[:user_contact_id], from_user_id: params[:id])
        
        if destroythis1 != nil
        destroythis1.destroy
        end
        # contact.save
        user = User.find_by(id: params[:id])
        render json: user
    end

    def login
        user = User.find_by(email: params[:user][:email], password: params[:user][:password])
        if user != nil
            render json: user
        else
            render json: { message: 'Loggin Failed' }
        end
    end

    def show
        user = User.find_by(id: params["id"])
        render json: user
    end

    def create
         foundUser = User.find_by(email: params["email"])
         if foundUser == nil
            user = User.new(user_params)
            user.save
            render json: user
        else
            render json: { message: 'Loggin Failed' }
        end
        
    end

    def update
        user = User.new(user_params)
        user.save
    end

    def destroy
        user = User.find_by(params[:id])
        user.destroy
    end

    private

    # def login_params
    #     params.require(:user).permit(
    #         :password,
    #         :email
    #         )
    # end

    def user_params
        params.require(:user).permit(
            :username,
            :first_name,
            :last_name,
            :password,
            :email,
            :phone_number,
            )

    end

end
