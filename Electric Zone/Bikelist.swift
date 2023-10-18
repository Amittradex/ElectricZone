//
//  Bikelist.swift
//  Electric Zone
//
//  Created by Amit Patel on 28/10/23.
//

import SwiftUI

struct BikeEV: Identifiable{
    
    let id: Int
    let imgName: String
    let title: String
    let subtitle: String
    
    static let bike: [BikeEV] = [
        .init(id: 0, imgName: "bike00", title: "Revolt RV 400", subtitle: "Range 150Km"),
        .init(id: 1, imgName: "bike01", title: "Tork Kratos R", subtitle: "Range 180Km"),
        .init(id: 2, imgName: "bike02", title: "Odysse Evoqis", subtitle: "Range 140Km"),
        .init(id: 3, imgName: "bike03", title: "PURE EV EcoDryft", subtitle: "Range 130Km"),
        .init(id: 4, imgName: "bike04", title: "Hop Electric OXO", subtitle: "Range 140Km"),
        .init(id: 5, imgName: "bike05", title: "Joy e-bike Monster", subtitle: "Range 75Km"),
    
    
    
    ]
    
}

struct Bikelist: View {
    let arrBike = BikeEV.bike
    
    var body: some View {
        List{
            
            ForEach(arrBike) { bike in
                
                VStack{
                    
                    HStack{
                        Image(bike.imgName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 100)
                            .cornerRadius(10)
                        
                        
                        VStack(alignment: .leading){
                            
                            Text(bike.title)
                                .font(.headline)
                                .padding(.bottom, 1.0)
                            
                            Text(bike.subtitle)
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

struct Bikelist_Previews: PreviewProvider {
    static var previews: some View {
        Bikelist()
    }
}
