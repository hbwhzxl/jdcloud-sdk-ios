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

///  instanceTemplateDisk
@objc(InstanceTemplateDisk)
public class InstanceTemplateDisk:NSObject,Codable{
    /// 云硬盘类型，取值为 ssd 或 premium-hdd
    var diskType:String?
    /// 云硬盘大小，单位为 GiB；ssd 类型取值范围[20,1000]GB，步长为10G，premium-hdd 类型取值范围[20,3000]GB，步长为10G
    var diskSizeGB:Int?
    /// 用于创建云硬盘的快照ID
    var snapshotId:String?



    public override init(){
            super.init()
    }

    enum InstanceTemplateDiskCodingKeys: String, CodingKey {
        case diskType
        case diskSizeGB
        case snapshotId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceTemplateDiskCodingKeys.self)
        self.diskType = try decoderContainer.decode(String?.self, forKey: .diskType)
        self.diskSizeGB = try decoderContainer.decode(Int?.self, forKey: .diskSizeGB)
        self.snapshotId = try decoderContainer.decode(String?.self, forKey: .snapshotId)
    }
}
public extension InstanceTemplateDisk{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceTemplateDiskCodingKeys.self)
         try encoderContainer.encode(diskType, forKey: .diskType)
         try encoderContainer.encode(diskSizeGB, forKey: .diskSizeGB)
         try encoderContainer.encode(snapshotId, forKey: .snapshotId)
    }
}
