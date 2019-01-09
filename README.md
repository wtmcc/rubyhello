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

## Building and running with Google Cloud Build

```bash
git clone https://github.com/wtmcc/rubyhello.git
cd rubyhello/
gcloud builds submit --tag gcr.io/$PROJECT_NAME/rubyhello .
docker run -p 4567:4567 gcr.io/$PROJECT_NAME/rubyhello &
curl localhost:4567
fg
# Ctrl+C to exit
```
