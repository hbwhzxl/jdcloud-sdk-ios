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
import JDCloudSDKCharge

///  instance
@objc(Instance)
public class Instance:NSObject,Codable{
    /// 云物理服务器实例ID
    var instanceId:String?
    /// 区域代码, 如 cn-east-1
    var region:String?
    /// 可用区, 如 cn-east-1a
    var az:String?
    /// 实例类型, 如 cps.c.normal
    var deviceType:String?
    /// 云物理服务器名称
    var name:String?
    /// 云物理服务器描述
    var descriptionValue:String?
    /// 云物理服务器生命周期状态
    var status:String?
    /// 是否启用外网, 如 yes/no
    var enableInternet:String?
    /// 带宽, 单位Mbps
    var bandwidth:Int?
    /// 镜像类型, 如 standard/standard_app
    var imageType:String?
    /// 操作系统类型ID
    var osTypeId:String?
    /// 操作系统名称
    var osName:String?
    /// 操作系统类型, 如 ubuntu/centos
    var osType:String?
    /// 操作系统版本, 如 16.04
    var osVersion:String?
    /// 系统盘RAID类型ID
    var sysRaidTypeId:String?
    /// 系统盘RAID类型, 如 NORAID, RAID0, RAID1
    var sysRaidType:String?
    /// 数据盘RAID类型ID
    var dataRaidTypeId:String?
    /// 数据盘RAID类型, 如 NORAID, RAID0, RAID1
    var dataRaidType:String?
    /// 网络类型, 如 basic
    var networkType:String?
    /// 外网链路类型, 如 bgp
    var lineType:String?
    /// 子网编号
    var subnetId:String?
    /// 内网IP
    var privateIp:String?
    /// 公网IP
    var publicIp:String?
    /// 计费信息
    var charge:Charge?



    public override init(){
            super.init()
    }

    enum InstanceCodingKeys: String, CodingKey {
        case instanceId
        case region
        case az
        case deviceType
        case name
        case descriptionValue = "description"
        case status
        case enableInternet
        case bandwidth
        case imageType
        case osTypeId
        case osName
        case osType
        case osVersion
        case sysRaidTypeId
        case sysRaidType
        case dataRaidTypeId
        case dataRaidType
        case networkType
        case lineType
        case subnetId
        case privateIp
        case publicIp
        case charge
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceCodingKeys.self)
        self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        self.region = try decoderContainer.decode(String?.self, forKey: .region)
        self.az = try decoderContainer.decode(String?.self, forKey: .az)
        self.deviceType = try decoderContainer.decode(String?.self, forKey: .deviceType)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.status = try decoderContainer.decode(String?.self, forKey: .status)
        self.enableInternet = try decoderContainer.decode(String?.self, forKey: .enableInternet)
        self.bandwidth = try decoderContainer.decode(Int?.self, forKey: .bandwidth)
        self.imageType = try decoderContainer.decode(String?.self, forKey: .imageType)
        self.osTypeId = try decoderContainer.decode(String?.self, forKey: .osTypeId)
        self.osName = try decoderContainer.decode(String?.self, forKey: .osName)
        self.osType = try decoderContainer.decode(String?.self, forKey: .osType)
        self.osVersion = try decoderContainer.decode(String?.self, forKey: .osVersion)
        self.sysRaidTypeId = try decoderContainer.decode(String?.self, forKey: .sysRaidTypeId)
        self.sysRaidType = try decoderContainer.decode(String?.self, forKey: .sysRaidType)
        self.dataRaidTypeId = try decoderContainer.decode(String?.self, forKey: .dataRaidTypeId)
        self.dataRaidType = try decoderContainer.decode(String?.self, forKey: .dataRaidType)
        self.networkType = try decoderContainer.decode(String?.self, forKey: .networkType)
        self.lineType = try decoderContainer.decode(String?.self, forKey: .lineType)
        self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        self.privateIp = try decoderContainer.decode(String?.self, forKey: .privateIp)
        self.publicIp = try decoderContainer.decode(String?.self, forKey: .publicIp)
        self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
    }
}
public extension Instance{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(deviceType, forKey: .deviceType)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(enableInternet, forKey: .enableInternet)
         try encoderContainer.encode(bandwidth, forKey: .bandwidth)
         try encoderContainer.encode(imageType, forKey: .imageType)
         try encoderContainer.encode(osTypeId, forKey: .osTypeId)
         try encoderContainer.encode(osName, forKey: .osName)
         try encoderContainer.encode(osType, forKey: .osType)
         try encoderContainer.encode(osVersion, forKey: .osVersion)
         try encoderContainer.encode(sysRaidTypeId, forKey: .sysRaidTypeId)
         try encoderContainer.encode(sysRaidType, forKey: .sysRaidType)
         try encoderContainer.encode(dataRaidTypeId, forKey: .dataRaidTypeId)
         try encoderContainer.encode(dataRaidType, forKey: .dataRaidType)
         try encoderContainer.encode(networkType, forKey: .networkType)
         try encoderContainer.encode(lineType, forKey: .lineType)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(privateIp, forKey: .privateIp)
         try encoderContainer.encode(publicIp, forKey: .publicIp)
         try encoderContainer.encode(charge, forKey: .charge)
    }
}
