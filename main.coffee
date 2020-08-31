express = require "express"
fs = require "fs"

app = express()

# supported formats
app.use express.json()
app.use express.urlencoded extended: true
app.use express.raw()

# read in coffee.json
coffee = fs.readFileSync "./coffee/coffee.json"
coffee = JSON.parse coffee

# GET Request
app.get '/coffee', (req, res) ->
		res.send coffee

# POST Request
app.post '/coffee', (req, res) ->
		# if the request contains drinking
		if (req.body.drinking)
			coffee.drinking = req.body.drinking
			console.log coffee.drinking
			res.send "200"
		else
			# error message
			res.send "please send valid post request"

# This may be used later
app.use '/static', express.static 'pages'

app.listen 4000, () ->
		console.log "Espresso Started on Port 4000 ☕"
