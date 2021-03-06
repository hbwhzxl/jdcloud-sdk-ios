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

///  modifySecurityGroupRules
@objc(ModifySecurityGroupRules)
public class ModifySecurityGroupRules:NSObject,Codable{
    /// 安全组规则的ID。
    /// Required:true
    var ruleId:String
    /// 规则限定协议。300:All; 6:TCP; 17:UDP; 1:ICMP
    var protocolValue:Double?
    /// 安全组规则的起始端口。取值范围：1-65535
    var fromPort:Int?
    /// 安全组规则的终端口。取值范围：1-65535
    var toPort:Int?
    /// 安全组规则前缀，取值范围：正确的CIDR
    var addressPrefix:String?
    /// 安全组规则的描述，取值范围：0-256个UTF-8编码下的全部字符
    var descriptionValue:String?



    public  init(ruleId:String){
             self.ruleId = ruleId
    }

    enum ModifySecurityGroupRulesCodingKeys: String, CodingKey {
        case ruleId
        case protocolValue = "protocol"
        case fromPort
        case toPort
        case addressPrefix
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifySecurityGroupRulesCodingKeys.self)
        self.ruleId = try decoderContainer.decode(String.self, forKey: .ruleId)
        self.protocolValue = try decoderContainer.decode(Double?.self, forKey: .protocolValue)
        self.fromPort = try decoderContainer.decode(Int?.self, forKey: .fromPort)
        self.toPort = try decoderContainer.decode(Int?.self, forKey: .toPort)
        self.addressPrefix = try decoderContainer.decode(String?.self, forKey: .addressPrefix)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
    }
}
public extension ModifySecurityGroupRules{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifySecurityGroupRulesCodingKeys.self)
         try encoderContainer.encode(ruleId, forKey: .ruleId)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(fromPort, forKey: .fromPort)
         try encoderContainer.encode(toPort, forKey: .toPort)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
