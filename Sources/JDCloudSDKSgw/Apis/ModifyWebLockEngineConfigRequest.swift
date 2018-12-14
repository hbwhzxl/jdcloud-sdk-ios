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

   实例管理相关接口
   API related to waf instance

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改WAF实例-配置管理-网页防篡改配置
public class ModifyWebLockEngineConfigRequest:JdCloudRequest
{
    /// 修改网页防篡改配置
    var weblockEngineConfig:WebLockEngineConfig

    /// waf 实例id
    var instanceId:String


    public init(regionId: String,weblockEngineConfig:WebLockEngineConfig,instanceId:String){
        self.weblockEngineConfig = weblockEngineConfig
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyWebLockEngineConfigRequestRequestCodingKeys: String, CodingKey {
        case weblockEngineConfig
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyWebLockEngineConfigRequestRequestCodingKeys.self)
        try container.encode(weblockEngineConfig, forKey: .weblockEngineConfig)
        try container.encode(instanceId, forKey: .instanceId)

    }
}