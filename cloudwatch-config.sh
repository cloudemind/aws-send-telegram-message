# CloudWatch rule configure to receive events from EC2 change status and transform data to SNS topic
# SNS topic will call lambda_function.py

# Choose Input Transformer 
# Syntax config

{"instance-id":"$.detail.instance-id","state":"$.detail.state","time":"$.time","region":"$.region","account":"$.account"}

# Output config

"At <time>, the status of your EC2 instance <instance-id> on account <account> in the AWS Region <region> has changed to <state>."