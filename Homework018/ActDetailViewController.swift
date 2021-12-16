//
//  ActDetailViewController.swift
//  Homework018
//
//  Created by Chun-Yi Lin on 2021/12/15.
//

import UIKit

class ActDetailViewController: UIViewController {
    
    let program : Program
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var detailIntroLabel: UILabel!
    
    init?(coder: NSCoder, program: Program){
        self.program = program
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = UIImage(named: program.actImage)
        detailIntroLabel.text = program.intro

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
