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
import JDCloudSDKVpc

///  instanceNetworkInterface
@objc(InstanceNetworkInterface)
public class InstanceNetworkInterface:NSObject,Codable{
    /// 弹性网卡ID
    var networkInterfaceId:String?
    /// 以太网地址
    var macAddress:String?
    /// 虚拟网络ID
    var vpcId:String?
    /// 子网ID
    var subnetId:String?
    /// SecurityGroups
    var securityGroups:SecurityGroupSimple?
    /// 源和目标IP地址校验，取值为0或者1
    var sanityCheck:Int?
    /// 网卡主IP
    var primaryIp:NetworkInterfacePrivateIp?
    /// 网卡辅IP
    var secondaryIps:NetworkInterfacePrivateIp?



    public override init(){
            super.init()
    }

    enum InstanceNetworkInterfaceCodingKeys: String, CodingKey {
        case networkInterfaceId
        case macAddress
        case vpcId
        case subnetId
        case securityGroups
        case sanityCheck
        case primaryIp
        case secondaryIps
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceNetworkInterfaceCodingKeys.self)
        self.networkInterfaceId = try decoderContainer.decode(String?.self, forKey: .networkInterfaceId)
        self.macAddress = try decoderContainer.decode(String?.self, forKey: .macAddress)
        self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        self.securityGroups = try decoderContainer.decode(SecurityGroupSimple?.self, forKey: .securityGroups)
        self.sanityCheck = try decoderContainer.decode(Int?.self, forKey: .sanityCheck)
        self.primaryIp = try decoderContainer.decode(NetworkInterfacePrivateIp?.self, forKey: .primaryIp)
        self.secondaryIps = try decoderContainer.decode(NetworkInterfacePrivateIp?.self, forKey: .secondaryIps)
    }
}
public extension InstanceNetworkInterface{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceNetworkInterfaceCodingKeys.self)
         try encoderContainer.encode(networkInterfaceId, forKey: .networkInterfaceId)
         try encoderContainer.encode(macAddress, forKey: .macAddress)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(securityGroups, forKey: .securityGroups)
         try encoderContainer.encode(sanityCheck, forKey: .sanityCheck)
         try encoderContainer.encode(primaryIp, forKey: .primaryIp)
         try encoderContainer.encode(secondaryIps, forKey: .secondaryIps)
    }
}
