//
//  ExhibiteInteractor.swift
//  domain
//
//  Created by Paul Zamshin on 28.11.2021.
//

import Foundation

public protocol ExhibiteInteractorInterface {
    func getExhibites(handler: @escaping ([ExhibiteEntity]) -> ())
}

public class ExhibiteInteractor: ExhibiteInteractorInterface {
    let exhibiteDomainRepo: ExhibiteDomainRepoInterface
    
    public init (exhibiteDomainRepo: ExhibiteDomainRepoInterface) {
        self.exhibiteDomainRepo = exhibiteDomainRepo
    }
    
    public func getExhibites(handler: @escaping ([ExhibiteEntity]) -> ()) {
        exhibiteDomainRepo.getExhibites {
            (ExhibiteDomainModelArray) in
                        handler(ExhibiteDomainModelArray)
        }
    }
}
