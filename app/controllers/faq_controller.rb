
class FaqController < ApplicationController

    get '/' do
        erb :'faq/faq'
    end

    get '/rsvp' do
        erb :'faq/faq_rsvp'
    end

    get '/stay' do
        erb :'faq/faq_stay'
    end

    get '/location' do
        erb :'faq/faq_location'
    end

    get '/arrive_time' do
        erb :'faq/arrive_time'
    end

    get '/getting_there' do
        erb :'faq/getting_there'
    end

    get '/dinner' do
        erb :'faq/dinner_drinks'
    end

    get '/car' do
        erb :'faq/car'
    end

    get '/attire' do
        erb :'faq/attire'
    end

    get '/children' do
        erb :'faq/children'
    end

    get '/guest' do
        erb :'faq/guest'
    end

    get '/other_events' do
        erb :'faq/other_events'
    end

    get '/pets' do
        erb :'faq/pets'
    end
    
    get '/taxi' do
        erb :'faq/taxi'
    end

end
