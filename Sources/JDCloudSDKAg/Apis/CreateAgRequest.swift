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

   配额
   关于可用组配额的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建一个可用组
public class CreateAgRequest:JdCloudRequest
{
    /// 支持的可用区，最少一个
    var azs:String?

    /// 可用组名称
    var agName:String?

    /// 可用组类型，支持compute/container
    var agType:String?

    /// 启动模板的Id
    var instanceTemplateId:String?

    /// 描述，长度不超过 256 字节
    var description:String?




    enum CreateAgRequestRequestCodingKeys: String, CodingKey {
        case azs
        case agName
        case agType
        case instanceTemplateId
        case description
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateAgRequestRequestCodingKeys.self)
        try container.encode(azs, forKey: .azs)
        try container.encode(agName, forKey: .agName)
        try container.encode(agType, forKey: .agType)
        try container.encode(instanceTemplateId, forKey: .instanceTemplateId)
        try container.encode(description, forKey: .description)

    }
}