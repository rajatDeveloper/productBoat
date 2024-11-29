//
//  NetworkManager.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 03/08/24.
//


import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    //our all endpoints and baseurl required
    
    private let baseUrl  = "https://parmashopktl.pythonanywhere.com/api/"
    private let getProductUrl =  "https://parmashopktl.pythonanywhere.com/api/products/"
    
    
    private init(){
        //initial call
        
    }
    
    func getProductData() async  throws-> [ProductModel]{
        
        //try to get url
        
        guard let url = URL(string: getProductUrl) else {
            throw ProductError.invalidUrl
        }
        
        let (data , _ ) = try await URLSession.shared.data(from: url)
        
            do{
                let decoder = JSONDecoder()
                let decoderResponse = try decoder.decode([ProductModel].self, from: data )
                return decoderResponse
              
            }catch{
                throw ProductError.invalidData
            }
            
        }
    }
    
    
//    func getProductData(completed: @escaping(Result<[ProductModel] ,ProductError>)-> Void ){
//        
//        //try to get url
//        
//        guard let url = URL(string: getProductUrl) else {
//            completed(.failure(ProductError.invalidUrl))
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with : URLRequest(url: url ) ) { data , response , error in
//            
//            if let _ = error   {
//                completed(.failure(.unableTpComplete))
//                return
//            }
//            
//            
//            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//                completed(.failure(.invalidresponse))
//                return
//            }
//            
//            
//            guard let data = data else {
//                completed(.failure(.invalidData))
//                return
//                
//            }
//            
//            do{
//                let decoder = JSONDecoder()
//                let decoderResponse = try decoder.decode([ProductModel].self, from: data )
//                completed(.success(decoderResponse))
//                return
//            }catch{
//                completed(.failure(.invalidData))
//                return
//            }
//            
//        }
//        
//        task.resume()
//        
//    }
//    

    

//    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void ) {
//     
//        let cacheKey = NSString(string: urlString)
//        
//        if let image = cache.object(forKey: cacheKey) {
//            completed(image)
//            return
//        }
//        
//        guard let url = URL(string: urlString) else {
//            completed(nil)
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
//            
//            guard let data, let image = UIImage(data: data) else {
//                completed(nil)
//                return
//            }
//            
//            self.cache.setObject(image, forKey: cacheKey)
//            completed(image)
//        }
//        
//        task.resume()
//    }
    
    
    
    
