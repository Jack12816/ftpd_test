build:
	docker build -t jack12816/ftpd_test:latest .

publish:
	docker push jack12816/ftpd_test:latest

clean:
	docker rmi -f jack12816/ftpd_test:latest
