Lab 4 – Serverless ETL from Aurora to S3 Data Lake

Problem to solve
Build an ETL system that exports new/updated rows from Aurora into partitioned S3 data-lake storage for analytics.

Core services

    Aurora Serverless (source transactional DB)
    Lambda (ETL extractor + transformer)
    S3 (data lake, partitioned by date)
    EventBridge (scheduled ETL trigger every N minutes/hours)
    SNS (ETL completion/failure notifications)
    (Optional) Glue Data Catalog + Athena

Criteria for success

    Aurora table has “orders” with updated_at timestamp.
    EventBridge scheduled rule (e.g., every 30 min) triggers a Lambda that:
        queries Aurora for rows updated in last 30 min
        writes them as parquet or JSON into s3://.../orders/yyy=MM=dd/HH=... partitions
        publishes success/failure to SNS
    Athena (optional) can query the exported data successfully.
    ETL code + schedule are fully managed via Terraform.
