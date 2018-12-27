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

   解析记录
   云解析OpenAPI自定义线路接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加域名的自定义解析线路
@objc(AddUserViewRequest)
public class AddUserViewRequest:JdCloudRequest
{
    /// 添加自定义线路的参数
    var req:AddView


    public init(regionId: String,req:AddView){
        self.req = req
        super.init(regionId: regionId)
    }


    enum AddUserViewRequestRequestCodingKeys: String, CodingKey {
        case req
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddUserViewRequestRequestCodingKeys.self)
        try encoderContainer.encode(req, forKey: .req)

    }
}