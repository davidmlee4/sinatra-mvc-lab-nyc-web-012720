require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end


    post '/piglatinize' do
        something = PigLatinizer.new
        @pig_latinized_text = something.piglatinize(params[:user_phrase])
        erb :user_output
    end

end