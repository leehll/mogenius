#!/bin/sh
if [ ! -f UUID ]; then
  UUID="666900e7-54b2-4f49-9ba5-64b5e1680e47"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

