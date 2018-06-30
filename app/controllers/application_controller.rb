class ApplicationController < Sinatra::Base

    set :views, Proc.new { File.join('app', 'views')}
    set :public_folder, Proc.new { File.join('public')}

    get '/' do
        erb :index
    end

end