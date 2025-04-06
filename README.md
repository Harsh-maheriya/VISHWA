# 🏥 VISHWA: Vital Information System For Health Wellness and Awareness ✨

[![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue)](https://www.postgresql.org/)
<!--[![License: DAIICT](https://img.shields.io/badge/License-DAIICT-yellow.svg)](LICENSE.md)  Ensure you have a LICENSE.md file -->

---

## 🎯 Project Purpose

**VISHWA** integrates clinical data, research insights, and public health outreach to improve community wellness and awareness. It provides a unified PostgreSQL database structure to manage vital health information, support research activities, and empower awareness campaigns.

## 🚀 Core Functionality

This database enables management of:

*   👤 **Users & Roles:** Defines users (Patients, Staff, Researchers, Activists) and their specific roles.
*   🏥 **Clinical Operations:** Tracks patient admissions, treatments, and associated diseases within medical centers.
*   🔬 **Research Activities:** Manages research data collection and links it to relevant diseases.
*   📢 **Awareness Campaigns:** Allows health activists to manage campaigns targeted at specific diseases or audiences.
*   📦 **Resources & Logistics:** Handles medical/research centers, resource types, stock levels, manufacturers, and vaccines.

## 📊 Database Diagrams

### Entity-Relationship Diagram (ERD)

*This diagram shows the high-level entities and their relationships.*

![VISHWA ER Diagram](path/to/your/erd_diagram.png)
*<(Replace the path above with the correct path to **your** ERD image file)>*

### Relational Schema

*This diagram details the specific tables, columns, primary keys (PK), and foreign keys (FK).*

![VISHWA Relational Schema](path/to/your/relational_schema.png)
*<(Replace the path above with the correct path to **your** Relational Schema image file)>*

---

## 🛠️ Technology

*   **Database:** PostgreSQL 🐘

---

## ⚙️ Setup

1.  **Prerequisites:** Ensure PostgreSQL is installed and running.
2.  **Run DDL:** Connect to your PostgreSQL instance and execute the provided `commands.sql` script to create the database structure.
    ```bash
    psql -U your_username -d your_database_name -f commands.sql
    ```

---

*VISHWA aims to connect data for a healthier, more informed community.*
