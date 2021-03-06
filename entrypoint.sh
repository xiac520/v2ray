#cd /v2raybin
#echo -e "$CONFIG_JSON" > config.json
#if [ "$CERT_PEM" != "$KEY_PEM" ]; then
#  echo -e "$CERT_PEM" > cert.pem
#  echo -e "$KEY_PEM"  > key.pem
#fi

cd /v2ray
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v3.47/v2ray-linux-64.zip
unzip v2ray.zip 
mv /v2ray/v2ray-v$VER-linux-64/v2ray .
mv /v2ray/v2ray-v$VER-linux-64/v2ctl .
mv /v2ray/v2ray-v$VER-linux-64/geoip.dat .
mv /v2ray/v2ray-v$VER-linux-64/geosite.dat .

chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
./v2ray
