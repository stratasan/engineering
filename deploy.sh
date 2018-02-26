mkdocs build --clean
aws s3 sync ./site s3://engineering.stratasan.com/ --acl public-read --cache-control "public, max-age=86400" 
