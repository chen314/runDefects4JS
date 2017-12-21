#! /bin/bash

# Create a network --> defecets4js and create a subnet --> 172.88.0.0/16
# Subnet in CIDR (Classless Inter-Domain Routing) format that represents a network segment

docker network create --subnet 172.88.0.0/16 defects4js
