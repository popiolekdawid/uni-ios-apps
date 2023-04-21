//
//  ViewController.swift
//  Lab7IOS
//
//  Created by student on 19/04/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    struct dom{
        var nazwa: String
        var powierzchnia: Int
        var liczbaPokoi: Int
        var wielkoscDzialki: Int
        var liczbaPieter: Int
        //var obraz: UIImage
    }
    
    struct mieszkanie{
        var nazwa: String
        var powierzchnia: Int
        var liczbaPokoi: Int
        var czyDwaPoziomy: Bool
        //var obraz = UIImage(named: "dom1")
    }
    
    var domy: [dom] = [(dom(nazwa: "Dom Bartek", powierzchnia: 123, liczbaPokoi: 6, wielkoscDzialki: 3200, liczbaPieter: 2)), (dom(nazwa: "Dom Agaty", powierzchnia: 99, liczbaPokoi: 4, wielkoscDzialki: 1200, liczbaPieter: 1))]
    
    func numberOfSections(in: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return domy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = domy[indexPath.row].nazwa
        //cell.imageView?.image = domy[indexPath.row].obraz
        return cell
    }
    
    
    
//    func dequeueReusableCell(withIdentifier identifier: String,
//                             for indexPath: IndexPath) -> UITableViewCell{}
    
    @IBOutlet var MyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTableView.delegate = self
        MyTableView.dataSource = self
    }
    


}

