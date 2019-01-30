workflow "Build" {
  on = "push"
  resolves = ["dc up"]
}

action "dc up" {
  uses = "actions/docker/cli@c08a5fc9e0286844156fefff2c141072048141f6"
  runs = "docker build -t anydo-admin ."
  env = {
    S3_BUCKET_NAME = "exchange-service-app"
    AWS_ACCESS_KEY_ID = "AKIAIIVPEUZT4GHSAYHA"
    AWS_SECRET_ACCESS_KEY = "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"
    AWS_REGION = "ap-southeast-1"
    DEVISE_SECRET_KEY = "3b595d4a8bc0669413b1da563c716b5225f8d0fa89f126ad650ee5b4ae7cc85e7a094bfe9b9430a8d6efb439f636277157157b89444d3f4a21882ed38b038394"
    SKYLIGHT_AUTHENTICATION = "UPbMFoBaFaOLvWjAwT0QEWIsNZISoO8RPHJyHvvBWjs"
    DATABASE_URL = "postgres://alder:dramaturg@localhost"
  }
}
