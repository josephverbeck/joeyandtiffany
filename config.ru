require 'sinatra/base'
require 'rubygems'

Dir.glob('./app/{controllers}/*.rb').each { | file | require file }

map('/') { run ApplicationController }
map('/brewery') { run BreweryController }
map('/food') { run StuffYourFaceController }
map('/mnb') { run MonocacyNationalBattlefieldController }
map('/harpers_ferry') { run HarpersController }
map('/faq') { run FaqController }
map('/hotel') { run HotelController }
map('/rsvp') { run RSVPController }
