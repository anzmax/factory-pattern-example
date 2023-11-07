import Foundation
import UIKit

protocol FactoryProtocol {
    var height: Int { get }
    var view: UIView { get }
    var parentView: UIView { get }
    
    func configure()
    func position()
    func display()
}
