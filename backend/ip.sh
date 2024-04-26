API_URL="http://169.254.169.254/latest/api"
TOKEN=`curl -X PUT "$API_URL/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 600"` 
TOKEN_HEADER="X-aws-ec2-metadata-token: $TOKEN"
METADATA_URL="http://169.254.169.254/latest/meta-data"
IP_V4=`curl -H "$TOKEN_HEADER" -s $METADATA_URL/public-ipv4`
echo "${IP_V4}"
sed -i "s/<EC2_IP>/${IP_V4}/g" /app/frontend/game.js
sed -i "s/<EC2_IP>/${IP_V4}/g" /app/frontend/start.js
