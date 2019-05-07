sleep 10
apt-get update
apt-get install wget unzip
wget -P /tmp/ https://github.com/AnalyticsEarth/qlik-k8s-demo-resources/raw/master/samples/mongo.zip
unzip /tmp/mongo.zip -d /tmp
mongorestore -d northwinds /tmp/mongo/northwinds/
mongorestore -d twitter /tmp/mongo/twitter/
