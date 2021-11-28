//
//  ExhibiteDomainRepoInterface.swift
//  domain
//
//  Created by Paul Zamshin on 28.11.2021.
//

import Foundation

public protocol ExhibiteDomainRepoInterface {
    func getExhibites(handler: @escaping ([ExhibiteEntity]) -> ())
}
