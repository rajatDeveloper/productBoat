//
//  ProductModel.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 03/08/24.
//

import Foundation


struct ProductModel : Decodable  , Identifiable{
//    "id": 1,
//            "productName": "Complan Nutrition and Health Drink | 100% Milk Pro",
//            "imageData": "https://parmashopktl.pythonanywhere.com/media/product_image/nut1.png",
//            "shortDes": "Complan Nutrition and Health Drink Royale Chocolate is a scientifically designed nutrition and health drink .",
//            "longDes": "Complan Nutrition and Health Drink Royale Chocolate is a scientifically designed nutrition and health drink with a clini",
//            "mainPrice": 400,
//            "afterDiscountPrice": 300,
//            "category": "Nutrition",
//            "isSale": true,
//            "stock": 1
    
    let id : Int
    let productName : String
    let imageData : String
    let shortDes : String
    let longDes : String
    let mainPrice  : Int
    let afterDiscountPrice : Int
    let category : String
    let isSale : Bool
    let stock : Int
    
    
}

struct MockData {
    static let productModel = ProductModel(
        id: 0,
        productName: "Test 1",
        imageData: "https://parmashopktl.pythonanywhere.com/media/product_image/nut1.png",
        shortDes: "short des - 1 2 3 4 5 test", longDes: "hj jh hbn bnb mnbnbnmbnbn bn bnbm nmb nbmnbm b bnmb nbmnbnbmb nbnmb nb mb nb n",
        mainPrice: 700,
        afterDiscountPrice: 300,
        category: "test",
        isSale: true,
        stock: 6 )
    
    static let lisData = [productModel , productModel , productModel , productModel]
    
    static let orderData = [
        
       ProductModel(
            id: 1,
            productName: "Test 1",
            imageData: "https://parmashopktl.pythonanywhere.com/media/product_image/nut1.png",
            shortDes: "short des - 1 2 3 4 5 test", longDes: "hj jh hbn bnb mnbnbnmbnbn bn bnbm nmb nbmnbm b bnmb nbmnbnbmb nbnmb nb mb nb n",
            mainPrice: 700,
            afterDiscountPrice: 300,
            category: "test",
            isSale: true,
            stock: 6 ) ,
       ProductModel(
            id: 4,
            productName: "Test 2",
            imageData: "https://parmashopktl.pythonanywhere.com/media/product_image/nut1.png",
            shortDes: "short des - 1 2 3 4 5 test", longDes: "hj jh hbn bnb mnbnbnmbnbn bn bnbm nmb nbmnbm b bnmb nbmnbnbmb nbnmb nb mb nb n",
            mainPrice: 700,
            afterDiscountPrice: 300,
            category: "test",
            isSale: true,
            stock: 6 ) ,
       ProductModel(
            id: 3,
            productName: "Test 3",
            imageData: "https://parmashopktl.pythonanywhere.com/media/product_image/nut1.png",
            shortDes: "short des - 1 2 3 4 5 test", longDes: "hj jh hbn bnb mnbnbnmbnbn bn bnbm nmb nbmnbm b bnmb nbmnbnbmb nbnmb nb mb nb n",
            mainPrice: 700,
            afterDiscountPrice: 300,
            category: "test",
            isSale: true,
            stock: 6 ) ,
       
    ]
}
