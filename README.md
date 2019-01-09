# rubyhello

A toy Docker project. Ruby/Sinatra hello world.

## Building

```bash
docker build --tag=rubyhello .
```

## Running

```bash
docker run -p 4567:4567 rubyhello
curl localhost:4567
```
