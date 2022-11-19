#!/bin/sh
if [ ! -f UUID ]; then
  UUID="37e87546-5cfe-4e4c-b490-58aa53d55281"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

