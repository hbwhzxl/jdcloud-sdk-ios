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


///  更新实例
public class UpdateInstanceRequest:JdCloudRequest
{
    /// 更新用户
    var instanceSpec:InstanceAttribute

    /// 实例ID
    var instanceId:String


    public init(regionId: String,instanceSpec:InstanceAttribute,instanceId:String){
        self.instanceSpec = instanceSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum UpdateInstanceRequestRequestCodingKeys: String, CodingKey {
        case instanceSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UpdateInstanceRequestRequestCodingKeys.self)
        try container.encode(instanceSpec, forKey: .instanceSpec)
        try container.encode(instanceId, forKey: .instanceId)

    }
}