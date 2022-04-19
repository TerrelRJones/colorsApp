//
//  colorsTableVC.swift
//  randomColorsApp_v2
//
//  Created by Terrel Jones on 4/18/22.
//

import UIKit

class ColorsTableVC: UIViewController {

    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toColorsDetailVC = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createRandomColors()
    }

    
    func createRandomColors() {
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    // How many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    // What to show in cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // IF --> JS
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell ) else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    // Gets info from row selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: Segues.toColorsDetailVC, sender: color)
        
        
        
    }
    
}
