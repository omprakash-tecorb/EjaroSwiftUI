//
//  FirnitureUi.swift
//  EjaroSwiftUI
//
//  Created by Apple on 15/10/22.
//

import SwiftUI

struct FirnitureUi: View {
    @State var textfield:String = ""
    var body: some View {
        NavigationView
        {
            ZStack{
                Color.red
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView
                // List
                {
                    //                    ZStack{
                    //                        Color.red
                    //                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment: .leading){
                        headerPart()
                        
                        textPart()
                            .padding(.horizontal)
                        searchbar(text:$textfield)
                        
                        firnitureTypeList()
                            .padding()
                        popular()
                        
                        Best()
                        
                    }
                }
                //  .cornerRadius(10)
            }
            // .edgesIgnoringSafeArea(.all)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}



struct FirnitureUi_Previews: PreviewProvider {
    static var previews: some View {
        FirnitureUi()
    }
}

struct headerPart:View{
    var body: some View
    {
        HStack{
            Button(action: {})
            {
                Image("menu")
                    .padding()
                    .background(Color.white)
                    .scaledToFit()
                    .cornerRadius(10.0)
            }
            Spacer()
            
            Button(action: {})
            {
                if #available(iOS 16.0, *) {
                    Image("Profile")
                        .padding()
                    
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                        .backgroundStyle(Color.white)
                        .cornerRadius(10)
                } else {
                    // Fallback on earlier versions
                }
            }
            
        }
        .padding(.horizontal)
    }
}

struct textPart:View{
    var body: some View
    {
        Text("")
        Text(" Search the \n Best ")
            .foregroundColor(Color.white)
        + Text("Home Decor !")
            .bold()
            .foregroundColor(Color.white)
    }
}

struct searchbar:View{
    // @State private var text = ""
    @Binding var text :String
    var body: some View
    {
        HStack{
            HStack{
                Image("Search")
                    .scaledToFit()
                    .padding(.leading,2)
                TextField("Search the Furniture",text: $text)
            }
            .padding(.all,15)
            .padding(.trailing,8)
            .background(Color.white)
            .cornerRadius(10)
            
            Button(action: {})
            {
                Image("scan2")
                    .frame(width: 25,height: 25)
                    .padding(.all,13)
                    .scaledToFit()
                    .background(Color.gray)
            }
            .cornerRadius(10.0)
            
            
        }
        .padding(.horizontal)
    }
}

struct firnitureTypeList:View
{
    @State private var isselected: Int = 0
    var listArr = ["All","Chair","Table","Sofa","Bed","Diwan"]
    var body: some View
    {
        ScrollView(.horizontal,showsIndicators: false)
        {
            HStack( spacing: 25){
                ForEach(0..<listArr.count){list in
                    if list == 0
                    {
                        NavigationLink(destination: AllTypeView())
                        {
                            Text(listArr[list])
                                .foregroundColor(Color.white)
                        }
                    }
                    else if list == 1
                    { NavigationLink(destination: ChairView())
                        {
                            Text(listArr[list])
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    else if list == 2
                    {
                        NavigationLink(destination: TableView())
                        {
                            Text(listArr[list])
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    else if list == 3
                    {
                        NavigationLink(destination: SofaView())
                        {
                            Text(listArr[list])
                                .foregroundColor(Color.black)
                        }
                    }
                    else if list == 4
                    {
                        NavigationLink(destination: BedView())
                        {
                            Text(listArr[list])
                                .foregroundColor(Color.black)
                        }
                    }
                    else if list == 5
                    {
                        NavigationLink(destination: DiwanView())
                        {
                            Text(listArr[list])
                                .foregroundColor(Color.black)
                        }
                    }
                    
                    else
                    {
                        Text(listArr[list])
                    }
                    
                    
                    //     Button(action: {isselected = list})
                    //                    {
                    //                        if isselected == 0  {
                    //                                NavigationLink(destination: AllTypeView())
                    //                                {
                    //                                    Text("\(listArr[list])")
                    //                                .foregroundColor(Color.white)
                    //                                }
                    //                            }
                    //                            else
                    //                            {
                    //                                Text("\(listArr[list])")
                    //                            .foregroundColor(Color.blue)
                    //                            }
                    //
                    ////                            selectedTextColorChange(isselect: isselected == list, arraylist: listArr[list])
                    ////                                .fontWeight(.bold)
                    ////                                .padding(.horizontal)
                    ////                                .foregroundColor(Color.white)
                    //
                    //                    }
                    
                    
                }
                
            }
            
        }
    }
}

struct selectedTextColorChange:View{
    
    let isselect:Bool
    let arraylist:String
    var body: some View
    {
        VStack{
            Text("\(arraylist)")
                .foregroundColor(isselect ? Color.blue : Color.white)
            Text("")
                .frame(width: 20,height: 2)
                .background(isselect ? Color.blue : Color.white)
        }
        
    }
}
struct popular:View
{

    var imageArr = ["bed6","di1","di4","sofa2","tab6","chair4"]
    var body: some View
    {
        VStack(alignment: .leading){
            Text("Popular")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top)
            ScrollView(.horizontal,showsIndicators: false)
            {
                HStack{
                    ForEach(0..<imageArr.count){ index in
                        NavigationLink(destination: PopularDescriptionView(indx: "\(index)"))
                        {
                            showprice(Index: index)
                        }
                    }
                }
                
            }
            
            
        }
        .padding(.horizontal)
        
    }
}

struct showprice:View
{ var imageArr = ["bed6","di1","di4","sofa2","tab6","chair4"]
    var priceArr = ["10","20","30","40","50","60","70","80","90"]
   
    let Index:Int
    var body: some View{
        VStack{
            ForEach(0..<priceArr.count){ index in
                if Index == index
                {
                    Image(imageArr[index])
                        .resizable()
                    Text("$\(priceArr[index])")
                
                }
            }
        }
        .frame(width: 200,height: 200)
        .background(Color.white)
        .cornerRadius(10.0)
        
    }
}

struct Best:View{
    var imageArr = ["chair_1","chair_3","chair_4","chair_2","chair_1","chair_3"]
    var body: some View
    {
        VStack(alignment: .leading){
            if #available(iOS 16.0, *) {
                Text("Best Of Collection")
                    .padding(.top)
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
            } else {
                // Fallback on earlier versions
            }
            ScrollView(.horizontal)
            {
                HStack(){
                    ForEach(0..<imageArr.count){index in
                        NavigationLink(destination: DiscriptionView(receiveImage: (imageArr[index])))
                        {
                            Image("\(imageArr[index])")
                                .resizable()
                                .frame(width: 200,height: 200)
                                .cornerRadius(10.0)
                        }
                    }
                }
                
            }
            
        }
        .padding(.horizontal)
        
    }
}

