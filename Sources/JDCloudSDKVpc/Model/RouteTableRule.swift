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

///  routeTableRule
@objc(RouteTableRule)
public class RouteTableRule:NSObject,Codable{
    /// 路由表规则ID
    var ruleId:String?
    /// 规则匹配优先级，取值范围[1,255]，默认为100。当路由规则子网掩码不同时，路由最长匹配优先；当路由规则子网掩码相同时, 按照优先级匹配转发, 优先级数字越小优先级越高，路由规则子网掩码相同、优先级相同、下一跳不同时，形成等价路由，不同下一跳负载均担。
    var priority:Double?
    /// 下一跳类型, 取值范围:local:本地, instance:云主机, internet:公网, vpc_peering:vpc对等连接, bgw:边界网关
    var nextHopType:String?
    /// 下一跳id
    var nextHopId:String?
    /// 匹配地址前缀, internet类型路由跟其他类型的路由，addressPrefix不允许重复
    var addressPrefix:String?



    public override init(){
            super.init()
    }

    enum RouteTableRuleCodingKeys: String, CodingKey {
        case ruleId
        case priority
        case nextHopType
        case nextHopId
        case addressPrefix
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RouteTableRuleCodingKeys.self)
        self.ruleId = try decoderContainer.decode(String?.self, forKey: .ruleId)
        self.priority = try decoderContainer.decode(Double?.self, forKey: .priority)
        self.nextHopType = try decoderContainer.decode(String?.self, forKey: .nextHopType)
        self.nextHopId = try decoderContainer.decode(String?.self, forKey: .nextHopId)
        self.addressPrefix = try decoderContainer.decode(String?.self, forKey: .addressPrefix)
    }
}
public extension RouteTableRule{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RouteTableRuleCodingKeys.self)
         try encoderContainer.encode(ruleId, forKey: .ruleId)
         try encoderContainer.encode(priority, forKey: .priority)
         try encoderContainer.encode(nextHopType, forKey: .nextHopType)
         try encoderContainer.encode(nextHopId, forKey: .nextHopId)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
    }
}
