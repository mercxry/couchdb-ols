FROM docker.io/couchdb:3.5.2

COPY ./00-obsidian-livesync.ini /opt/couchdb/etc/local.d/00-obsidian-livesync.ini
