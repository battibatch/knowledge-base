# SQS

## Dead Letter Queue
if a consumer fails to process a message withing the Timeout
* the message goes back into the Queue
* We set a threshold how many times this message can go back into the queue
    * MaximumRecieved threshold is exceeded, message goes to DLQ
* We have this for dead letter queue for debugging
* DLQ of a FIFO queue must also be a FIFO queue
* DLQ of standard Queue must also be a standard Queue
* Make sure to process DLQ before they expire
    * set retention of 14 Days

Redrive to Source: 

* feature to help consume messages in DLQ to understand what is wrong
* Once code is fixed, redrive the messages from the DLQ back into the source or any other queue in batches without custom code

DLQ is just another queue the source queue is configured to use