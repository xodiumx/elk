.PHONY: es
es:
	docker-compose -f docker-compose-es.yml up -d


.PHONY: lf
lf:
	docker-compose -f docker-compose-lf.yml up -d
