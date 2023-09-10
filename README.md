# Spotify Tracks Data Analytics and ETL on Azure Cloud 

This project revolves around ETL (Extract, Transform, Load), a process that turns raw data into valuable insights. We collect various data from Spotify, including song details, features, albums, artists, and popularity. Using Azure Databricks, Azure Data Lake Storage, and Azure Synapse Analytics, we organize this data and extract audio features. This helps us make informed decisions, spot music trends, and possibly predict the next big hit.

## Tools and Cloud Services

● Python 
● Spotify API
● Azure Data Lake (ADLSv2)
● Azure Databricks
● Azure Synapse


## Pipeline of the Project

The heart of our project is ETL (Extract, Transform, Load) process, a careful process that turns raw data into useful insights. This data journey happens in following steps.

🔸 Data Extraction/Ingestion

● Spotify API: The Spotify API is our access point to music data. We use Python to request data from it, obtaining details about songs, albums, artists, release dates, popularity and songs features. This structured API ensures we always have up-to-date information.

● Azure Data Lake (ADLSv2): After extracting data from Spotify, we need a reliable storage solution. Azure Data Lake Storage (ADLS) in Microsoft Azure is our choice. It offers a secure, cost-effective, and scalable platform to store raw data while preserving its integrity and original state.

🔸 Data Transformation

● Azure Databricks: Data transformation is the heart of our project. Azure Databricks, a unified analytics platform, plays a crucial role in this process. It cleans the data, normalizes it for consistency, and aggregates it for efficient analysis. Azure Databricks makes these complex transformations easier, preparing the data for further use.

🔸 Data Loading

● Azure Data Lake (ADLSv2): After transformation, the data is stored again in ADLSv2, this time in a structured and refined format suitable for various analyses. ADLSv2 provides scalability and security for housing this processed data.

● Azure Synapse: Finally, Azure Synapse Analytics as our central repository for transformed data. It not only stores data efficiently but also enables real-time and historical analysis. Azure Synapse supports the creation of data pipelines, machine learning models, and data visualizations, forming the foundation for actionable insights from the music data we've collected and transformed. It's where the data melody truly comes to life.

![Alt text](image link)

