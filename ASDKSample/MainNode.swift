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
    var thirdNode: ASTextNode
    
    override init() {
        firstNode = ASDisplayNode()
        secondNode = ASDisplayNode()
        thirdNode = ASTextNode()
        
        super.init()
        
        thirdNode.attributedText = NSAttributedString(string: "monsunowicz@gmail.com", attributes: [NSFontAttributeName : UIFont.systemFontOfSize(14.0, weight: UIFontWeightMedium), NSForegroundColorAttributeName: UIColor.lightGrayColor()])
        
        addSubnode(firstNode)
        addSubnode(secondNode)
        addSubnode(thirdNode)
    }
    
    override func layoutSpecThatFits(constrainedSize: ASSizeRange) -> ASLayoutSpec {
        firstNode.preferredFrameSize = CGSize(width: 50.0, height: 50.0)
        secondNode.preferredFrameSize = CGSize(width: 50.0, height: 50.0)
        
        let textSpec = ASStackLayoutSpec(direction: .Horizontal, spacing: 0.0, justifyContent: .Center, alignItems: .Center, children: [firstNode, thirdNode])
        
        let insetsSpec = ASInsetLayoutSpec(insets: UIEdgeInsets(top: 0.0, left: 10.0, bottom: 10.0, right: 10.0), child: secondNode)
        
        let mainSpec = ASStackLayoutSpec(direction: .Vertical, spacing: 0.0, justifyContent: .Center, alignItems: .Stretch, children: [textSpec, insetsSpec])
        
        return mainSpec
    }
    
    override func didLoad() {
        super.didLoad()
        
        backgroundColor = .whiteColor()
        firstNode.backgroundColor = .grayColor()
        secondNode.backgroundColor = .lightGrayColor()
        thirdNode.backgroundColor = .darkGrayColor()
    }
}