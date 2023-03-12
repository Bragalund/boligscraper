run:
	docker build -f backend/postgres_Dockerfile -t postgres_local ./backend;
	docker build -f backend/postgrest_Dockerfile -t postgrest_local ./backend;
	docker build -f backend/nginx_rev_proxy_Dockerfile -t nginx_rev_proxy_local ./backend;
	docker-compose up --remove-orphans -d;

stop:
	docker-compose down;