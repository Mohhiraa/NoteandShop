//
//  ViewController.swift
//  NoteandShopProject
//
//  Created by Saeed on 12/11/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    let searchController = UISearchController(searchResultsController: nil)
   
    
        let collectionView: UICollectionView = {
            let flowlayot = UICollectionViewFlowLayout()
    
            flowlayot.scrollDirection = .vertical
            flowlayot.sectionInset = .init(top: 0, left: 24, bottom: 0, right: 24)
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowlayot)
            return collectionView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
    
    func setupViews() {
        view.backgroundColor = UIColor(named: "Fon")
//        setupNavigationBarBackground()
        configureNavigation()
        backgroundImage()
        configureTableView()
                configureCollectionView()
    }
    
    func backgroundImage() {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "Ornament")
        
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.clipsToBounds = true
        
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
        
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
//    func setupNavigationBarBackground() {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        
//        if let backgroundImage = UIImage(named: "Ornament") {
//            let scaledImage = backgroundImage.resizableImage(withCapInsets: .zero, resizingMode: .stretch)
//            appearance.backgroundImage = scaledImage
//        }
//        
//        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//        
//        navigationController?.navigationBar.standardAppearance = appearance
//        navigationController?.navigationBar.scrollEdgeAppearance = appearance
//    }
    
    func configureNavigation() {
        navigationItem.title = "Hi there!"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        configureSearchController()
    }
    
    func configureTableView() {
//        tableView.backgroundColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
    }
    
        func configureCollectionView() {
            
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
            
            view.addSubview(collectionView)
    
            collectionView.snp.makeConstraints { make in
                make.top.equalTo(tableView.snp.bottom)
                make.leading.trailing.bottom.equalToSuperview()
                make.bottom.equalToSuperview()
            }
        }
    
}

