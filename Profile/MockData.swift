//
//  MockData.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//

import Foundation

class MockData {

    static var skills: [XSkills] = []
    static var projects: [XProjects] = []
    static var education: [XEducation] = []
    static var workEx: [XWorkEx] = []
    static var pictures: [XPictures] = []
    static var interests: [String] = ["iOS Application Development", "Research and Development", ""]
    
    static func createMockSkills() {
        MockData.skills = []
        MockData.skills.append(XSkills(name: "iOS Application Development", type: "iOS", notes: "Frameworks: UIKit, SwiftUI, MapKit, Charts", image: "ios"))
        MockData.skills.append(XSkills(name: "Android Application Development", type: "Android", notes: "Simple list view projects with connection to JSON", image: "android"))
        MockData.skills.append(XSkills(name: "Web Application Development", type: "Web", notes: "ASP.Net with C#, Angular", image: "web"))
        MockData.skills.append(XSkills(name: "Swift", type: "iOS", notes: "Frameworks: UIKit, SwiftUI, MapKit, Charts", image: "swift"))
        MockData.skills.append(XSkills(name: "REST APIs", type: "JSON", notes: "REST APIs with JSON response", image: "restapi"))
    }
    
    static func createMockProjects() {
        MockData.projects = []
        MockData.projects.append(XProjects(name: "Telstra Location Labs", platform: "iOS", desc: "iOS and web applications to help track the location of people and assets on the floor using Bluetooth and Wi-Fi access points.", image: "telstralocator"))
        MockData.projects.append(XProjects(name: "SNAPP App", platform: "iOS", desc: "iOS and web constumer advocacy tools for Telstra", image: "snapp"))
        MockData.projects.append(XProjects(name: "CTRD", platform: "Tableau", desc: "A Tableau dashboard (with backend smarts from Excel) that helps monitor the progress of clinical trials of a leading pharmaceutical company. It provides information on the different stages of the clinical trials at varying levels of granularity", image: "musigma"))
        MockData.projects.append(XProjects(name: "ReMindr", platform: "iOS", desc: "A unique twinning iOS mobile application for people living with Dementia and their caregivers", image: "remindr"))
        MockData.projects.append(XProjects(name: "PiWatch", platform: "iOS", desc: "Advanced Mobile Systems IoT project using Raspberry Pi, motion sensor, Pi camera and a iOS mobile application. On detection of motion, the camera clicks a still image, creates an intrusion eventa and triggers a push notification to the iOS application, informing the user of the event", image: "monash"))
        MockData.projects.append(XProjects(name: "Mobile Pain Diary", platform: "Android", desc: "A university project to develop an Android application that uses Google Geocoding and connection to RESTful web services, weather APIs and databases, that helps patients keep a record of their pain levels", image: "monash"))
        MockData.projects.append(XProjects(name: "Wish List", platform: "Android", desc: "A university project to develop an Android application that works as a gift registry and does basic web scraping to find prices of the items on the registry", image: "monash"))
        MockData.projects.append(XProjects(name: "PPG Health Monitoring System", platform: "MATLAB", desc: "Design and development of a portable, real-time PPG-based physiological health monitoring system that extracts parameters from the biomedical signal for early detection of cardiac and respiratory conditions. It provides real-time data, and employs a cost-effective sensor and circuit design. This project was awarded ‘Best Project’ for Medical Electronics at the final Project Expo.", image: "ppg"))
    }
    
    static func createMockEducation() {
        MockData.education = []
        MockData.education.append(XEducation(institution: "Monash University", location: "Melbourne, Australia", years: "2015-2017", degree: "Master of Information Technology", major: "Mobile Application Development", projects: Array(MockData.projects[3...6]), gpa: "3.4", desc: "Student Representative for the Graduate Programs Committee, Faculty of Information Technology, Monash University, 2016-2017 \nDeloitte Mentoring Program for IT females, 2016 \nTopper - Distributed and Big Data Processing for Semester 1, 2016 \nTopper - Programming Foundations in Java for Semester 2, 2015", image: "monash"))
        MockData.education.append(XEducation(institution: "M. S. Ramaiah Institute of Technology", location: "Bangalore, India", years: "2010-2014", degree: "Bachelor of Engineering", major: "Medical Electronics", projects: [MockData.projects[7]], gpa: "9.34", desc: "Member of IEEE and IEEE-EMBS - participated and volunteered in various workshops and seminars organized by IEEE \nPublication: “Clinical Engineering in India: A Case Study”. International Journal of Biomedical and Clinical Engineering (IJBCE), Volume 3, Issue 1, January 2014 \nAwarded  “Best  Project”  for  the  year  2013-2014  by  securing  first  place  for  “Design and Development of PPG based Physiological Health Monitoring System”", image: "ramaiah"))
    }
    
