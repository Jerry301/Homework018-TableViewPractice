//
//  TaichunDetailViewController.swift
//  Homework018
//
//  Created by Chun-Yi Lin on 2021/12/16.
//

import UIKit

class TaichunDetailViewController: UIViewController {
    
    let program : Program
    
    @IBOutlet weak var customImage: UIImageView!
    @IBOutlet weak var customName: UILabel!
    @IBOutlet weak var customIntro: UILabel!
    
    init?(coder: NSCoder, program: Program){
        self.program = program
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customImage.image = UIImage(named: program.actImage)
        customName.text = program.name
        customIntro.text = program.intro

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
