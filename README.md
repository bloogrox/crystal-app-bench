## Installation

git clone <this repo>

Start web app

```
docker-compose up -d web-prod
```

## Usage

Run benchmark

```
wrk -c 100 -t 8 http://localhost:8000
```
