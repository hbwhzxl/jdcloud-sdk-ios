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

   备份管理
   备份管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建一个RDS实例全量备份，可以对整个实例或者部分数据库（仅SQL Server支持）进行全量备份。同一时间点，只能有一个正在运行的备份任务
@objc(CreateBackupRequest)
public class CreateBackupRequest:JdCloudRequest
{
    /// RDS实例ID，唯一标识一个实例
    var instanceId:String?

    /// 备份规格
    var backupSpec:BackupSpec?




    enum CreateBackupRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case backupSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateBackupRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(backupSpec, forKey: .backupSpec)

    }
}
