# Hospital Appointments Analysis with Power BI & MySQL

## 📌 Project Overview

This project analyzes hospital appointment data to uncover trends, patterns, and factors affecting patient attendance. The analysis was performed using **MySQL** for data querying and transformation, and **Power BI** for interactive visualizations.

The primary objectives of this analysis were to:

* Identify booking patterns by time, demographics, and medical conditions.
* Measure the no-show rate and its influencing factors.
* Compare appointment attendance across different patient groups.
* Provide actionable insights for hospital management to improve patient turnout.

---

## 🗂 Dataset Description

The dataset contains patient appointment details, including demographics, medical conditions, and booking behavior.

**Key Columns:**

* `PatientId`: Unique patient identifier
* `AppointmentID`: Unique appointment identifier
* `Gender`: Male/Female
* `ScheduledDay`: Date and time the appointment was scheduled
* `AppointmentDay`: Actual appointment date
* `Age`: Patient age
* `Neighbourhood`: Location of the hospital
* `Scholarship`: Indicates if the patient is under a welfare program
* `Hypertension`: Indicates a hypertension diagnosis
* `Diabetes`: Indicates a diabetes diagnosis
* `Alcoholism`: Indicates a history of alcoholism
* `SMS_received`: Whether the patient received an SMS reminder
* `No_show`: Yes/No indicator for attendance

---

## 🛠 Tools & Technologies

* **Database:** MySQL
* **Visualization:** Power BI
* **Language:** SQL
* **Data Source:** Hospital appointment records

---

## 📊 Power BI Dashboard Features

The interactive Power BI dashboard includes the following visualizations:

* **Top 5 Neighbourhoods by Total Bookings:** Bar chart of the most active areas.
* **Trend of Bookings by Weekday:** Line chart showing daily booking patterns.
* **Percentage of No-Shows:** KPI card for quick no-show rate reference.
* **SMS Reminder Impact:** Bar chart comparing attendance for patients with/without reminders.
* **Bookings by Age Group:** Distribution of appointments across different age ranges.
* **Gender-wise Breakdown:** Donut chart showing male vs. female bookings.
* **Medical Condition Impact:** Stacked bar chart for hypertension, diabetes, and alcoholism.
* **Monthly Bookings:** Column chart of bookings per month for the current year.
* **Highest & Lowest Booking Days:** Table listing top and bottom attendance days.
* **Average Patient Age:** KPI card showing the mean patient age.

---

## 🧮 SQL Queries Implemented

The following SQL queries were used for data analysis:

* Retrieve all successful bookings.
* Retrieve all cancelled or missed bookings.
* Total bookings per weekday.
* Bookings with SMS reminders.
* Bookings for patients aged above 60.
* Average age by neighbourhood.
* Top 5 neighbourhoods by number of appointments.
* Bookings count by age group.
* Bookings for patients with both hypertension and diabetes.
* Total bookings per month.

---

## 📈 Key Insights

* SMS reminders significantly reduce the no-show rate.
* Certain neighbourhoods account for a higher volume of bookings.
* Older patients tend to have a slightly higher attendance rate.
* Patients with specific medical conditions exhibit distinct booking behaviors.
* Peak booking days occur mid-week, while weekends see fewer appointments.

---

## 📄 Files Included

* `Analysis_of_appointments.sql`: SQL queries for data analysis
* `appointments_report.pbix`: Power BI dashboard file
* `README.md`: This project documentation

---

## 📬 Contact

* **Developed by:** Mohammed Swalih
* **Email:** swalihkichu00@gmail.com.com
* **LinkedIn:** [Mohammed Swalih](https://www.linkedin.com/in/mohammed-swalih-977b71219/)
