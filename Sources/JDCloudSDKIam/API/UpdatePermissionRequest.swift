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

   策略管理接口
   策略管理接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改策略
@objc(UpdatePermissionRequest)
public class UpdatePermissionRequest:JdCloudRequest
{
    /// 权限信息
    var updatePermissionInfo:UpdatePermissionInfo

    /// 权限id
    var permissionId:Int


    public init(regionId: String,updatePermissionInfo:UpdatePermissionInfo,permissionId:Int){
        self.updatePermissionInfo = updatePermissionInfo
        self.permissionId = permissionId
        super.init(regionId: regionId)
    }


    enum UpdatePermissionRequestRequestCodingKeys: String, CodingKey {
        case updatePermissionInfo
        case permissionId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdatePermissionRequestRequestCodingKeys.self)
        try encoderContainer.encode(updatePermissionInfo, forKey: .updatePermissionInfo)
        try encoderContainer.encode(permissionId, forKey: .permissionId)

    }
}
