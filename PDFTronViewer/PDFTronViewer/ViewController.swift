import UIKit

import PDFNet
import Tools

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PTPDFNet.initialize("")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ...
        
        // Create PTDocumentViewController.
        let documentController = PTDocumentViewController()
        
        // Load Sample.pdf file from app bundle.
        let fileURL = Bundle.main.url(forResource: "Sample", withExtension: "pdf")
        do {
            try documentController.openDocument(with: fileURL!)
        } catch {
            print("Failed to open document: \(error)")
        }
        
        // Show PTDocumentViewController in UINavigationController.
        let navigationController = UINavigationController(rootViewController: documentController)
        self.present(navigationController, animated: true, completion: nil)
    }

}

