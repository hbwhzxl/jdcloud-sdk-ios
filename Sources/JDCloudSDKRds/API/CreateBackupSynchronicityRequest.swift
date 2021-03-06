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

   跨地域备份同步服务
   API related to Relational Database Service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建一个跨地域备份同步服务。
@objc(CreateBackupSynchronicityRequest)
public class CreateBackupSynchronicityRequest:JdCloudRequest
{
    /// 源实例ID
    var instanceId:String

    /// 备份同步的目标地域
    var destRegion:String


    public init(regionId: String,instanceId:String,destRegion:String){
        self.instanceId = instanceId
        self.destRegion = destRegion
        super.init(regionId: regionId)
    }


    enum CreateBackupSynchronicityRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case destRegion
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateBackupSynchronicityRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(destRegion, forKey: .destRegion)

    }
}
