# load the RJDBC library
library(RJDBC)

# load the DB2 JDBC type 4 driver and create a driver object
#drv <- JDBC("com.ibm.db2.jcc.DBZDriver", "db2jcct4.jar", identifier.quote="'")
drv <- JDBC("", "db2jcct4.jar", identifier.quote="'")

# Create a connection object for a database on a remote server
conn <- dbConnect (drv, "jdbc:db2://184.172.106.180:50000/SAMPLEDB", "userid", "password")

query <- paste("select * from US_FUEL_ECONOMY_AUGUST_2013")
