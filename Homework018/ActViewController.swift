//
//  ActViewController.swift
//  Homework018
//
//  Created by Chun-Yi Lin on 2021/12/16.
//

import UIKit

class ActViewController: UIViewController {
    
    @IBOutlet weak var taichungTableView: UITableView!
    
    @IBSegueAction func customDetailsegue(_ coder: NSCoder) -> TaichunDetailViewController? {
        
        if let section = taichungTableView.indexPathForSelectedRow?.section, let row = taichungTableView.indexPathForSelectedRow?.row {
            return TaichunDetailViewController(coder: coder, program: acts[section].program[row])
        }
        return nil
    }
    
    
    var acts : [Act] {
        return  [
        Act(name: "TIFA", program: [
            Program(name: "改變視角的觀看", intro: "藝術作為人類美學凝鍊的結晶，無論是依託在畫作、雕塑、音符、戲劇或肢體裡，流經浩瀚文明的長河，它曾是宗教宣揚教義的載體，或為意識形態發聲；在藝術之中，我們窺看出文明的足跡，明白人類如何一步步行走至今。藝術作為美學的極致，不僅淨化了人類情感，更帶來清明的狂喜。", actImage: "Image-1"),
            Program(name: "科技藝術。仍是需要人性溫度", intro: "不論是從數位技術發展出來的作品，或是以科技做為藝術表現的工具，都可以看到從文本出發的情感連結與人性，而不是受制於科技", actImage: "Image-2"),
            Program(name: "保持新鮮 就是青春", intro: "不以「事情本應該就是這樣！」不斷挑戰自己的可能性、以新鮮的態度面對常態、翻新自己的觀點，就是「年輕」！", actImage: "Image-3"),
            Program(name: "關鍵不是科技　而是創造力", intro: "科技如同魔法般顛覆了人類對速度、距離、虛實等物理性的感知，也加速了它在劇場裡的影響", actImage: "Image-4"),
            Program(name: "荷蘭舞蹈劇場", intro: "荷蘭舞蹈劇場帶來國際最受矚目編舞家三支風格迥異的舞作：向搖滾桂冠詩人、龐克教母佩蒂．史密斯致敬之作《激膚》、脈動強烈層次豐富的《揮別》、及描繪時光消逝與追尋的《停格》，臺灣獨家首演！", actImage: "Image-5"),
            Program(name: "發現更多的可能", intro: "艾可曾說過：「沒讀過的書永遠要比已經讀過的書重要。因為這些書的存在，恰好能夠提醒我，我所知道的範圍是如何的稀少。」", actImage: "Image-6"),
        ]),
        Act(name: "夏日放／FUN時光", program: [
            Program(name: "大手牽小手的作品", intro: "今年的兩件新舞作《愛麗絲》、《阿忠與我》，前者從兔子洞探訪奇幻未知，後者透過身體的差異性探問人權；不同的肢體美學，卻都撼動我們對舞蹈內涵的感性與知性。", actImage: "Image-A"),
            Program(name: "難得放鬆心情", intro: "經過幾個月COVID-19疫情的陰霾，喜愛群聚的人們被繭居束縛，難得自在的動物們大膽上街，自然界一一「反撲」：水清、雲開、山朗！LIVE表演藝術的競爭者──「線上觀演」竟成了疫情期間唯一能與藝文愛好者「保持關係」的管道，卻更令大家想念起「共享當下的集體經驗」。", actImage: "Image-B")                           ])]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


extension ActViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return acts.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return acts[section].program.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return acts[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActTableViewCell", for: indexPath)
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ActTableViewCell.self)", for: indexPath) as? ActTableViewCell
        else{return UITableViewCell()}
        
        cell.customNameLabel.text = acts[indexPath.section].program[indexPath.row].name
        cell.customIntroLabel.text = acts[indexPath.section].program[indexPath.row].intro
        cell.customActImageView.image = UIImage(named: acts[indexPath.section].program[indexPath.row].actImage)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
