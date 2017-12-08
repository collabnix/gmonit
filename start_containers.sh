#!/bin/bash


#Starting Pushgateway
docker run -d -p 100.98.24.211:9091:9091 prom/pushgateway

# Starting Prometheus
docker run -d -p 100.98.24.211:9090:9090 -v /tmp/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus -config.file=/etc/prometheus/prometheus.yml -storage.local.path=/prometheus

# Starting Grafana
docker run -d --name=grafana -p 100.98.24.211:3000:3000 grafana/grafana

#Start the Nodexporter too

#python ./gpu_metrics_exporter.py
