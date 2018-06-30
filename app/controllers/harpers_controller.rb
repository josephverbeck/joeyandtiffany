
class HarpersController < ApplicationController

    get '/' do
        erb :'things_to_do/harpers_ferry'
    end

end
