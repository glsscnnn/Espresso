express = require "express"

app = express()

coffee =
	currently_drinking: false,
	id: 			0,
	drink: 			"coffee",
	country: 		"columbia",
	description:	"very fruitty!",
	mix: 			"home"

# GET Request
app.get '/coffee', (req, res) ->
		res.send coffee

# POST Request
app.post '/coffee', (req, res) ->
		
		res.send "post"

# PUT Request
app.put '/coffee', (req, res) ->
		res.send "put"

# DELETE Request
app.delete '/coffee', (req, res) ->
		res.send "stop trying to delete stuff!"

# Serve Static Files
app.use '/static', express.static 'pages'

app.listen 4000, () ->
		console.log "app started at :4000 on localhost!"
