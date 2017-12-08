
# GPU Metrics & Monitoring using Prometheus Stack

This is a container-based solution which helps in scraping Memory & GPU utilization metrics using NVML & exposing them to Prometheus Stack through a simple HTTP server and/or a push gateway.

# Pre-requisite

- Install NVIDIA-DOCKER
- A System with GPGPU Card.

<h1>Detail Steps:</h1>

# Building up Prometheus Container:

Execute the script `start.sh` as shown below:

```
sh start_containers.sh
```

The above command will start pushgateway, prometheus & Grafana in sequence

## Pushing the GPU metrics to Prometheus

```
python gpu_metrics_exporter.py
```

## Open up http://localhost:9090 to see Prometheus UI

## Open up http://localhost:3000 to access Grafana UI
