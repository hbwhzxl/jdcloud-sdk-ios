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

///  modifyNetworkInterfaceSpec
@objc(ModifyNetworkInterfaceSpec)
public class ModifyNetworkInterfaceSpec:NSObject,Codable{
    /// 弹性网卡名称,只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符
    var networkInterfaceName:String?
    /// 描述,允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?
    /// 以覆盖原有安全组的方式更新的安全组。如果更新安全组ID列表，最多5个安全组
    var securityGroups:[String?]?



    public override init(){
            super.init()
    }

    enum ModifyNetworkInterfaceSpecCodingKeys: String, CodingKey {
        case networkInterfaceName
        case descriptionValue = "description"
        case securityGroups
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyNetworkInterfaceSpecCodingKeys.self)
        self.networkInterfaceName = try decoderContainer.decode(String?.self, forKey: .networkInterfaceName)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.securityGroups = try decoderContainer.decode([String?]?.self, forKey: .securityGroups)
    }
}
public extension ModifyNetworkInterfaceSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyNetworkInterfaceSpecCodingKeys.self)
         try encoderContainer.encode(networkInterfaceName, forKey: .networkInterfaceName)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(securityGroups, forKey: .securityGroups)
    }
}
