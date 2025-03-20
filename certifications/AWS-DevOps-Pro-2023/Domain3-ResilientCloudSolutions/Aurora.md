# Aurora

## Auto Scaling
Client must connect to write endpoint to find writes
client must connect to read endpoint to find reads
ASG is managed underneath

## Globa Aurora
Cross region read replicas
* useful for DR
* SImple to put in place

Aurora Global DB (recommended) 
* 1 primary region (read/write) 
* up to 5 secondary regions (read only) 
    * replication lat is less than 1 sec
* Up to 16 read replicas per secondary region
* helps for decreased latency
* Promoting another region (for DR) has an RTO of < 1 minute
* Typical cross region replication takes < 1 minute 

Unplanned failover
store endpoint in param stor
health check performed by lambda
* if primary fails, lambda send notification to SNS
* Update param store, refresh app to look at new endpoint

Global Application
Apps can access local Aurora and access shared global data sets via Aurora Global
