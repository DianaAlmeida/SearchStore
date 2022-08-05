//
//  UIImage+Resize.swift
//  StoreSearch
//
//  Created by Diana Almeida on 02/08/2022.
//

import UIKit

extension UIImage {
    func resize(withBounds bounds: CGSize) -> UIImage {
        let horizontalRatio = bounds.width / size.width
        let verticalRation = bounds.height / size.height
        let ratio = min(horizontalRatio, verticalRation)
        let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
        draw(in: CGRect(origin: CGPoint.zero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}

