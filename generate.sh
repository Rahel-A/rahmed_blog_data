#!/bin/bash
HOST="localhost:8000"
mkdir out
curl $HOST/c4plantuml/svg --data-binary '@diagrams/deployment.puml' -o out/deployment.svg
curl $HOST/mermaid/svg --data-binary '@diagrams/interview.md' -o out/interview.svg

