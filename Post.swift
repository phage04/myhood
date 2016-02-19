//
//  Post.swift
//  MyHood
//
//  Created by Lyle Christianne Jover on 19/02/2016.
//  Copyright © 2016 Lyle Christianne Jover. All rights reserved.
//

import Foundation

class Post {
    
    private var _imagePath: String
    private var _title: String
    private var _postDesc: String
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String) {
        
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
        
    }
}
