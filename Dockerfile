FROM caddy:alpine

COPY index.html /usr/share/caddy/index.html
ADD Caddyfile /root/Caddyfile
ADD calc /root/calc
ADD run.sh /root/run.sh
run chmod 0755 /root/calc

ENTRYPOINT ["sh", "/root/run.sh"]
