//
//  ViewController.swift
//  forwardDataPassingUsingXIB
//
//  Created by Mac on 05/11/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource{
   
   
    
    
    
    @IBOutlet weak var studentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        
        // Do any additional setup after loading the view.
        let nibName = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(nibName, forCellReuseIdentifier: "StudentTableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        
        studentTableViewCell.studentFirstName.text = ""
        studentTableViewCell.studentMiddleName.text = ""
        studentTableViewCell.studentLastName.text = ""
        return studentTableViewCell ?? UITableViewCell()
        
        
    }
    func tableView(_tableview: UITableView,heightForRowAt indexpath:IndexPath)->CGFloat{
        return 200
    
}
    @IBAction func btnClick(_ sender: Any) {
    
    let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    self.navigationController?.pushViewController(secondVC, animated: true)
}
}
