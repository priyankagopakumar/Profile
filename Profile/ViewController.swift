//
//  ViewController.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {

    //@IBOutlet weak var skillsCollectionView: UICollectionView!
    //@IBOutlet weak var workExScrollView: UIScrollView!
    //@IBOutlet weak var workExPageControl: UIPageControl!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var educationTableView: UITableView!
    @IBOutlet weak var workExTableView: UITableView!
    @IBOutlet weak var projectsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         skillsCollectionView.delegate = self
         skillsCollectionView.dataSource = self
         */
        MockData.createAllMockData()
        educationTableView.delegate = self
        educationTableView.dataSource = self
        workExTableView.delegate = self
        workExTableView.dataSource = self
        projectsCollectionView.delegate = self
        projectsCollectionView.dataSource = self
        //workExScrollView.delegate = self
        //workExPageControl.numberOfPages = MockData.workEx.count
        setupProfileView()
        //setupWorkExPages()

    }
    
    func setupProfileView() {
        profileImageView.layer.borderWidth = 2
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
    }
    
    /*
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = workExScrollView.contentOffset.x / workExScrollView.frame.size.width
        workExPageControl.currentPage = Int(ceil(pageNumber))
    }
    
    func setupWorkExPages() {
        let margin = CGFloat(15)
        workExScrollView.frame.size.width = view.frame.width - 2*margin
        workExScrollView.contentSize = CGSize(width: workExScrollView.frame.width * CGFloat(MockData.workEx.count), height: workExScrollView.frame.height)
        workExScrollView.isPagingEnabled = true
        
        for index in 0..<MockData.workEx.count {
            let frame = CGRect(x: workExScrollView.frame.size.width * CGFloat(index), y: 0, width: workExScrollView.frame.width, height: workExScrollView.frame.height)
            let cardView = CardView(frame: frame)
            let currentItem = MockData.workEx[index]
            cardView.createWorkExCardView(role: currentItem.role, company: currentItem.company, years: currentItem.years, desc: currentItem.desc, image: currentItem.image)
            workExScrollView.addSubview(cardView.contentView)            
        }
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == educationTableView {
            return MockData.education.count
        } else if tableView == workExTableView {
            return MockData.workEx.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == educationTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EducationCell", for: indexPath) as! TableViewCell
            cell.logoImageView.image = UIImage(named: MockData.education[indexPath.row].image)
            cell.titleLabel.text = MockData.education[indexPath.row].institution
            cell.subtitleLabel.text = MockData.education[indexPath.row].degree
            cell.yearsLabel.text = MockData.education[indexPath.row].years
            return cell
        } else if tableView == workExTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WorkExCell", for: indexPath) as! TableViewCell
            cell.logoImageView.image = UIImage(named: MockData.workEx[indexPath.row].image)
            cell.titleLabel.text = MockData.workEx[indexPath.row].role
            cell.subtitleLabel.text = MockData.workEx[indexPath.row].company
            cell.yearsLabel.text = MockData.workEx[indexPath.row].years
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == educationTableView {
            let selectedEdu = MockData.education[indexPath.row]
            if let viewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController {
                viewController.selectedItem = selectedEdu
                present(viewController, animated: true, completion: ({
                    tableView.deselectRow(at: indexPath, animated: true)
                }))
            }
        } else if tableView == workExTableView {
            let selectedWork = MockData.workEx[indexPath.row]
            if let viewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController {
                viewController.selectedItem = selectedWork
                present(viewController, animated: true, completion: ({
                    tableView.deselectRow(at: indexPath, animated: true)
                }))
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockData.projects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProjectCell", for: indexPath) as! CollectionViewCell
        
        cell.mainImageView.image = UIImage(named: MockData.projects[indexPath.row].image)
        cell.titleLabel.text = MockData.projects[indexPath.row].name
        cell.subtitleLabel.text = MockData.projects[indexPath.row].platform
        cell.configureCell()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(identifier: "CustomDetailViewController") as? CustomDetailViewController {
            viewController.selectedItem = MockData.projects[indexPath.row]
            present(viewController, animated: true)
        }
        /*
        let selectedProject = MockData.projects[indexPath.row]
        let alert = UIAlertController(title: "Selected", message: "You selected \(selectedProject.name)", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: {(action: UIAlertAction!) in
                                        alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
 */
    }
/*
    @IBAction func addNewAppnt(_ sender: Any) {
        let alert = UIAlertController(title: "Add New", message: "Add a new appointment", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: {(action: UIAlertAction!) in
                                        alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
*/


}

