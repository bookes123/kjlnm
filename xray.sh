#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c3c96a65-4bc6-4454-a3f4-3264bacd6a7d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

