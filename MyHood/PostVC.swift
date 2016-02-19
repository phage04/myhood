//
//  PostVC.swift
//  MyHood
//
//  Created by Lyle Christianne Jover on 19/02/2016.
//  Copyright © 2016 Lyle Christianne Jover. All rights reserved.
//

import UIKit

class PostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleFld: UITextField!
    @IBOutlet weak var descFld: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self

    }

    @IBAction func addPicBtnPressed(sender: UIButton) {
        
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func makePostBtnPressed(sender: AnyObject) {
        if let title = titleFld.text, let desc = descFld.text, let img = postImg.image {
            
            let imgPath = DataService.instance.saveImageAndCreatePath(img)
            
            let post = Post(imagePath: imgPath, title: title, description: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }

    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
}
