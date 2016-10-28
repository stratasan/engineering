mkdocs build --clean
aws s3 sync ./site s3://stratasan-engineering-manual/ --acl public-read --cache-control "public, max-age=86400" 
