workflow "CI" {
    on = "push"
    resolves = ["build"]
}

action "build" {
    uses = "docker://python:3.6-alpine"
    runs = "./.github/action_runner.sh"
    args = [
        "pip install -r requirements.txt",
        "mkdocs build --clean"
    ]
}
