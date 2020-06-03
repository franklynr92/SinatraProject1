class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "carcollection"
    end

    #session hijacking

=begin    get '/' do
        session[:greeting] = "Hello World! Welcome to Gratuitiy Gourment Shop:"
        response.set_cookie 'credit_amount', '100'
        "Hello World! Welcome to Gratuitiy Gourment Shop:" #16:40 goes over cookies
    end
    #cookie extension

    get '/remember' do
        "You have #{request.cookies['credit_amount']}"
    end
=end
end