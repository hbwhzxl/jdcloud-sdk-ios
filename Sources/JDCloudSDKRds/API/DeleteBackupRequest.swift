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


///  删除RDS实例备份，仅允许删除用户生成的备份，系统自动备份不允许删除。
@objc(DeleteBackupRequest)
public class DeleteBackupRequest:JdCloudRequest
{
    /// 备份ID
    var backupId:String


    public init(regionId: String,backupId:String){
        self.backupId = backupId
        super.init(regionId: regionId)
    }


    enum DeleteBackupRequestRequestCodingKeys: String, CodingKey {
        case backupId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteBackupRequestRequestCodingKeys.self)
        try encoderContainer.encode(backupId, forKey: .backupId)

    }
}
