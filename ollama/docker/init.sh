#!/bin/sh

# Start ollama in the background
ollama serve &

# Wait for the server to be up
until curl -s http://localhost:11434/version > /dev/null; do
  echo "Waiting for Ollama server..."
  sleep 2
done

# Pull the desired models
ollama pull llama3
ollama pull nomic-embed-text

# Keep the server running in the foreground
wait
