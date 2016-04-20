# Hbase docker image
Build a hbase docker image on Alpine Linux distro. Also install Apache Phoenix.

## Version
- Hbase: 1.1.2
- Phoenix: 4.7.0

## Exposed ports
- HBase Master API port: 60000
- HBase Master Web UI: 60010
- Regionserver API port: 60020
- HBase Regionserver web UI: 60030

## Building the image       
``./build.sh``

## Usage
Start a cluster with zookeeper and hbase:

- ``docker-compose up -d ``

Destroy a cluster:

- ``docker-compose stop``


## Running hbase commands
- ``docker exec -it hbase bash``
- ``hbase shell``
- Type the hbase commands

## Hbase UI
http://localhost:60010

## Using SQL client to connect to Hbase
Apache Phoenix is the SQL interface to the Hbase world. You can use DBeaver or Squirrel to write SQL. SQL will be translated by the Phoenix server component in the hbase region server into Hbase command. 

### Setup DBeaver/Squirrel
- Phoenix client jar is at the current location
- Open DBeaver/Squirrel
- Add new driver through Driver manager
- Set URL to jdbc:phoenix:zk. Type “org.apache.phoenix.jdbc.PhoenixDriver” into the Class Name textbox and click OK to close this dialog. Add the Phoenix client jar into DBeaver /Squirrel.
- Ensure Zookeeper and Hbase is running locally with Zookeper host as 'zk'
- Test connection
