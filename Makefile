prepare-dirs:
	mkdir -p ./etc-dnsmasq.d
	mkdir -p ./etc-pihole

build-pihole-with-unbound:
	docker build -t pihole_unbound .

build-pihole:
	docker compose build
	docker compose up -d

build-all:
	make prepare-dirs
	make build-pihole-with-unbound
	make build-pihole

start-pihole:
	docker start pihole

stop-pihole:
	docker stop pihole

attach-pihole:
	docker attach -it pihole

clean:
	rm ./etc-dnsmasq.d -r
	rm ./etc-pihole -r