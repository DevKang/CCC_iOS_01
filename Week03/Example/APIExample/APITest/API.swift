//
//  API.swift
//  APITest
//
//  Created by KANG HEE JONG on 2020/04/02.
//  Copyright © 2020 KANG HEE JONG. All rights reserved.
//

import Foundation
import Alamofire

// 더 알아볼 키워드 : Codable

class API {
    static let shared = API()
    
    func coffeeMenu(completionHandler: @escaping ([String]) -> Void) {
        // 시간이 오래 걸리는 작업
        // 작업이 완료
        let url = "https://json-mock-server.herokuapp.com/posts"
        // https://github.com/Alamofire/Alamofire
        
        AF.request(url)
            .responseJSON(completionHandler: { response in
                // Enummeration Associated Value
                switch response.result {
                case .success(let data):
                    if let d = data as? [[String: Any]] {
                        
                        // [[String: Any]] 타입에서 원하는 데이터를 추출하여 [String] 으로 매핑하는 과정
                        // Array 타입의 내장함수 map(), filter(), reduce() 확인
                        let result:[String] = d.map { element in
                            if let author = element["author"] as? String {
                                return author
                            } else {
                                return ""
                            }
                        }

//                        var result: [String] = []
//                        for element in d {
//                            if let author = element["author"] as? String {
//                                result.append(author)
//                            }
//                        }
                        
                        completionHandler(result)
                        
                    }
                    break
                case .failure:
//                    print(error)
                    break
                }
            })
    }
}
