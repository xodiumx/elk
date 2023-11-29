# ELK

## Установка через Docker (локально)

1. Клонируйте репозиторий

2. В главной директории создайте `.env` file, заполните все переменные с `<>`

```
# Main settings

ELASTIC_VERSION=7.17.15

ELASTIC_USERNAME=<your_name>
ELASTIC_PASSWORD=<your_password>
ELASTIC_PORTS_1=9200
ELASTIC_PORTS_2=9300

LOGSTASH_PORTS_1=5044
LOGSTASH_PORTS_2=5001
LOGSTASH_PORTS_3=9600

LOGSTASH_CONFIG_PATH=/usr/share/logstash/config/pipelines/service_stamped_json_logs.conf

KIBANA_PORTS=5601

# Hosts

HOST=0.0.0.0
LOGSTASH_HOST=logstash:5044
ELASTIC_HOST=http://elasticsearch:9200
KIBANA_HOST=http://localhost:5601

# Filebeat

PATH_TO_LOGS=<path_to_logs>
NAME_LOGS=<logs_name>
```

3. Выполните команду
```
docker-compose up -d
```
4. Или
```
docker-compose -f docker-compose-dev.yml up -d 
```