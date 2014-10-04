//
//  ColorTableViewCell.swift
//  CodeOnlyTableView
//
//  Created by Madison DeHart on 10/4/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
    
    let colorView = UIView(frame: CGRectZero)
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpSubviews()
    }
    
    func setUpSubviews() {
        colorView.setTranslatesAutoresizingMaskIntoConstraints(false)
        contentView.addSubview(colorView)
        
        let colorViewTopConstraint = NSLayoutConstraint(item: colorView, attribute: .Top, relatedBy: .Equal, toItem: contentView, attribute: .Top, multiplier: 1.0, constant: 5.0)
        
        let colorViewRightConstraint = NSLayoutConstraint(item: colorView, attribute: .Right, relatedBy: .Equal, toItem: contentView, attribute: .Right, multiplier: 1.0, constant: -15.0)
        
        let colorViewBottomConstraint = NSLayoutConstraint(item: colorView, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1.0, constant: -5.0)
        
        let colorViewLeftConstraint = NSLayoutConstraint(item: colorView, attribute: .Left, relatedBy: .Equal, toItem: contentView, attribute: .Left, multiplier: 1.0, constant: 15.0)
        
        // put all constraints into an array
        let colorViewConstraints = [colorViewTopConstraint, colorViewRightConstraint, colorViewBottomConstraint, colorViewLeftConstraint]
        
        // add constraints to content view
        contentView.addConstraints(colorViewConstraints)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //configure the view for the selected state
    }
}
