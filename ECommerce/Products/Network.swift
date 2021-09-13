//
//  Network.swift
//  ECommerce
//
//  Created by Katie McBratney on 9/6/21.
//

import Foundation

struct Network {
    
    var delegate: NetworkDelegate?
    
    func fetchProducts(urlString: String) {
            //1.Create a URL
            if let url = URL(string: urlString){
                //2. create url session
                let session = URLSession(configuration: .default)
                //give session a task
                let task = session.dataTask(with: url){(data, response, error) in
                    if(error != nil) {
                        self.delegate?.didFailWithError(error: error!)
                        return
                    }
                    if let safeData = data {
                        if let products = self.parseJSON(safeData) {
                            self.delegate?.didFetchProducts(self, products: products)
                        }
                    }
                }
                //4.start task
                task.resume()
            }
    }
    
    func parseJSON(_ productData: Data) -> [Product]?{
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode([Product].self, from: productData)
            return decodedData
        } catch {
            print(error)
            delegate?.didFailWithError(error: error)
            return nil
        }
    }

}

protocol NetworkDelegate {
    func didFetchProducts(_ network: Network, products: [Product])
    func didFailWithError(error: Error)
}

