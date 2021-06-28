class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :login, :getUser]

    def index
        users = User.all
        render json: users, except: [:password_digest]
    end

    # def new
    # end

    def create
    end

    def show
    end

    # def edit
    # end

    def update
    end

    def destroy
    end

    def login
    end

    def getUser
    end

    private

    def user_params
    end
end
