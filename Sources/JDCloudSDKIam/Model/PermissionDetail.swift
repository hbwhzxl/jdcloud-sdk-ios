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

///  permissionDetail
@objc(PermissionDetail)
public class PermissionDetail:NSObject,Codable{
    /// 权限类型，只读-R、删除-D、修改-M
    /// Required:true
    var permission:String
    /// 资源信息
    /// Required:true
    var resource:Resource?



    public  init(permission:String,resource:Resource?){
             self.permission = permission
             self.resource = resource
    }

    enum PermissionDetailCodingKeys: String, CodingKey {
        case permission
        case resource
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PermissionDetailCodingKeys.self)
        self.permission = try decoderContainer.decode(String.self, forKey: .permission)
        self.resource = try decoderContainer.decode(Resource?.self, forKey: .resource)
    }
}
public extension PermissionDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PermissionDetailCodingKeys.self)
         try encoderContainer.encode(permission, forKey: .permission)
         try encoderContainer.encode(resource, forKey: .resource)
    }
}
