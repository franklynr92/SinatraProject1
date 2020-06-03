class SessionsController< ApplicationController

    get '/login' do
        erb :"sessions/login"
    end

    post '/sessions' do
        "Hello World" 
        session[:email] = params[:email]
        #raise session[:email].inspect
        redirect '/posts'
    end
    
end