//
//  ViewController.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    //@IBOutlet weak var skillsCollectionView: UICollectionView!
    @IBOutlet weak var workExScrollView: UIScrollView!
    @IBOutlet weak var workExPageControl: UIPageControl!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         
         appntTableView.delegate = self
         appntTableView.dataSource = self
         skillsCollectionView.delegate = self
         skillsCollectionView.dataSource = self
         
         */
        MockData.createAllMockData()
        workExScrollView.delegate = self
        workExPageControl.numberOfPages = MockData.workEx.count
        setupProfileView()
        setupWorkExPages()
    }
    
    func setupProfileView() {
        profileImageView.layer.borderWidth = 2
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = workExScrollView.contentOffset.x / workExScrollView.frame.size.width
        workExPageControl.currentPage = Int(ceil(pageNumber))
    }
    
    func setupWorkExPages() {
        let margin = CGFloat(15)
        workExScrollView.frame.size.width = view.frame.width - 2*margin
        workExScrollView.contentSize = CGSize(width: workExScrollView.frame.width * CGFloat(MockData.workEx.count), height: workExScrollView.frame.height)
        workExScrollView.isPagingEnabled = true
        setBorderDecoration()
        
        for index in 0..<MockData.workEx.count {
            let frame = CGRect(x: workExScrollView.frame.size.width * CGFloat(index), y: 0, width: workExScrollView.frame.width, height: workExScrollView.frame.height)
            let cardView = CardView(frame: frame)
            let currentItem = MockData.workEx[index]
            cardView.createWorkExCardView(role: currentItem.role, company: currentItem.company, years: currentItem.years, desc: currentItem.desc, image: currentItem.image)
            workExScrollView.addSubview(cardView.contentView)            
        }
    }
    
    func setBorderDecoration() {
        // corner radius
        workExScrollView.layer.cornerRadius = 10
        
        // shadow
        workExScrollView.layer.shadowColor = UIColor.black.cgColor
        workExScrollView.layer.shadowOffset = CGSize(width: 2, height: 2)
        workExScrollView.layer.shadowOpacity = 0.7
        workExScrollView.layer.shadowRadius = 4.0
    }
    
    /*
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        MockData.skills.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SkillsCollectionCell", for: indexPath) as! SkillsCollectionViewCell
        
        cell.image.image = UIImage(named: MockData.skills[indexPath.row].image)
        cell.text.text = MockData.skills[indexPath.row].name
        cell.configureCell()
        return cell
    }
    

    
    

    @IBAction func addNewAppnt(_ sender: Any) {
        let alert = UIAlertController(title: "Add New", message: "Add a new appointment", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: {(action: UIAlertAction!) in
                                        alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
*/


}

