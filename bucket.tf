module "s3-website-1" {
  source      = "./s3-website"
  bucket_name = "yeongil-yoon-website-1"
}

module "s3-website-2" {
  source      = "./s3-website"
  bucket_name = "yeongil-yoon-website-2"
}

resource "aws_s3_bucket_object" "index-1" {
  bucket       = module.s3-website-1.website_bucket_id
  key          = "index.html"
  content      = "<html><body><h1>yeongil-yoon-website-1</h1></body></html>"
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "index-2" {
  bucket       = module.s3-website-2.website_bucket_id
  key          = "index.html"
  content      = "<html><body><h1>yeongil-yoon-website-2</h1></body></html>"
  content_type = "text/html"
}

output "website-1-endpoint" {
  value = module.s3-website-1.website_endpoint
}

output "website-2-endpoint" {
  value = module.s3-website-2.website_endpoint
}
