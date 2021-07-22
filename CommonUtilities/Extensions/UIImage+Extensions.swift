//
//  UIImage+Extensions.swift
//  CommonUtilities
//
//  Created by João Vitor Duarte Mariucio on 22/07/21.
//

import UIKit
import Nuke

extension UIImageView {
    
    func load(with url: String,
              placeholder: UIImage? = nil,
              failureImage: UIImage? = nil,
              transition: ImageLoadingOptions.Transition? = nil,
              contentMode: ImageLoadingOptions.ContentModes? = nil,
              tintColors: ImageLoadingOptions.TintColors? = nil) {
        
        let options = ImageLoadingOptions(
            placeholder: placeholder,
            transition: transition,
            failureImage: failureImage,
            failureImageTransition: transition,
            contentModes: contentMode,
            tintColors: tintColors)
        
        Nuke.loadImage(with: url, options: options, into: self)
    }
}
