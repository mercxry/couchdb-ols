FROM docker.io/couchdb:3.4.3

COPY ./00-obsidian-livesync.ini /opt/couchdb/etc/local.d/00-obsidian-livesync.ini
