#!/bin/bash
PGPASSWORD="[your-redshift-password]" psql -d "[your-db-name]" -h "[your-redshift-cluster-host]" -p "[port-number]" -U "[user-name]" $*