    static func createWorkEx() {
        MockData.workEx = []
        MockData.workEx.append(XWorkEx(company: "Telstra", location: "Melbourne, Australia", years: "January 2018 - August 2019", role: "Software Developer", projects: Array(MockData.projects[0...1]), desc: "Developed the backend services (databases, webservers, email notifications, REST APIs) and frontend applications (iOS and web portal) of the company’s customer advocacy application \nDeveloped a proof of concept to demonstrate to internal and external clients the feasibility of Bluetooth and Wi- Fi-based indoor location tracking in Telstra Labs. Created an iOS, Android and web application using Swift, Java, ReactJS, HTML5 and CSS, and backend services using Python, Node.js, MongoDB and NGINX \nDelivered technical presentations on Location Innovation Project and Bluetooth-based location services \nPerformed testing and competitor analysis for the company’s proprietary tracker \nExecuted the cease sale and exit of two IoT products. Developed and documented a streamlined process to facilitate future product exits \nPrepared marketing plans and case studies for a new IoT predictive maintenance solution in collaboration with Legal, Sales, and Marketing teams \nRunners-up at Telstra Graduate Innovation Challenge, 2019 for a technical presentation on FIDO Authentication", image: "telstra"))
        MockData.workEx.append(XWorkEx(company: "Mu Sigma", location: "Bangalore, India", years: "August 2014 - May 2015", role: "Decision Scientist", projects: Array(MockData.projects[2...2]), desc: "Performed data wrangling (SQL and Excel) and analytics (SAS, R) to generate insights to present to clients \nCreated and maintained dashboards on Tableau for clients to track the progress of their research projects \nDebugged and fixed existing software and dashboards to improve accuracy and performance", image: "musigma"))
        MockData.workEx.append(XWorkEx(company: "Telstra", location: "Melbourne, Australia", years: "November 2016 - February 2017", role: "Software Developer - Intern", projects: Array(MockData.projects[0...0]), desc: "Created a working demonstration (Android and web application) of Bluetooth and Wi-Fi based indoor location tracking capabilities for internal use at Telstra Labs \nDeveloped the frontend and backend services using Java, AngularJS, HTML, CSS, Python, Node.js, MongoDB and NGINX \nDelivered a technical presentation on the feasibility and use cases of Bluetooth-based Location Services to Chief Technology Office (CTO)", image: "telstra"))
    }

    static func createAllMockData() {
        createMockSkills()
        createMockProjects()
        createMockEducation()
        createWorkEx()
    }
    
    /*
    func inputDummyCoreData () {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'"
        
        //CoreDataManager.sharedManager.createTransaction(id: 1, desc: "Chipotle on Doordash", amount: 20.0, type: "Debit", source: "Freedom Account", created: dateFormatter.date(from: "2021-01-22")!)
        //CoreDataManager.sharedManager.createTransaction(id: 2, desc: "Banana Republic", amount: 180.0, type: "Debit", source: "Freedom Account", created: dateFormatter.date(from: "2021-01-24")!)
        //CoreDataManager.sharedManager.createTransaction(id: 3, desc: "Transfer from Pras", amount: 500.0, type: "Credit", source: "Freedom Account", created:dateFormatter.date(from: "2021-01-27")!)
        //CoreDataManager.sharedManager.createTransaction(id: 4, desc: "Utilities", amount: 120.0, type: "Debit", source: "Freedom Account", created: dateFormatter.date(from: "2021-02-02")!)
        //CoreDataManager.sharedManager.createTransaction(id: 5, desc: "Monthly maintenance amount", amount: 1000.0, type: "Credit", source: "Freedom Account", created: dateFormatter.date(from: "2021-02-05")!)

    }
    */
    
}
