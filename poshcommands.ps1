## core command to run Flyway
## assumes a configuration file is defined
flyway -configFiles="conf\local.conf" migrate

## get a full understanding of the migrations available
flyway -configFiles="conf\local.conf" info

## not what it sounds like
flyway clean


## create a new empty migration file using description and default versioning
flyway add -description="Demonstration of new migration"



## supplying the connection information
flyway validate -url=jdbc:postgresql://hsr.c2ek9ilzyxhz.us-east-1.rds.amazonaws.com:5432/hamshackradio -user=postgres -password=*cthulhu1988

## migrating the same way
flyway migrate  -url=jdbc:postgresql://hsr.c2ek9ilzyxhz.us-east-1.rds.amazonaws.com:5432/hamshackradio -user=postgres -password=*cthulhu1988


## necessary after cleaning out test deployments
flyway repair


## for resetting the build process
flyway baseline

## docker
docker run --rm -v ./sql:/flyway/workingdirectory -v ./conf:/flyway/conf flyway/flyway migrate 

docker run --rm -v C:\Users\grant\OneDrive\Documents\GitHub\HamShackFlyway\sql:/flyway/sql -v C:\Users\grant\OneDrive\Documents\GitHub\HamShackFlyway\conf:/flyway/conf flyway/flyway migrate 

docker run flyway/flyway



#  pipeline token: MDgGoWXKE5mq8tmYShaBXbJMF0Amb0QWAsMu8G+xeC5odSC6RfcuG8Mf6KvdjxrUb+EYn7I37+nWeXr1oQYAaQ==
