//
//  OrderViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

class OrderViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    private let backButton = UIButton()
    private let titleMessage = UILabel()
    private let items = ["a", "b", "c", "d", "e"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intialize()
    }
   
    private func intialize() {
        view.backgroundColor = .white
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        setTitleLabel()
        setBackButton()
        setCollection()
    }
        
        private func setCollection() {
            let someLayout = UICollectionViewFlowLayout()
            collectionView = UICollectionView(frame: .zero, collectionViewLayout: someLayout)
            view.addSubview(collectionView)
            
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.delegate = self
            collectionView.dataSource = self
            
            collectionView.register(OrderCell.self, forCellWithReuseIdentifier: OrderCell.cell)
            collectionView.register(SalesCell.self, forCellWithReuseIdentifier: SalesCell.cell)
            collectionView.register(ProductCell.self, forCellWithReuseIdentifier: ProductCell.cell)
            collectionView.register(PromoCell.self, forCellWithReuseIdentifier: PromoCell.cell)
            collectionView.register(PaingCell.self, forCellWithReuseIdentifier: PaingCell.cell)
            
            NSLayoutConstraint.activate([
                collectionView.topAnchor.constraint(equalTo: titleMessage.bottomAnchor, constant: 10),
                collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
        }

        private func setBackButton() {
            view.addSubview(backButton)
            backButton.setTitle("Закрыть", for: .normal)
            backButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
            backButton.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
            backButton.layer.cornerRadius = 10
            backButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
                backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                backButton.widthAnchor.constraint(equalToConstant: 80),
                backButton.heightAnchor.constraint(equalToConstant: 20),
            ])
        }

        private func setTitleLabel() {
            view.addSubview(titleMessage)
            titleMessage.text = "Cообщения"
            titleMessage.font = .init(name: "Ubuntu-Medium", size: 16)
            titleMessage.textColor = .black
            titleMessage.textAlignment = .center
            titleMessage.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                titleMessage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
                titleMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
        }

    @objc func back() {
        dismiss(animated: true)
    }
}

extension OrderViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch items[indexPath.row] {
        case "a":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OrderCell.cell, for: indexPath) as! OrderCell
            return cell
        case "b":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SalesCell.cell, for: indexPath) as! SalesCell
            return cell
        case "c":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.cell, for: indexPath) as! ProductCell
            return cell
        case "d":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PromoCell.cell, for: indexPath) as! PromoCell
            return cell
        case "e":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PaingCell.cell, for: indexPath) as! PaingCell
            return cell
        default:
            print("Wrong cell")
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        switch items[indexPath.row] {
        case "a":
            return CGSize(width: self.view.frame.width, height: 200)
        case "b":
            return CGSize(width: self.view.frame.width, height: 280)
        case "c":
            return CGSize(width: self.view.frame.width, height: 450)
        case "d":
            return CGSize(width: self.view.frame.width, height: 220)
        case "e":
            return CGSize(width: self.view.frame.width, height: 250)
        default:
            print("Wrong size for cell")
            return CGSize()
        }
    }
}
