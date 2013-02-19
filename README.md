redshift-benchmark
==================

This project includes the data set for Redshift benchmark.

## Requirements

  - Redshift cluster
    - required to a launch a Redshift cluster
    - minimum instance type is enough
      - dw.hs1.xlarge single node
    - see [Amazon Redshift Getting Started Guide](http://docs.aws.amazon.com/redshift/latest/gsg/welcome.html)
  - Local environment
    - postgresql client

## Import the data set into Redshift cluster

  - Create tables
    - run sql/create_tables.sql on your Redshift cluster
  - Copy the test data set on our s3 to your Redshift cluster(it took over 17 hours in our case)
    - edit sql/copy_all.sql and write your own [aws-access-key-id] and [aws-secret-access-key].
    - run sql/copy_all.sql on your Redshift cluster
  - Run the test sql
    - run sql/case_all.sql on your Redshift cluster

## License

This project is liscensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).
Copyright © 2013, Hapyrus Inc. All rights reserved
