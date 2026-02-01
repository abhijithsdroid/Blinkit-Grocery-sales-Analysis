# 🛒 Blinkit Grocery Sales Analytics


An end-to-end data analytics project analyzing Blinkit's grocery sales performance, customer satisfaction, and inventory distribution to identify key insights and optimization opportunities.

## 🎯 Project Overview

This comprehensive data analytics project examines **8,523 transactions** across **10 Blinkit outlets** to uncover actionable insights for business optimization. Using a multi-layered analytical approach combining **Python**, **SQL**, and **Power BI**, the project delivers:

- 📊 Comprehensive sales performance analysis
- ⭐ Customer satisfaction evaluation
- 📦 Inventory distribution optimization
- 💡 Data-driven strategic recommendations

**Key Achievements:**
- Identified **42.3%** revenue contribution from Tier 3 locations (outperforming metros)
- Discovered **65.5%** sales concentration in Supermarket Type1 format
- Revealed **64.6%** market share for low-fat products
- Analyzed **16 product categories** across **3 location tiers**

---

## 💼 Business Problem

**Challenge:**  
Blinkit operates in India's competitive last-minute grocery delivery market. To maintain market leadership and drive sustainable growth, the organization needs data-driven insights to:

1. Identify high-performing product categories and outlet configurations
2. Understand geographical performance variations across city tiers
3. Optimize inventory distribution and product visibility
4. Balance customer satisfaction with operational efficiency

**Objective:**  
Conduct a comprehensive analysis of sales performance, customer satisfaction, and inventory distribution to identify key insights and opportunities for optimization using various KPIs and visualizations.

---

## 📊 Dataset

**Source:** Blinkit Grocery Sales Data  
**Format:** Excel (.xlsx)  
**Records:** 8,523 transactions  
**Period:** Outlet establishments from 2012-2022

### Dataset Features:

| Feature | Description | Type |
|---------|-------------|------|
| `Item Fat Content` | Fat content classification (Low Fat/Regular) | Categorical |
| `Item Identifier` | Unique product ID | String |
| `Item Type` | Product category (16 types) | Categorical |
| `Outlet Establishment Year` | Year outlet was established | Numeric |
| `Outlet Identifier` | Unique outlet ID | String |
| `Outlet Location Type` | City tier (Tier 1/2/3) | Categorical |
| `Outlet Size` | Store size (Small/Medium/High) | Categorical |
| `Outlet Type` | Store format classification | Categorical |
| `Item Visibility` | Display prominence metric (0-1) | Numeric |
| `Item Weight` | Product weight in kg | Numeric |
| `Sales` | Transaction value in USD | Numeric |
| `Rating` | Customer rating (1-5 scale) | Numeric |

**Data Quality:**
- ✅ No duplicate records
- ⚠️ 1,463 missing values in `Item Weight` (17.2%)
- ✅ All categorical fields properly encoded
- ✅ No outliers requiring removal

---

## 🛠️ Tech Stack

### Languages & Libraries
- **Python 3.x**
  - `pandas` - Data manipulation and analysis
  - `numpy` - Numerical computing
  - `matplotlib` - Data visualization
  - `sqlalchemy` - Database connectivity

### Database
- **PostgreSQL 13+** - Data storage and advanced querying

### Business Intelligence
- **Microsoft Power BI Desktop** - Interactive dashboards and reporting

### Development Environment
- **Jupyter Notebook** - Interactive data exploration
- **pgAdmin 4** - PostgreSQL management
- **VS Code** - Code editing

---

## 🏗️ Project Architecture

