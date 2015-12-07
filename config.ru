# require sinatra/base which gives via inheritance to controller classes
# require controllers and model(s)
# GENREAL DIAGRAM: 1 model > 1 ctrllr > multiple routes

require 'sinatra/base'

# I took this out...
# Dir.glob('./{controllers,models,helpers}/*.rb').each { |file| require file }

# require controllers and models
require('./controllers/application')
require('./controllers/items')
require('./controllers/accounts')
require('./models/item') # to map to db table items
require('./models/account') # models/account.rb
# require './app' not needed
# run Sinatra::Application # run sinatra library

#################### MAPPING EXPLANATION ########################
## james friday am explaniations: (thur video goes over this too)
## map resource to a controller
map('/') { run ApplicationController}
map('/') { run ItemController }
map('/') { run AccountController }

# this is mapping the root '/'
# so at http://localhost:9292/ it looks for ItemController routes....
# IF WE MAPPED IT TO '/ITEM' ALL ROUTES IN ITEMCONTROLLER BUILD ON TOP OF this
# so CtRLR's ROUTE '/here' IS ACTUALLY  "http://localhost:9292/item/here"
# REDIRECT ignores mapping: '/' alwasy > "http://localhost:9292/"




# route (action) is route from config.ru (ie users)
# followed by route from controller (ie login)
# thus "/users/login" in this example..
