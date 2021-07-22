//
//  UIImage+Extensions.swift
//  CommonUtilities
//
//  Created by João Vitor Duarte Mariucio on 22/07/21.
//

import UIKit
import Nuke

public extension UIImageView {
    
    func load(with urlString: String,
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
        
        guard let url = URL(string: urlString) else { return }
        
        Nuke.loadImage(with: url, options: options, into: self)
    }
}
