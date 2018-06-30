
class BreweryController < ApplicationController
    
    get '/' do
        erb :'things_to_do/brewery'
    end

end