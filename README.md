redshift-benchmark
==================

This project includes the data set for Redshift benchmark.

- SlideShare
  - [amazon redshift is 10x faster and cheaper than hadoop hive](http://www.slideshare.net/Hapyrus/amazon-redshift-is-10x-faster-and-cheaper-than-hadoop-hive) (English)
  - [amazon redshift is 10x faster and cheaper than hadoop hive](http://www.slideshare.net/Hapyrus/amazon-redshift-hadoop-hive10) (Japanese)

## Resources

- Test Data
  - s3://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/ad_campaigns
  - s3://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/advertisers
  - s3://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/publishers
  - s3://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/imp_logs
  - s3://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/click_logs

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
    - run sql/create_tables_redshift.sql on your Redshift cluster
  - Copy the test data set on our s3 to your Redshift cluster(it took over 17 hours in our case)
    - edit sql/copy_all.sql and write your own [aws-access-key-id] and [aws-secret-access-key].
    - run sql/copy_all.sql on your Redshift cluster
  - Run the test sql
    - run sql/test-query.sql on your Redshift cluster

## Hadoop + Hive

 - See sql/create_tables_hadoop_hive.sql to create Hive tables.
 - Run the test sql
    - see sql/test-query.sql

## License

This project is liscensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

Copyright © 2013, Hapyrus Inc. All rights reserved
