#!/bin/bash
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "\n${YELLOW}🚀 Starting Docker Compose services...${NC}"
docker compose up -d
echo -e "\n"

echo -e "${BLUE}⏳ Waiting for services to start...${NC}"
for i in {3..1}
do
    echo -e "${BLUE}$i...${NC}"
    sleep 1
done
echo -e "\n"

echo -e "${GREEN}🏃 Start Chatting...${NC}"
docker exec -it ollama-test-1 ollama run llama2
