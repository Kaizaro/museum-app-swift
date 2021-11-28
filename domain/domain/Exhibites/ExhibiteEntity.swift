//
//  ExhibiteEntity.swift
//  domain
//
//  Created by Paul Zamshin on 28.11.2021.
//

import Foundation

public struct ExhibiteEntity: Identifiable {
    public let id: ObjectIdentifier?
    public let title: String?
    public let subtitle: String?
    public let description: String?
    
    public init(id: ObjectIdentifier?, title: String?, subtitle: String?, description: String?) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
    }
}
