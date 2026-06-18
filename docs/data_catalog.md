# Data Dictionary for Gold Layer

## Overview

The Gold layer is the business-level data representation, structured to support analytical and reporting use cases. It consists of **dimension tables** and **fact tables** for specific business metrics.

---
### gold.dim_customers
- **Purpose:** Stores customers details enriched with demographic and geographic data.
- **Columns:**
|**Columns Name**|**Data Type**|**Description**|
|---|---|---|
|customer_key|INT|Surragorate key uniquely identifying each customer record in the dimension table.|
|customer_id|INT|Unique numerical identifier assigned to each customer.|
|customer_number|NVARCHAR(50)|Alphanumeric identifier representing the customer, used for trackingn and referencing.|
|first_name|NVARCAHR(50)|THe custo,er's first name, as recorded in the system.|
|last_name|NVARCAHR(50)|THe customer's last name or family name.|
|country|NVARCAHR(50)|The Country of residence for the customer (e.g., 'Australia').|
|marital_status|NVARCAHR(50)|The marital status of the customer (e.g., 'Married', 'Single').|
|gender|NVARCAHR(50)|The gender of the customer, e.g., ('Mael', 'Female', 'n/a').|
|birthdate|DATE|The dae of birth of the customer, formatted as YYYY-MM-DD (e.g., 1971-10-06).|
|create_date|DATE|The date and time when the customer record was created in the system.|

### 2.gold.dim_products
