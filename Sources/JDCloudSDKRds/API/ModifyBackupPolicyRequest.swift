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


///  修改RDS实例备份策略，目前仅支持用户修改“自动备份开始时间窗口”这个参数，其他参数暂不开放修改
@objc(ModifyBackupPolicyRequest)
public class ModifyBackupPolicyRequest:JdCloudRequest
{
    /// 自动备份开始时间窗口,例如：00:00-01:00，表示0点到1点开始进行数据库自动备份，备份完成时间则跟实例大小有关，不一定在这个时间范围中&lt;br&gt;SQL Server:范围00:00-23:59，时间范围差不得小于30分钟。&lt;br&gt;MySQL,只能是以下取值:&lt;br&gt;00:00-01:00&lt;br&gt;01:00-02:00&lt;br&gt;......&lt;br&gt;23:00-24:00
    var startWindow:String?

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,instanceId:String){
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyBackupPolicyRequestRequestCodingKeys: String, CodingKey {
        case startWindow
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyBackupPolicyRequestRequestCodingKeys.self)
        try encoderContainer.encode(startWindow, forKey: .startWindow)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
