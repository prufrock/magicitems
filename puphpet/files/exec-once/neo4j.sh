#!/usr/bin/env sh
# from debian.neo4j.org
wget -O - https://debian.neo4j.org/neotechnology.gpg.key| apt-key add - # Import our signing key
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list # Create an Apt sources.list file
aptitude update -y # Find out about the files in our repository
aptitude install neo4j -y # Install Neo4j, community edition

# Make neo4j available via an external browser
sed -i -e 's/#org.neo4j.server.webserver.address/org.neo4j.server.webserver.address/' /etc/neo4j/neo4j-server.properties
sudo service neo4j-service restart
