# rubyhello

A toy Docker project. Ruby/Sinatra hello world. It listens for HTTP on 4567, and returns `"Hello, world!"` when you `GET "/"`.

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

Authorize the `gcloud` command-line tool to access your project, set appropriate GCP project ID, and then configure Docker to use your Container Registry credentials when interacting with Container Registry. (OPTIONAL: use Cloud Shell and skip this step.)

```bash
gcloud auth login
gcloud config set project $PROJECT_NAME
gcloud auth configure-docker
```

Then:


```bash
git clone https://github.com/wtmcc/rubyhello.git
cd rubyhello/
gcloud builds submit --tag gcr.io/$PROJECT_NAME/rubyhello .
docker run -p 4567:4567 gcr.io/$PROJECT_NAME/rubyhello &
curl localhost:4567
fg
# Ctrl+C to exit
```
