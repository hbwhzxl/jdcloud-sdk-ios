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

///  instanceTemplateNetworkInterfaceSpec
@objc(InstanceTemplateNetworkInterfaceSpec)
public class InstanceTemplateNetworkInterfaceSpec:NSObject,Codable{
    /// 子网ID
    /// Required:true
    var subnetId:String
    /// 安全组ID列表
    var securityGroups:[String?]?
    /// PortSecurity，取值为0或者1，默认为1
    var sanityCheck:Int?



    public  init(subnetId:String){
             self.subnetId = subnetId
    }

    enum InstanceTemplateNetworkInterfaceSpecCodingKeys: String, CodingKey {
        case subnetId
        case securityGroups
        case sanityCheck
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceTemplateNetworkInterfaceSpecCodingKeys.self)
        self.subnetId = try decoderContainer.decode(String.self, forKey: .subnetId)
        self.securityGroups = try decoderContainer.decode([String?]?.self, forKey: .securityGroups)
        self.sanityCheck = try decoderContainer.decode(Int?.self, forKey: .sanityCheck)
    }
}
public extension InstanceTemplateNetworkInterfaceSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceTemplateNetworkInterfaceSpecCodingKeys.self)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(securityGroups, forKey: .securityGroups)
         try encoderContainer.encode(sanityCheck, forKey: .sanityCheck)
    }
}
