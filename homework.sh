#!/bin/bash
#git --version

# Update package lists
#sudo apt update

# Install git
#sudo apt install -y git

# Install curl
#sudo apt install -y curl

# Install jq
#sudo apt install -y jq

# Install docker
#sudo apt install -y docker.io

# Install docker-compost
#sudo apt install -y docker-compose

# Echo git installation
#echo "Git has been installed successfully.


# Create user
echo "Creating user..."
#sudo useradd -m testuser

# Add user password
echo "Adding user password..."
#sudo passwd testuser 

# Add user to group
echo "Added user to the group..."
#sudo usermod -aG sudo testuser

# Post data to categroy
echo "Post data to category..."
curl -s -X 'POST' \
  'http://34.143.152.120:8989/api/v1/categories' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "Khmer tainditional food"
}' | jq "."

# Post data to category
echo "Post data to category"
curl -s -X 'POST' \
  'http://34.143.152.120:8989/api/v1/categories' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "Khmer Cambodia food"
}' | jq "."

# Post data to article
echo "Post data to article..."
curl -s -X 'POST' \
  'http://34.143.152.120:8989/api/v1/articles' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "title": "string",
  "description": "string",
  "categoryId": 91
}' | jq "."
