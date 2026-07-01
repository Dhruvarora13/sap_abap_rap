# SAP RAP Sales Management Application

A RAP-based Sales Management application built using the **ABAP RESTful Application Programming Model (RAP)** on SAP S/4HANA, following a layered architecture with Interface Views, Projection Views, and Service Definition.

---

## 🛠️ Tech Stack

- SAP S/4HANA
- ABAP RESTful Application Programming Model (RAP)
- Core Data Services (CDS Views)
- OData V4
- SAP Fiori Elements

---

## 📌 Features

- **Layered Architecture** — Designed using Interface Views, Projection Views, and Service Definition following RAP best practices.
- **CDS View Entities** — Created CDS entities for Sales Header and Sales Item with composition associations, enabling parent-child transactional processing.
- **Projection Views** — Built reusable projection views with search capabilities, semantic annotations, and metadata extensions for SAP Fiori Elements applications.
- **OData V4 Exposure** — Exposed business objects as OData V4 services through RAP Service Definition and Service Binding for seamless UI consumption.
- **CDS Annotations** — Implemented annotations for search, currency semantics, audit fields, and UI metadata to improve data consistency and user experience.

---

## 🏗️ Architecture Overview

```
Interface Views (Base CDS Layer)
        ↓
Projection Views (Consumption Layer)
        ↓
Behavior Definition & Implementation
        ↓
Service Definition & Service Binding
        ↓
OData V4 Service → SAP Fiori Elements UI
```

---

## 🚀 Getting Started

### Prerequisites
- SAP S/4HANA system (on-premise or cloud)
- SAP Business Application Studio or Eclipse ADT
- Authorization to create CDS Views, Behavior Definitions, and Service Bindings

### Steps to Deploy
1. Clone this repository
2. Import the objects into your SAP system via Eclipse ADT or SAP BAS
3. Activate all CDS Views, Behavior Definitions, and Service Bindings
4. Preview the application using SAP Fiori Elements preview

---

## 📂 Project Structure

```
SalesRapApplication/
├── CDS Views/
│   ├── Interface Views (Sales Header & Sales Item)
│   └── Projection Views
├── Behavior Definition/
│   └── Managed Behavior Implementation
├── Service Definition/
└── Service Binding (OData V4)
```

## 👤 Author

**Dhruv Arora**  
SAP ABAP Developer | B.Tech (CSE)  
[GitHub](https://github.com/sagargusain777)
