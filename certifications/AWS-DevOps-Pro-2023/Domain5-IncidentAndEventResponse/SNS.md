# SNS 

## DLQ
if delivery failing, then message is discarded unless a dead letter queue is set up

Redrive policy - JSON object that refers to the ARN of the DLQ (SQS or SQS FIFO)
DLQ is attached to SNS Subscription level, not SNS Topic

Lambda subscripts will also have its DLQ