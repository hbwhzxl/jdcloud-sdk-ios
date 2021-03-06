/* Copyright 2018 JDCLOUD.COM

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http:#www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  pagination
@objc(Pagination)
public class Pagination:NSObject,Codable{
    /// currPageNo
    var currPageNo:Int?
    /// numberPages
    var numberPages:Int?
    /// numberRecords
    var numberRecords:Int?
    /// pageSize
    var pageSize:Int?
    /// startIndex
    var startIndex:Int?



    public override init(){
            super.init()
    }

    enum PaginationCodingKeys: String, CodingKey {
        case currPageNo
        case numberPages
        case numberRecords
        case pageSize
        case startIndex
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PaginationCodingKeys.self)
        self.currPageNo = try decoderContainer.decode(Int?.self, forKey: .currPageNo)
        self.numberPages = try decoderContainer.decode(Int?.self, forKey: .numberPages)
        self.numberRecords = try decoderContainer.decode(Int?.self, forKey: .numberRecords)
        self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        self.startIndex = try decoderContainer.decode(Int?.self, forKey: .startIndex)
    }
}
public extension Pagination{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PaginationCodingKeys.self)
         try encoderContainer.encode(currPageNo, forKey: .currPageNo)
         try encoderContainer.encode(numberPages, forKey: .numberPages)
         try encoderContainer.encode(numberRecords, forKey: .numberRecords)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(startIndex, forKey: .startIndex)
    }
}
