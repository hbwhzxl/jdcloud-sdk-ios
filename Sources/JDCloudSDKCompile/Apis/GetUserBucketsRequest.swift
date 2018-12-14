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

   job api
   API COMPILE CODE TO PACKAGE

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询用户的oss存储空间
public class GetUserBucketsRequest:JdCloudRequest
{
    /// 查询用户指定区域的oss存储空间
    var userRegionId:String


    public init(regionId: String,userRegionId:String){
        self.userRegionId = userRegionId
        super.init(regionId: regionId)
    }


    enum GetUserBucketsRequestRequestCodingKeys: String, CodingKey {
        case userRegionId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetUserBucketsRequestRequestCodingKeys.self)
        try container.encode(userRegionId, forKey: .userRegionId)

    }
}