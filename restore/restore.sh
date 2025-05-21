#!/bin/bash
FILE=$(ls -t ./backup/*.sql | head -n 1)
cat $FILE | docker exec -i pgdb psql -U admin -d mylab
