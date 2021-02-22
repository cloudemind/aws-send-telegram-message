# aws-send-telegram-message

## Step 1 - setup a telegram bot

We will use Telegram botfather to create a public bot that can be used by Lambda to call.
You search `@botfather` from your Telegram account and enter following commands / steps:

- command: /newbot

- Enter your bot name with `bot` ending, for example: abc_bot or abcBot

- Get Telegram API Token after the bot is created successfully. Make sure that this token will be secured and not share to anyone. You can get teh API Token again by using `@botfather` command (`/mybots`)

- Outputs:

1. Your new custom telegram bot: abcBot
2. TOKEN: 4338145678:AAEGG_6gJ93wRtLU9uaxnUHneQZ6FKZMBmQ

## Step 2 - Find a CHAT ID of the bot

Enter the following link on your web browser

https://api.telegram.org/bot**4338145678:AAEGG_6gJ93wRtLU9uaxnUHneQZ6FKZMBmQ**/getUpdates

Your browser will return the following code:

```js
{"message_id":54,"from":{"id":**1051709623**,"is_bot":false,"first_name":"Kevin","username":"vietpmp","language_code":"en"}
```

On the above code: **1051709623** is a CHAT_ID

## Step 3 - Setup env variables for lambda_function.py

example:
CHAT_ID 1051709623
TOKEN 4338145678:AAEGG_6gJ93wRtLU9uaxnUHneQZ6FKZMBmQ

This chat_id and token will be used to connect to telegram bot.
Open the lambda_function.py code and add the variables to the env section.

## Step 4 - Add the SNS Topic and trigger lamba

Set up Email and subscribe to the topic
For example: kevin@cloud.vn

## Step 5 - Configure CloudWatch Rule Config for the Input transform message to your email

**Syntax config**

```
{"instance-id":"$.detail.instance-id","state":"$.detail.state","time":"$.time","region":"$.region","account":"$.account"}

```

**Output config**

```
"At <time>, the status of your EC2 instance <instance-id> on account <account> in the AWS Region <region> has changed to <state>."

```

Good luck!

<!-- source: https://bezdelev.com/hacking/aws-sns-to-telegram-bot/ -->
