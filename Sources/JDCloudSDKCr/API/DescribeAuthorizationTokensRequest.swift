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

   Authentication
   用户认证相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  &lt;p&gt;批量查询令牌。&lt;/p&gt; 
      ///       /// &lt;p&gt;暂时不支持分页和过滤条件。&lt;/p&gt;
      ///       /// 
@objc(DescribeAuthorizationTokensRequest)
public class DescribeAuthorizationTokensRequest:JdCloudRequest
{
    /// token - 令牌 ID，支持多个
      /// 
    var filters:Filter?

    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// 注册表名称
    var registryName:String


    public init(regionId: String,registryName:String){
        self.registryName = registryName
        super.init(regionId: regionId)
    }


    enum DescribeAuthorizationTokensRequestRequestCodingKeys: String, CodingKey {
        case filters
        case pageNumber
        case pageSize
        case registryName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAuthorizationTokensRequestRequestCodingKeys.self)
        try encoderContainer.encode(filters, forKey: .filters)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(registryName, forKey: .registryName)

    }
}