```
┌─────────────────┐
│  Excel Dataset  │
│  (8,523 rows)   │
└────────┬────────┘
         │
         ▼
┌─────────────────────────────┐
│   PYTHON DATA PROCESSING    │
│  - Data Cleaning            │
│  - EDA & Statistics         │
│  - Visualization            │
└────────┬────────────────────┘
         │
         ▼
┌─────────────────────────────┐
│   POSTGRESQL DATABASE       │
│  - Data Storage             │
│  - 13 Analytical Queries    │
│  - Complex Aggregations     │
└────────┬────────────────────┘
         │
         ▼
┌─────────────────────────────┐
│   POWER BI DASHBOARD        │
│  - Interactive Visuals      │
│  - KPI Cards                │
│  - Dynamic Filtering        │
└─────────────────────────────┘
```

### Workflow Steps:

1. **Data Acquisition** → Import Excel data into Python
2. **Data Cleaning** → Standardize columns, handle missing values
3. **Exploratory Analysis** → Statistical analysis, distributions, correlations
4. **Database Setup** → Load cleaned data into PostgreSQL
5. **SQL Analysis** → Execute analytical queries for insights
6. **Dashboard Creation** → Build interactive Power BI visualizations
7. **Insight Generation** → Synthesize findings into recommendations

---

## 🔍 Key Insights

### 1️⃣ Geographical Performance
**Finding:** Tier 3 locations generate **$472K (42.3%)** of total revenue, outperforming Tier 1 metropolitan areas by **40%**

**Implication:** Lower competition and better unit economics in emerging markets

**Action:** Accelerate Tier 3 expansion strategy

---

### 2️⃣ Outlet Format Efficiency
**Finding:** Supermarket Type1 contributes **65.5%** of total sales with consistent **$141** average transaction value

**Implication:** Scale economies and broader product range drive superior performance

**Action:** Replicate Type1 best practices across outlet network

---

### 3️⃣ Category Leadership
**Finding:** Top 2 categories (Fruits & Vegetables, Snack Foods) drive **30%** of total revenue

**Implication:** Fresh produce indicates quality trust; snacks show impulse purchase success

**Action:** Strengthen inventory depth in top-performing categories

---

### 4️⃣ Health-Conscious Consumers
**Finding:** Low-fat products command **64.6%** market share (nearly 2:1 ratio)

**Implication:** Strong preference for healthier options among urban demographic

**Action:** Expand low-fat and organic product lines

---

### 5️⃣ Customer Satisfaction Opportunity
**Finding:** Average rating of **3.97/5.0** with minimal variation across outlets

**Implication:** Consistent service quality but below 4.0 excellence threshold

**Action:** Implement targeted experience enhancement programs

---

## 💡 Strategic Recommendations

### 🔴 HIGH PRIORITY

#### 1. Tier 3 Market Expansion
- **Action:** Target 5-7 new Supermarket Type1 outlets in Tier 3 cities within 18 months
- **Expected Impact:** 25-30% increase in total sales
- **Timeline:** Q1-Q2 Research, Q3-Q4 Pilots, Year 2 Scale

#### 2. Supermarket Type1 Format Optimization
- **Action:** Standardize Type1 best practices; convert underperforming formats
- **Expected Impact:** 15-20% operational efficiency improvement
- **Quick Win:** Apply Type1 practices to Type2/Type3 immediately

---

### 🟡 MEDIUM PRIORITY

#### 3. Customer Experience Enhancement
- **Action:** Launch program to elevate ratings from 3.97 to 4.2+
- **Focus Areas:** Delivery reliability, quality assurance, service training
- **Expected Impact:** Improved retention and premium pricing opportunity

#### 4. Category Management & Product Expansion
- **Action:** Strengthen top categories; expand low-fat/organic offerings
- **Expected Impact:** 10-15% basket size increase; 8-12% health category growth
- **Quick Win:** Reallocate shelf space to high-velocity categories

---

## 🚀 Installation & Setup

### Prerequisites
```bash
Python 3.x
PostgreSQL 13+
Power BI Desktop
```

### Step 1: Clone the Repository
```bash
git clone https://github.com/yourusername/blinkit-sales-analytics.git
cd blinkit-sales-analytics
```

### Step 2: Install Python Dependencies
```bash
pip install pandas numpy matplotlib sqlalchemy psycopg2-binary
```

