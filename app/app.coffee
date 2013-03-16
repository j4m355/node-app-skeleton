settings = require(__dirname + '/config/config')
_ = require('underscore')
express = require('express')
app = express()

views = __dirname + '/views/'

app.engine('jade', require('jade').__express);
app.use(express.bodyParser());

app.set('view options',
  layout: false
)

###
Skeleton generated with node-app-skeleton
git@github.com:j4m355/node-app-skeleton.git
START APPLICATION NOW :
###
















###
Bottom cafuffel
###

app.use(express.static(__dirname + '/public'));

port = settings.get("port")
app.listen(port)
console.log('Listening on port ' + port)
