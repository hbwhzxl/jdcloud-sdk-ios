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

///  instanceNetworkInterfaceAttachment
@objc(InstanceNetworkInterfaceAttachment)
public class InstanceNetworkInterfaceAttachment:NSObject,Codable{
    /// 设备Index
    var deviceIndex:Int?
    /// 指明删除实例时是否删除网卡，默认true；当前只能是true
    var autoDelete:Bool?
    /// 网卡接口规范
    var networkInterface:InstanceNetworkInterface?



    public override init(){
            super.init()
    }

    enum InstanceNetworkInterfaceAttachmentCodingKeys: String, CodingKey {
        case deviceIndex
        case autoDelete
        case networkInterface
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceNetworkInterfaceAttachmentCodingKeys.self)
        self.deviceIndex = try decoderContainer.decode(Int?.self, forKey: .deviceIndex)
        self.autoDelete = try decoderContainer.decode(Bool?.self, forKey: .autoDelete)
        self.networkInterface = try decoderContainer.decode(InstanceNetworkInterface?.self, forKey: .networkInterface)
    }
}
public extension InstanceNetworkInterfaceAttachment{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceNetworkInterfaceAttachmentCodingKeys.self)
         try encoderContainer.encode(deviceIndex, forKey: .deviceIndex)
         try encoderContainer.encode(autoDelete, forKey: .autoDelete)
         try encoderContainer.encode(networkInterface, forKey: .networkInterface)
    }
}
