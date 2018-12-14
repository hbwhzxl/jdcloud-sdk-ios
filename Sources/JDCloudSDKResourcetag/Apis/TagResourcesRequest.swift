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

   资源标签接口
   资源标签接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  对资源打标签
public class TagResourcesRequest:JdCloudRequest
{
    /// 打标参数
    var tagResources:TagResourcesReqVo


    public init(regionId: String,tagResources:TagResourcesReqVo){
        self.tagResources = tagResources
        super.init(regionId: regionId)
    }


    enum TagResourcesRequestRequestCodingKeys: String, CodingKey {
        case tagResources
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: TagResourcesRequestRequestCodingKeys.self)
        try container.encode(tagResources, forKey: .tagResources)

    }
}