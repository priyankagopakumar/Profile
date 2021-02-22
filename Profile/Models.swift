//
//  Models.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//

import Foundation

struct XSkills {
    var name: String
    var type: String
    var notes: String
    var image: String
}

struct XProjects {
    var name: String
    var platform: String
    var desc: String
    var image: String
}

struct XEducation {
    var institution: String
    var location: String
    var years: String
    var degree: String
    var major: String
    var projects: [XProjects]
    var gpa: String
    var desc: String
    var image: String
}

struct XWorkEx {
    var company: String
    var location: String
    var years: String
    var role: String
    var projects: [XProjects]
    var desc: String
    var image: String
}

struct XPictures {
    var src: String
    var desc: String
}
