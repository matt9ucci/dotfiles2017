start_postgresql() {
	tag=${1:-latest}
	name=${2:-pg}
	if [ $(docker ps --all --quiet --filter "name=pg" --filter "ancestor=postgres:latest") ]; then
		docker start $name
	else
		docker run --detach --name $name --publish 5432:5432 --env POSTGRES_PASSWORD=password postgres:$tag
	fi
}

start_postgresql_psql() {
	docker run --interactive --tty --name psql --rm --link pg:pghost postgres psql --host pghost --username postgres
}

