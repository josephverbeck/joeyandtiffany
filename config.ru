require 'sinatra/base'
require 'rubygems'

require './app/controllers/application_controller'
require './app/controllers/brewery_controller'
require './app/controllers/faq_controller'
require './app/controllers/harpers_controller'
require './app/controllers/hotel_controller'
require './app/controllers/monocacy_national_battlefield_controller'
require './app/controllers/rsvp_controller'
require './app/controllers/stuff_your_face_controller'
require './app/controllers/things_to_do_controller'




# Dir.glob('app/{controllers}/*.rb').each { | file | require file }

map('/') { run ApplicationController }
map('/brewery') { run BreweryController }
map('/food') { run StuffYourFaceController }
map('/mnb') { run MonocacyNationalBattlefieldController }
map('/harpers_ferry') { run HarpersController }
map('/faq') { run FaqController }
map('/hotel') { run HotelController }
map('/rsvp') { run RSVPController }
