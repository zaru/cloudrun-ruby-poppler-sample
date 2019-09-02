```
gcloud builds submit --config cloudbuild.yaml

gcloud beta run deploy \
  --image gcr.io/cloudrun-ruby-zaru-sample/sinatra-sample \
  --platform managed \
  --memory 1024Mi \
  --region asia-northeast1
```