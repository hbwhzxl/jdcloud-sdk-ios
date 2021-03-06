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

   实例规格
   与实例规格操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询实例规格信息列表
      ///       /// 
@objc(DescribeInstanceTypesRequest)
public class DescribeInstanceTypesRequest:JdCloudRequest
{
    /// instanceTypes - 实例规格，精确匹配，支持多个
      /// az - 可用区，精确匹配，支持多个
      /// 
    var filters:Filter?




    enum DescribeInstanceTypesRequestRequestCodingKeys: String, CodingKey {
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstanceTypesRequestRequestCodingKeys.self)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}
