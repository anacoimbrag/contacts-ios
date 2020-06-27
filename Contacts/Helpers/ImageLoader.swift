//
//  ImageLoader.swift
//  Declarative UI
//
//  Created by Ana Coimbra on 27/06/20.
//  Copyright © 2020 Ana Coimbra. All rights reserved.
//

import Combine
import Foundation

class ImageLoader: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                DispatchQueue.main.async {
                    self.data = data
                }
            }
            session.resume()
        }
    }
}