### Step 3: Set Up PostgreSQL Database
```bash
# Create database
createdb blinkit_db

# Update connection credentials in Python scripts
# Edit: username, password, host, port in Blinkit_Python_EDA.ipynb
```

### Step 4: Run the Analysis
```bash
# Launch Jupyter Notebook
jupyter notebook Blinkit_Python_EDA.ipynb

# Execute cells sequentially to:
# 1. Load and clean data
# 2. Perform EDA
# 3. Load data into PostgreSQL
```

### Step 5: Execute SQL Queries
```sql
-- Connect to PostgreSQL and run queries from
-- sqlanalysis.sql
```

### Step 6: Open Power BI Dashboard
```bash
# Open blinkit.pbix in Power BI Desktop
# Refresh data connections if needed
```

---

## 📁 Project Structure

```
blinkit-sales-analytics/
│
├── data/
│   └── BlinkIT_Grocery_Data.xlsx          # Raw dataset
│
├── notebooks/
│   └── Blinkit_Python_EDA.ipynb           # Python analysis
│
├── sql/
│   └── sqlanalysis.sql                    # SQL queries
│
├── dashboards/
│   ├── blinkit.pbix                       # Power BI dashboard
│   └── blinkitdashboard.png               # Dashboard screenshot
│
├── reports/
│   ├── Blinkit_Analytics_Report_15pg.docx # Executive report
│   └── Blinkit_Sales_Analytics.pptx       # Presentation
│
├── images/
│   └── dashboard_preview.png              # Visuals for README
│
├── requirements.txt                        # Python dependencies
├── README.md                               # Project documentation
└── LICENSE                                 # License information
```

---


### Dashboard Features:
- 📊 **KPI Cards:** Total Sales ($1.20M), Avg Sales ($141), Items (8,523), Rating (3.9)
- 📈 **Outlet Establishment Trend:** Time-series showing peak performance in 2018
- 🗺️ **Geographical Analysis:** Tier-wise performance breakdown
- 🥘 **Category Performance:** Sales by all 16 product categories
- 🏪 **Outlet Comparison:** Detailed metrics table with filtering
- 🥗 **Fat Content Analysis:** Low Fat vs Regular distribution

---

## 📈 Results & Impact

### Business Metrics Achieved:

| Metric | Value | Insight |
|--------|-------|---------|
| **Total Revenue** | $1.20M | Strong revenue base across 10 outlets |
| **Avg Transaction** | $141 | Consistent basket size |
| **Customer Rating** | 3.97/5.0 | Good satisfaction with improvement potential |
| **Product Range** | 1,559 items | Comprehensive inventory across 16 categories |
| **Top Category Share** | 30% | Concentration in Fruits/Veg + Snacks |
| **Tier 3 Contribution** | 42.3% | Emerging market success |

### Expected Impact from Recommendations:
- 💰 **25-30%** revenue growth (Tier 3 expansion)
- ⚡ **15-20%** efficiency improvement (format optimization)
- ⭐ **+0.23 points** rating increase (4.2+ target)
- 🛒 **10-15%** basket size growth (category management)

---

## 🔮 Future Enhancements

### Phase 1 (Short-term)
- [ ] Implement real-time data pipeline for dashboard updates
- [ ] Develop customer segmentation analysis
- [ ] Create automated reporting system

### Phase 2 (Medium-term)
- [ ] Build machine learning models for demand forecasting
- [ ] Develop dynamic pricing recommendation engine
- [ ] Integrate external data (weather, events, demographics)

### Phase 3 (Long-term)
- [ ] Predictive analytics for outlet performance
- [ ] AI-powered inventory optimization
- [ ] Personalized product recommendations




## 👤 Contact

  Abhijith S

- 💼 LinkedIn: www.linkedin.com/in/abhijiths0310
- 🐱 GitHub: (https://github.com/abhijithsdroid)
- 

---


[⬆ Back to Top](#-blinkit-grocery-sales-analytics)

</div>
