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

///  addNetworkAclRuleSpec
@objc(AddNetworkAclRuleSpec)
public class AddNetworkAclRuleSpec:NSObject,Codable{
    /// 规则限定协议。取值范围：All,TCP,UDP,ICMP
    /// Required:true
    var protocolValue:String
    /// 规则限定起始传输层端口, 取值范围:1-65535, 若protocol为传输层协议，默认值为1，若protocol不是传输层协议，设置无效，恒为0。如果规则只限定一个端口号，fromPort和toPort填写同一个值
    var fromPort:Int?
    /// 规则限定终止传输层端口, 取值范围:1-65535, 若protocol为传输层协议，默认值为65535，若protocol不是传输层协议，设置无效，恒为0。如果规则只限定一个端口号，fromPort和toPort填写同一个值
    var toPort:Int?
    /// networkAcl规则方向。ingress：入规则; egress：出规则
    /// Required:true
    var direction:String
    /// 匹配地址前缀
    /// Required:true
    var addressPrefix:String
    /// 访问控制策略：allow:允许，deny：拒绝
    /// Required:true
    var ruleAction:String
    /// 规则匹配优先级，取值范围为[1,32768]，优先级数字越小优先级越高
    /// Required:true
    var priority:Int
    /// 描述,允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?



    public  init(protocolValue:String,direction:String,addressPrefix:String,ruleAction:String,priority:Int){
             self.protocolValue = protocolValue
             self.direction = direction
             self.addressPrefix = addressPrefix
             self.ruleAction = ruleAction
             self.priority = priority
    }

    enum AddNetworkAclRuleSpecCodingKeys: String, CodingKey {
        case protocolValue = "protocol"
        case fromPort
        case toPort
        case direction
        case addressPrefix
        case ruleAction
        case priority
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AddNetworkAclRuleSpecCodingKeys.self)
        self.protocolValue = try decoderContainer.decode(String.self, forKey: .protocolValue)
        self.fromPort = try decoderContainer.decode(Int?.self, forKey: .fromPort)
        self.toPort = try decoderContainer.decode(Int?.self, forKey: .toPort)
        self.direction = try decoderContainer.decode(String.self, forKey: .direction)
        self.addressPrefix = try decoderContainer.decode(String.self, forKey: .addressPrefix)
        self.ruleAction = try decoderContainer.decode(String.self, forKey: .ruleAction)
        self.priority = try decoderContainer.decode(Int.self, forKey: .priority)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
    }
}
public extension AddNetworkAclRuleSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddNetworkAclRuleSpecCodingKeys.self)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(fromPort, forKey: .fromPort)
         try encoderContainer.encode(toPort, forKey: .toPort)
         try encoderContainer.encode(direction, forKey: .direction)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
         try encoderContainer.encode(ruleAction, forKey: .ruleAction)
         try encoderContainer.encode(priority, forKey: .priority)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
