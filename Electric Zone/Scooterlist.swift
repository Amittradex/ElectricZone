//
//  Scooterlist.swift
//  Electric Zone
//
//  Created by Amit Patel on 28/10/23.
//

import SwiftUI

struct ScooterEV: Identifiable{
    
    let id: Int
    let imgName: String
    let title: String
    let subtitle: String
    
    static let scooter: [ScooterEV] = [
        .init(id: 0, imgName: "scooter00", title: "Bajaj Chetak", subtitle: "Range 90Km"),
        .init(id: 1, imgName: "scooter01", title: "OLA S1 Pro", subtitle: "Range 170Km"),
        .init(id: 2, imgName: "scooter02", title: "Ather 450X Gen 3", subtitle: "Range 111Km"),
        .init(id: 3, imgName: "scooter03", title: "TVS iQube", subtitle: "Range 100Km"),
        .init(id: 4, imgName: "scooter04", title: "Vida V1 Pro", subtitle: "Range 110Km"),
        .init(id: 5, imgName: "scooter05", title: "Simple Energy One", subtitle: "Range 203Km"),
    
    
    
    ]
    
}

struct Scooterlist: View {
    let arrScooter = ScooterEV.scooter
    var body: some View {
        List{
            
            ForEach(arrScooter) { scooter in
                
                VStack{
                    
                    HStack{
                        Image(scooter.imgName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 100)
                            .cornerRadius(10)
                        
                        
                        VStack(alignment: .leading){
                            
                            Text(scooter.title)
                                .font(.headline)
                                .padding(.bottom, 1.0)
                            
                            Text(scooter.subtitle)
                                .font(.subheadline)
                        }
                        .padding(.leading, 10.0)
                        
                    }
                    
                    .background(Rectangle().foregroundColor(.white))
                    .cornerRadius(10.0)
                    
                }
                
            }
            .listRowSeparator(.hidden)
            
            
        }
    }
}

struct Scooterlist_Previews: PreviewProvider {
    static var previews: some View {
        Scooterlist()
    }
}
