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

   API
   关于api操作的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建api
public class CreateApisRequest:JdCloudRequest
{
    /// api
    var api:CreateApi?

    /// 分组ID
    var apiGroupId:String

    /// 版本号
    var revision:String


    public init(regionId: String,apiGroupId:String,revision:String){
        self.apiGroupId = apiGroupId
        self.revision = revision
        super.init(regionId: regionId)
    }


    enum CreateApisRequestRequestCodingKeys: String, CodingKey {
        case api
        case apiGroupId
        case revision
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateApisRequestRequestCodingKeys.self)
        try container.encode(api, forKey: .api)
        try container.encode(apiGroupId, forKey: .apiGroupId)
        try container.encode(revision, forKey: .revision)

    }
}