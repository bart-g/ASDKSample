//
//  MainNode.swift
//  ASDKSample
//
//  Created by Bartosz Górka on 23/06/16.
//  Copyright © 2016 test. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class MainNode: ASDisplayNode {
    
    var firstNode: ASDisplayNode
    var secondNode: ASDisplayNode
    
    override init() {
        firstNode = ASDisplayNode()
        secondNode = ASDisplayNode()
        
        super.init()
        
        addSubnode(firstNode)
        addSubnode(secondNode)
    }
    
    override func layoutSpecThatFits(constrainedSize: ASSizeRange) -> ASLayoutSpec {
        firstNode.preferredFrameSize = CGSize(width: 50.0, height: 50.0)
        secondNode.preferredFrameSize = CGSize(width: 50.0, height: 50.0)
        
        let mainSpec = ASStackLayoutSpec(direction: .Horizontal, spacing: 0.0, justifyContent: .Center, alignItems: .Center, children: [firstNode, secondNode])
        
        return mainSpec
    }
    
    override func didLoad() {
        super.didLoad()
        
        backgroundColor = .whiteColor()
        firstNode.backgroundColor = .grayColor()
        secondNode.backgroundColor = .lightGrayColor()
    }
}