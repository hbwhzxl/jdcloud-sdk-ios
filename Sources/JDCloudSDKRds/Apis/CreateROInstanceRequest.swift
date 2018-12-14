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

   实例管理
   实例管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建MySQL的只读实例&lt;br&gt;- 仅支持MySQL
public class CreateROInstanceRequest:JdCloudRequest
{
    /// 可用区ID
    var azId:String

    /// 只读实例规格FlavorId
    var instanceClass:String

    /// 磁盘空间
    var instanceStorageGB:Int

    /// 创建只读实例的数目,缺省为1
    var count:Int?

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,azId:String,instanceClass:String,instanceStorageGB:Int,instanceId:String){
        self.azId = azId
        self.instanceClass = instanceClass
        self.instanceStorageGB = instanceStorageGB
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateROInstanceRequestRequestCodingKeys: String, CodingKey {
        case azId
        case instanceClass
        case instanceStorageGB
        case count
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateROInstanceRequestRequestCodingKeys.self)
        try container.encode(azId, forKey: .azId)
        try container.encode(instanceClass, forKey: .instanceClass)
        try container.encode(instanceStorageGB, forKey: .instanceStorageGB)
        try container.encode(count, forKey: .count)
        try container.encode(instanceId, forKey: .instanceId)

    }
}