# CloudWatch Metrics

Provide metrics for every services
metric = variable to monitor

metrics belong to namespace
Dimension is an attribute of a metric (instance ID, env, etc.)
up to 30 dimensions per metrics
metrics have timestamps
can create CW dashboards of metrics
Can create Custom Metrics (RAM for example) 

Can stream them out of CW
continually stream to a destination
Near real time
* kineses data firehose > S3 > Athena
* kineses data firehose > Redshift
* kineses data firehose > OpenSearch
* 3rd party - Datadog, Dynatrace, New relic, Plunk, Sumo Logic

Stream all or filter to a subset of metrics

default - every 5 mins
detailed monitoring - every 1 minute

## Custom Metrics
define own metrics
RAM, disk space 

Ability to use dimensions to segment metrics
    * instance.id; env.name

Metric resolution (StorageResolution API param - 2 possible values)
* standard - 1m 
* High resolution - 1/5/10/30s - higher cost

IMPORTANT - accepts metric data two weeks in the past and two hours in the future. Make sure EC2 instance time is correct to avoid errors

Namespaces default are services
Custom namespace possible 

# Anomaly Detection
Continuously analyze metrics to determine base line
surface anomalies using ML algorithms
It creates a model of metrics expected values
Shows which values in the graph are out of normal range
can trigger alarms based on expected
can exclude specific time periods or event from being trained

# Lookout
detects anomalies with metrics and IDs their root causes using machine learning
detects and diags errors withing data with no manual intervention
integrates with different services and 3rd party SaaS apps via AppFlow
S3, Redshift, CloudWatch, RDS
Salesforce, Marketo, Zendesk

Config Lookout to sent alerts to SNS lambda, AWS Console, or APIs

