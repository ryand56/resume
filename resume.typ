#set page(
  margin: (left: 0.75in, top: 0.6in, right: 0.75in, bottom: 0.6in),
  header: none,
  footer: none,
  numbering: none,
)

#show title: set text(
  font: "Liberation Serif",
  size: 17pt,
)
#show title: set align(center)

#show heading.where(level: 2): set block(above: 2em, below: 1em)

#let date-entry(title, date, desc) = block(
  above: 12pt, below: 6pt, width: 100%,
)[
  #strong(title) #h(1fr) #text(size: 0.85em, date) \
  #desc
]

#title[Ryan Omasta]

#align(center)[
  #link("mailto:ryan@ryand.ca")[ryan\@ryand.ca] | _Edmonton, AB, Canada_

  Computer Engineering graduate from NAIT with experience in automation, infrastructure, and scalable systems. I am seeking an opportunity to gain experience in a supportive and inclusive workplace.
]

== Technical Skills
#set terms(separator: [: ], hanging-indent: 0pt, spacing: 1em)
/ Programming Languages: Python, Rust, C, C++, C\#, JavaScript, TypeScript, Java, SQL
/ Frontend Development: React, Next.js, Tailwind CSS, HTML/CSS, UI/UX Design, Web Design
/ Backend & Databases: Node.js, MongoDB, FastAPI/Uvicorn, InfluxDB, PostgreSQL, MariaDB/MySQL, JWT, REST
/ Cloud & DevOps: Nix, Terraform, AWS, Azure, GitHub, System Administration, Linux, Unix, Networking, Bash, PowerShell
/ Embedded Systems / IoT: STM32, ESP32, Freescale 9S12, Embedded C/C++, Microcontroller Development, PCB Design
/ Data & Analytics: Power BI, Power Query, Data Modelling, Grafana, Prometheus
/ Tools & Other: SharePoint, WinGet, Adobe Creative Suite, Blender

== Education
#date-entry[Computer Engineering Technology][
  January 2024 - April 2026
][Northern Alberta Institute of Technology]

#block(
  above: 10pt, below: 3pt, width: 100%
) #table(
  columns: (1fr, 1fr, 1fr),
  align: center,
  [Fundamentals of Programming], [Digital Logic], [Effective Communications],
  [Embedded System Fundamentals], [Semiconductors], [Databases],
  [Web Technologies], [Practical Electronics], [Embedded System Applications],
  [Hardware Interfacing], [Object Oriented Programming], [Web Applications],
  [Process Automation], [Communication and Networking], [Embedded System Design],
  [Advanced Programming], [Programming Languages], [Technical Project]
)

Digital Media and IT - Previous program, switched out January 2024

#date-entry[Foundations in Data Analytics and Business Intelligence][June 2023][
  NorQuest College
]

#date-entry[Academic High School Diploma (Honors Grade 10, 11 and 12)][June 2022][
  Archbishop O'Leary High School
]

== Work History
#date-entry[Developer / Freelance][2023 - present][
  Planned, developed, coded, and troubleshot multiple independent projects from concept to deployment
  Applied full-stack workflows to deliver functional, user-friendly applications
]

#date-entry[Digital Asset Manager][March 2023 - June 2023][
  NorQuest College Work Experience

  Managed and maintained accurate data records through entry and validation processes
  Ensured data integrity by identifying and correcting discrepancies, improving accuracy of datasets
]

== Certificates
*Computer Science 30 - Advanced Placement* (Honor student, highest grade)

#pagebreak()

== Projects
#date-entry[Anxiety / Stress Monitor (wearable) using ESP32 and Flutter][January 2026 - April 2026][
  Designed and implemented a real-time physiological monitoring system to detect early signs of panic using HR and GSR signals
]

#date-entry[Bluesky Avalanche Bot][November 2024 - present][
  Developed a bot for Bluesky (Twitter alternative) that automatically reposts content from the Colorado Avalanche, leveraging API integration and automation scripts
]

#date-entry[WineUSBDM][September 2024 - April 2026][
  Maintaining and updating legacy WineUSBDM software to ensure compatibility with modern systems, improving usability for niche developer communities. Allows for debugging on embedded MC9S12 and other related microcontrollers
]

#date-entry[Homelab][July 2024 - present][
  Built and administered a home lab infrastructure to self-host multiple services both locally and via remote servers, deploying Redlib, Forgejo and Vaultwarden to enhance skills in server configuration, containerization, and network management
]

== Volunteer Experience
#date-entry[Animal Foster - Zoe's Animal Rescue Society][December 2023 - October 2024][
  Delivered emotional and behavioral support to rescued animals, fostering trust and stability
  \ Contributed to their health, and readiness for adoption.
]
