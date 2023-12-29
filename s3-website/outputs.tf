output "website_endpoint" {
  value = aws_s3_bucket.website.website_endpoint
}

output "website_bucket_id" {
  value = aws_s3_bucket.website.id
}
