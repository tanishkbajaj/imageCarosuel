//
//  ViewController.swift
//  imageCarosuel
//
//  Created by IMCS2 on 7/22/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
        
    
        
    
    
    var imagesArray: [UIImage] = []
    
    var imagesArray2 = Array(repeating: [UIImage(named: "1.jpg")!, UIImage(named:"2.jpg")!,UIImage(named:"3.jpg")!, UIImage(named:"4.jpg")!,UIImage(named: "5.jpg")!, UIImage(named:"6.jpg")!,UIImage(named: "7.jpg")!, UIImage(named:"8.jpg")!,UIImage(named: "9.jpg")!, UIImage(named:"10.jpg")!], count: 5)
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var mainBigImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        imagesArray += [UIImage(named: "1.jpg")!, UIImage(named:"2.jpg")!,UIImage(named:"3.jpg")!, UIImage(named:"4.jpg")!,UIImage(named: "5.jpg")!, UIImage(named:"6.jpg")!,UIImage(named: "7.jpg")!, UIImage(named:"8.jpg")!,UIImage(named: "9.jpg")!, UIImage(named:"10.jpg")!]
        
//        imagesArray2 += [UIImage(named: "1.jpg")!, UIImage(named:"2.jpg")!,UIImage(named:"3.jpg")!, UIImage(named:"4.jpg")!,UIImage(named: "5.jpg")!, UIImage(named:"6.jpg")!,UIImage(named: "7.jpg")!, UIImage(named:"8.jpg")!,UIImage(named: "9.jpg")!, UIImage(named:"10.jpg")!]
//
       
        
        
         collectionView.reloadData()
    }

   
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        
          // cell.image.image = imagesArray[indexPath.row]
        //cell.image.image = imagesArray2[indexPath.row]
        
        let base = imagesArray
        let n = 10 //number of repetitions
        let r = (0..<(n*base.count)).map{base[$0%base.count]}
        print(r)
        cell.image.image = r[indexPath.row]
        
        
        
        
        
//        if(loc < imagesArray.count){
//
//       cell.image.image = imagesArray[loc]
//            loc += 1
//
//        }else {
//            cell.image.image = imagesArray2[loc]
//        }
        
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedMe))
//        cell.image.addGestureRecognizer(tap)
//        cell.image.isUserInteractionEnabled = true
//
        
        
        return cell
        
        
    }
    
      @objc func tappedMe()
    {
        
       print("image tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        let base = imagesArray
        let n = 10 //number of repetitions
        let r = (0..<(n*base.count)).map{base[$0%base.count]}
        
         cell.image.image = r[indexPath.row]
        
        
        
        

      //  let cell = collectionView.cellForItem(at: indexPath) as? CustomCollectionViewCell

        //cell2?.bigImage.image = imagesArray[indexPath.row]
        mainBigImage.image = cell.image.image
        print(indexPath.row)
       

    }
    

}

