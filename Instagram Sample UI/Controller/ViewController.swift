//
//  ViewController.swift
//  Instagram Sample UI
//
//  Created by Rasaal Ahmad on 09/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var postCollectionView: UICollectionView!
    let postModal = PostModal()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        postCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        postCollectionView.delegate = self
        postCollectionView.dataSource = self
    }
}


//MARK: - UICollectionViewDelegate

extension ViewController:UICollectionViewDelegate{
    
}

//MARK: - UICollectionViewDataSource

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postModal.post.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = postCollectionView.dequeueReusableCell(withReuseIdentifier: "PostCollectionViewCell", for: indexPath) as! PostCollectionViewCell
        cell.setup(post: postModal.post[indexPath.row])
        return cell
    }
}


//MARK: - UICollectionViewDelegateFlowLayout

extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                return CGSize(width: view.frame.size.width, height: (view.frame.size.height/2) - 3)
        }
}

