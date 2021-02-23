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
        MockData.projects.append(XProjects(name: "Telstra Location Labs", platform: "iOS", desc: "iOS and web applications to help track people and assets on the floor using Bluetooth and Wi-Fi access points.", image: "telstralocator"))
        MockData.projects.append(XProjects(name: "SNAPP App", platform: "iOS", desc: "iOS and web applications to help as a constumer advocacy tool for Telstra", image: "snapp"))
        MockData.projects.append(XProjects(name: "ReMindr", platform: "iOS", desc: "A unique twinning iOS mobile application for people living with Dementia and their caregivers", image: "remindr"))
        MockData.projects.append(XProjects(name: "PPG Health Monitoring System", platform: "MATLAB", desc: "PPG based physiological health monitoring system.", image: "ppg"))
    }
    
    static func createMockEducation() {
        MockData.education = []
        MockData.education.append(XEducation(institution: "Monash University", location: "Melbourne, Australia", years: "2015-2017", degree: "Master of Information Technology", major: "Mobile Application Development", projects: [MockData.projects[2]], gpa: "3.4", desc: "Major project in iOS. Web application development.", image: "monash"))
        MockData.education.append(XEducation(institution: "M. S. Ramaiah Institute of Technology", location: "Bangalore, India", years: "2010-2014", degree: "Bachelor of Engineering", major: "Medical Electronics", projects: [MockData.projects[3]], gpa: "9.34", desc: "Work in 8 semesters.", image: "ramaiah"))
    }
    
    static func createWorkEx() {
        MockData.workEx = []
        MockData.workEx.append(XWorkEx(company: "Telstra", location: "Melbourne, Australia", years: "January 2018 - August 2019", role: "Software Developer", projects: Array(MockData.projects[0...1]), desc: "18-month Graduate Program with 3 rotations...", image: "telstra"))
        MockData.workEx.append(XWorkEx(company: "Mu Sigma", location: "Bangalore, India", years: "August 2014 - May 2015", role: "Decision Scientist", projects: [], desc: "CTRD project BMS to track clinical trials", image: "musigma"))
        MockData.workEx.append(XWorkEx(company: "Telstra", location: "Melbourne, Australia", years: "November 2016 - February 2017", role: "Software Developer", projects: Array(MockData.projects[0...1]), desc: "3-month internship at Telstra Labs in the 5G and IoT Connectivity team where I did preliminary work for Location Labs project.", image: "telstra"))
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
