//
//  MovieTableHeaderView.swift
//  MovieApp
//
//  Created by Yunus Emre Berdibek on 28.02.2024.
//

import UIKit

final class MovieTableHeaderView: UICollectionViewCell {
    static let identifier: String = "MovieTableHeaderView"

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(resource: .defaultCell)
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        preparePhotoCollectionViewCell()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError()
    }

    private func preparePhotoCollectionViewCell() {
        addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
            imageView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0),
            trailingAnchor.constraint(equalToSystemSpacingAfter: imageView.trailingAnchor, multiplier: 0),
            imageView.bottomAnchor.constraint(equalToSystemSpacingBelow: bottomAnchor, multiplier: 0)
        ])
    }
}