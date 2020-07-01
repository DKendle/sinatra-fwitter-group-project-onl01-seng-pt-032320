class UsersController < ApplicationController

    get '/signup' do 

        erb :signup
    end
    
    post '/signup' do 
        user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
        
        if user.save
            session[:user_id] = user.id
            redirect "/tweets"
        else
            redirect "/signup"
        end
    end

    get '/login' do 
        ##form to log in 
    end

    post '/login' do 

    end

    get '/logout' do
        session.clear
        redirect to "/login"
    end
end
