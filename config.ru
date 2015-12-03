# require sinatra/base which gives via inheritance to controller classes
# require controllers and model(s)

require 'sinatra/base'
require('./controllers/application')
require('./controllers/items')
require('./models/item') # to map to db table items

map('/') { run ItemController }
