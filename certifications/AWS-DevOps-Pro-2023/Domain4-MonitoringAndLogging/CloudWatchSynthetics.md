# CloudWatch Synthetics 

## Canary

Configurable script that monitors your APIS URLS, websites
Reproduces what customer do programmatically to find issues before customers are impacted
checks availability and latency of your endpoints and can store load time data and screenshots of the UI
written in Nodejs or python
access to headless Chrome browser
can be run on schedule

when they fail CW Alarm > Lambda > update R53 to working 
 

## Canary Blueprints
heartbeat monitor - load URL, store screenshot and HTTP archive file
API canary - test basic read/write functions of REST API
Broken link checker - check all links
Visual monitor - compare screen shots
Canary recorder - used w/ CW Synthetics Recorder (record actions on a website and aut generate a script for that)
GUI workflow builder - verify actions that can be taken on webpage 