
class FaqController < ApplicationController

    get '/' do
        erb :'faq/faq'
    end

end
