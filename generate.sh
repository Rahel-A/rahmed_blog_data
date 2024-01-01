#!/bin/bash
docker-compose up -d
HOST="localhost:8000"
mkdir out
curl $HOST/c4plantuml/svg --data-binary '@diagrams/deployment.puml' -o out/deployment.svg
curl $HOST/c4plantuml/png --data-binary '@diagrams/deployment.puml' -o out/deployment.png
curl $HOST/c4plantuml/svg --data-binary '@diagrams/deployment-pi.puml' -o out/deployment-pi.svg
curl $HOST/c4plantuml/svg --data-binary '@diagrams/deployment-truenas.puml' -o out/deployment-truenas.svg
curl $HOST/mermaid/svg --data-binary '@diagrams/interview.md' -o out/interview.svg
mv out ../../static/diagrams
docker-compose down

