debug-docker-up:
	cd ./deployments/debug ; \
	docker compose up -d --build

debug-docker-down:
	cd ./deployments/debug ; \
	docker compose down

etcdctl-member-list:
	etcdctl member list --write-out="table"

etcdctl-all-keys:
	etcdctl get --prefix http

run-sourceparser:
	go run ./cmd/sourceparser

run-dataserver:
	go run ./cmd/dataserver