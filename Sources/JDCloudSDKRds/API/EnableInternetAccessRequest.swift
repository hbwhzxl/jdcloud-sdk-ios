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


///  开启RDS实例的外网访问功能。开启后，用户可以通过internet访问RDS实例
@objc(EnableInternetAccessRequest)
public class EnableInternetAccessRequest:JdCloudRequest
{
    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,instanceId:String){
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum EnableInternetAccessRequestRequestCodingKeys: String, CodingKey {
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: EnableInternetAccessRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
