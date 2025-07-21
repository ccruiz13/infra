#!/bin/bash

REGION="us-east-1"

echo "Creando parámetros en /btg-funds/common/ ..."

# Parámetros para Node.js
aws ssm put-parameter \
  --name "/btg-funds/common/nodejs/dynamodb_table" \
  --value "FundsTableNode" \
  --type "String" \
  --overwrite \
  --region $REGION

# Parámetro base URL para Java
aws ssm put-parameter \
  --name "/btg-funds/common/java/base_url" \
  --value "https://api.example.com/java" \
  --type "String" \
  --overwrite \
  --region $REGION

# Parámetro SNS Topic
aws ssm put-parameter \
  --name "/btg-funds/common/sns/notification_topic" \
  --value "arn:aws:sns:us-east-1:423889617242:notificacion-suscription" \
  --type "String" \
  --overwrite \
  --region $REGION

# Parámetros de Twilio
aws ssm put-parameter \
  --name "/btg-funds/common/twilio/account_sid" \
  --value "AC871f8da9120d12512687796602157e9b" \
  --type "SecureString" \
  --overwrite \
  --region $REGION

aws ssm put-parameter \
  --name "/btg-funds/common/twilio/auth_token" \
  --value "305123ea067b2487d86f1c98ce0c5aa4" \
  --type "SecureString" \
  --overwrite \
  --region $REGION

aws ssm put-parameter \
  --name "/btg-funds/common/twilio/from_number" \
  --value "+12315155077" \
  --type "String" \
  --overwrite \
  --region $REGION

echo "Todos los parámetros fueron creados correctamente en /btg-funds/common/"
