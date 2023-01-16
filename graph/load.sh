#!/bin/bash

load()
{
    echo "Loading data"
    neo4j-admin database load --from-path=/var/lib/neo4j/import/ --overwrite-destination=true neo4j 
    echo "Migrating the db"
    neo4j-admin database migrate neo4j --force-btree-indexes-to-range
}

load