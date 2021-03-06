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

///  originAddrItem
@objc(OriginAddrItem)
public class OriginAddrItem:NSObject,Codable{
    /// 回源ip
    var ip:String?
    /// 权重
    var weight:Int?
    /// 是否为京东云内公网ip
    var inJdCloud:Bool?



    public override init(){
            super.init()
    }

    enum OriginAddrItemCodingKeys: String, CodingKey {
        case ip
        case weight
        case inJdCloud
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OriginAddrItemCodingKeys.self)
        self.ip = try decoderContainer.decode(String?.self, forKey: .ip)
        self.weight = try decoderContainer.decode(Int?.self, forKey: .weight)
        self.inJdCloud = try decoderContainer.decode(Bool?.self, forKey: .inJdCloud)
    }
}
public extension OriginAddrItem{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OriginAddrItemCodingKeys.self)
         try encoderContainer.encode(ip, forKey: .ip)
         try encoderContainer.encode(weight, forKey: .weight)
         try encoderContainer.encode(inJdCloud, forKey: .inJdCloud)
    }
}
