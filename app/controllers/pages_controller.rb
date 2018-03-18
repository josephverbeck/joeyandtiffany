class PagesController < ApplicationController
  def index
    respond_to do |format|
      format.html {render :template => 'pages/index' }
      format.js
    end    
  end

  def jack_rose
  end

  def our_wedding
  end

end
