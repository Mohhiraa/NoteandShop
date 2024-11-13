//  HomeCollectionViewCell.swift
//  Note'nShop
//
//  Created by Saeed on 12/11/24.
//

import UIKit
import SnapKit

class HomeCollectionViewCell: UICollectionViewCell {
    let itemView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(itemView)
        configureItem()
        makeConstraints()
    }
    
    func configureItem() {
        itemView.backgroundColor = .blue
        itemView.layer.cornerRadius = 2
        itemView.clipsToBounds = true
    }
    
    func makeConstraints() {
        itemView.snp.makeConstraints { make in
            make.width.height.equalTo(50)
        }
    }
}
