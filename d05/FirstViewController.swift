//
//  FirstViewController.swift
//  d05
//
//  Created by Anna BIBYK on 1/21/19.
//  Copyright © 2019 Anna BIBYK. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var placeList: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell") as! PlaceTableViewCell
        cell.placeLabel.text = Data.places[indexPath.row].0
        cell.placeLabel?.numberOfLines = 0
        placeList.rowHeight = UITableViewAutomaticDimension
        placeList.estimatedRowHeight = 44
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Data.current = indexPath.row
        self.tabBarController?.selectedIndex = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.placeList.delegate = self
//        self.placeList.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

