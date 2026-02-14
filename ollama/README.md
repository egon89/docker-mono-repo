# Ollama

## Using REST API to interact with the Ollama server
```bash
curl http://localhost:11434/api/generate -d '{
  "model": "llama3.2",
  "prompt": "What is the capital of France?"
}'
```

## Using shell container to interact with the Ollama server
```bash
# Docker
docker exec -it ollama bash

# Inside the container, you can use the ollama CLI to interact with the server
ollama run llama3.2 "What is the capital of France?"

# Docker Compose
## the first ollama is the container name, the second ollama is the CLI command
docker-compose exec ollama ollama run llama3.2 "What is the capital of France?"
```
