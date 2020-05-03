//
//  OrgSearchViewController.swift
//  iAgent
//
//  Created by user167032 on 4/27/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse

class OrgSearchViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {

    var searchController: UISearchController!
    
    var originalDataSource: [String] = []
    var currentDataSource: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchContainerView: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let query = PFUser.query()
        query!.whereKey("username", notEqualTo: "any")
        let orgs = try? query!.findObjects()
        
        
        //TODO: - Connect search to org name list
        
        /*for index in 0...count {
          originalDataSource[index] = orgs![index]["username"] as! String
        }*/
        
        
        
        //currentDataSource = originalDataSource
        
        print(orgs![1])
        
        addProductToDataSource(productCount: 12, product: orgs![0]["username"] as! String)
        
        currentDataSource = originalDataSource
        
        tableView.delegate = self
        tableView.dataSource = self
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchContainerView.addSubview(searchController.searchBar)
        searchController.searchBar.delegate = self
        
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    // append to tableview
    func addProductToDataSource(productCount: Int, product: String) {
        for index in 1...productCount {
            originalDataSource.append("\(product) #\(index)")
        }
    }
    
    func restoreCurrentDataSource() {
        currentDataSource = originalDataSource
        tableView.reloadData()
    }

    //get filtered contetn from search
    func filterCurrentDataSource(searchTerm: String) {
        if (searchTerm.count > 0) {
            currentDataSource = originalDataSource
            
            let fiteredResults = (currentDataSource.filter { $0.replacingOccurrences(of: " ", with: "").lowercased().contains(searchTerm.replacingOccurrences(of: " ", with: "")) })
            
            currentDataSource = fiteredResults
            tableView.reloadData()
        }
    }
    
    //table view setup
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "Selection", message: "Selected: \(currentDataSource[indexPath.row])", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)

        searchController.isActive = false

        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  currentDataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrgSearchCell", for: indexPath) as! OrgSearchCell
        cell.textLabel?.text = currentDataSource[indexPath.row]
        return cell
    }
    
    //update search results
    func updateSearchResults(for searchController: UISearchController) {
        
        if let searchText = searchController.searchBar.text {
            filterCurrentDataSource(searchTerm: searchText)
        }
    }
    
    //search bar button actions
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchController.isActive = false
        
        if let searchText = searchBar.text {
            filterCurrentDataSource(searchTerm: searchText)
        }
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchController.isActive = false
        
        if let searchText = searchBar.text, !searchText.isEmpty {
            restoreCurrentDataSource()
        }
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
