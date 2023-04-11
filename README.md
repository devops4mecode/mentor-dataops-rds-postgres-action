# DataOps Pipeline for AWS RDS Postgres

## Folder & Files Structure

```
.
├── .github
│   ├── workflows
│   │   └── dataops-pipeline.yml
│   └── scripts
│       ├── build.sh
│       ├── deploy_dev.sh
│       ├── deploy_staging.sh
│       ├── deploy_prod.sh
│       └── tests.py
├── db
│   └── deploy.sql
├── terraform
│   └── dev.tfvars
│   └── main.tf
│   └── prod.tfvars
│   └── rds.tf
│   └── security_group.tf
│   └── stg.tfvars
│   └── variables.tf
│   └── version.tf
├── .gitignore
├── README.md
└── requirements.txt
```