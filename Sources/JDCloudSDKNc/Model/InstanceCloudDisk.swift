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

///  描述一个磁盘
@objc(InstanceCloudDisk)
public class InstanceCloudDisk:NSObject,Codable{
    /// 云硬盘ID
    var diskId:String?
    /// 所属AZ
    var az:String?
    /// 硬盘名称
    var name:String?
    /// 硬盘描述
    var descriptionValue:String?
    /// 磁盘类型，取值为 ssd, premium-hdd 之一
    var diskType:String?
    /// 磁盘大小（GiB）
    var diskSize:Int?
    /// 云硬盘状态，取值为 creating、available、in-use、extending、restoring、deleting、deleted、error_creating、error_deleting、error_restoring、error_extending 之一
    var status:String?
    /// 创建时间
    var createTime:String?



    public override init(){
            super.init()
    }

    enum InstanceCloudDiskCodingKeys: String, CodingKey {
        case diskId
        case az
        case name
        case descriptionValue = "description"
        case diskType
        case diskSize
        case status
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceCloudDiskCodingKeys.self)
        self.diskId = try decoderContainer.decode(String?.self, forKey: .diskId)
        self.az = try decoderContainer.decode(String?.self, forKey: .az)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.diskType = try decoderContainer.decode(String?.self, forKey: .diskType)
        self.diskSize = try decoderContainer.decode(Int?.self, forKey: .diskSize)
        self.status = try decoderContainer.decode(String?.self, forKey: .status)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
    }
}
public extension InstanceCloudDisk{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceCloudDiskCodingKeys.self)
         try encoderContainer.encode(diskId, forKey: .diskId)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(diskType, forKey: .diskType)
         try encoderContainer.encode(diskSize, forKey: .diskSize)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}
