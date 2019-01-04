workflow "CI" {
    on = "push"
    resolves = ["build"]
}

workflow "CD" {
    on = "push"
    resolves = ["deploy"]
}

action "build" {
    uses = "docker://python:3.6-alpine"
    runs = "./.github/action_runner.sh"
    args = [
        "pip install -r requirements.txt",
        "mkdocs build --clean"
    ]
}

action "deploy" {
    needs = ["build"]
    uses = "actions/aws/cli@master"
    args = "s3 sync ./site s3://engineering.stratasan.com/ --acl public-read --cache-control \"public, max-age=86400\""
    secrets = [
        "AWS_ACCESS_KEY_ID",
        "AWS_SECRET_ACCESS_KEY"
    ]
}
