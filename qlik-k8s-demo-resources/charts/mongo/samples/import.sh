sleep 10
apt-get update
apt-get install wget unzip
wget https://github.com/AnalyticsEarth/qlik-k8s-demo-resources/raw/master/samples/mongo.zip /tmp/
unzip /tmp/mongo.zip
mongorestore -d northwinds /tmp/mongo/northwinds/
mongorestore -d twitter /tmp/mongo/twitter/
