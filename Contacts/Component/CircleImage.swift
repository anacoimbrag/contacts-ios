//
//  CircleImage.swift
//  Declarative UI
//
//  Created by Ana Coimbra on 25/06/20.
//  Copyright © 2020 Ana Coimbra. All rights reserved.
//

import Combine
import SwiftUI

struct CircleImage: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()
    
    init(url: String) {
        imageLoader = ImageLoader(urlString: url)
    }
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .clipShape(Circle())
            .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
                
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(url: "https://i.pravatar.cc/300")
    }
}
