//
//  DetailViewController.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/22/21.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet var cardView: CardView!
    @IBOutlet weak var projectsTableView: UITableView!
    @IBOutlet weak var additionalLabel: UILabel!
    
    var selectedItem: Any?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        projectsTableView.delegate = self
        projectsTableView.dataSource = self
        /*
        let scrollSize = CGSize(width: view.frame.size.width,
                                height: view.frame.size.height)
        mainScrollView.contentSize = scrollSize
 */
    }
    
    func setupView() {
        if selectedItem is XEducation {
            let edu = selectedItem as! XEducation
            cardView.imageView.image = UIImage(named: edu.image)
            cardView.roleLabel.text = edu.institution
            cardView.companyLabel.text = edu.degree
            cardView.yearsLabel.text = edu.years
            cardView.descLabel.text = edu.desc
            additionalLabel.text = "Grade: \(edu.gpa)"
        } else if selectedItem is XWorkEx {
            let work = selectedItem as! XWorkEx
            cardView.imageView.image = UIImage(named: work.image)
            cardView.roleLabel.text = work.role
            cardView.companyLabel.text = work.company
            cardView.yearsLabel.text = work.years
            additionalLabel.text = "Location: \(work.location)"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if selectedItem is XEducation {
            let edu = selectedItem as! XEducation
            return edu.projects.count
        } else if selectedItem is XWorkEx {
            let work = selectedItem as! XWorkEx
            return work.projects.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StandardCell", for: indexPath) as! StandardTableViewCell
        if selectedItem is XEducation {
            let edu = selectedItem as! XEducation
            cell.titleLabel.text = edu.projects[indexPath.row].name
            cell.subtitleLabel.text = edu.projects[indexPath.row].desc
        } else if selectedItem is XWorkEx {
            let work = selectedItem as! XWorkEx
            cell.titleLabel.text = work.projects[indexPath.row].name
            cell.subtitleLabel.text = work.projects[indexPath.row].desc
        }
        return cell
    }
    
    @IBAction func dismissController(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
