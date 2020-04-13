class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
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
        user = User.find_by(params[:id])
        render json: user
    end

    def create
        # byebug
        user = User.new(user_params)
        user.save
        render json: user
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
