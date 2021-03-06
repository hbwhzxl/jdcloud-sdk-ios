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

   JDCLOUD BILLING Services API
   用户中心消费管理查询API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询用于在账单展示的资源名称信息
@objc(GetResourceNameResult)
public class GetResourceNameResult:NSObject,JdCloudResult
{
    /// ResourceName
    var resourceName:String?



    public override init(){
        super.init()
    }

    enum GetResourceNameResultCodingKeys: String, CodingKey {
        case resourceName
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetResourceNameResultCodingKeys.self)
        self.resourceName = try decoderContainer.decode(String?.self, forKey: .resourceName)
    }
}
public extension GetResourceNameResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetResourceNameResultCodingKeys.self)
        try encoderContainer.encode(resourceName, forKey: .resourceName)
    }
}
