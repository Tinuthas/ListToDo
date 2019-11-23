//
//  ToDoItemView.swift
//  ListToDo
//
//  Created by Marcus Vinicius Galdino Medeiros on 23/11/19.
//  Copyright © 2019 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import SwiftUI

struct ToDoItemView: View {
   
    var title:String = ""
    var createdAt:String = ""
    
    var body: some View{
        HStack{
            HStack{
                VStack(alignment: .leading){
                    Text(title).font(.headline)
                    Text(createdAt).font(.caption)
                }
            }
        }
    }
}

struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(title: "View Preview", createdAt: "11/23/2019")
    }
}
