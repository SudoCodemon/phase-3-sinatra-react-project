class UsersController < ApplicationController
    get "/users" do
        if params.include?("name")
            return User.find_by(name: params['name']).to_json(special_methods)
        end
        User.all.to_json
    end
    get '/users/:id' do
        # specify multiple flags: http://localhost:9292/users/1?followers&following
        find_user
        @user.to_json(special_methods)
    end
    private 
    def find_user
        @user = User.find([params[:id]])
    end
    def special_methods
        include_arr = [];
        include_arr <<  :following  if params.include?('following')
        include_arr <<  :followers  if params.include?('followers')
        return {include: include_arr}
    end
end