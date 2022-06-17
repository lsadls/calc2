FROM caddy:alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY index.html /usr/share/caddy/index.html
ADD calc /root/calc
ADD run.sh /root/run.sh
run chmod 0755 /root/run.sh

ENTRYPOINT ["sh", "/root/run.sh"]
