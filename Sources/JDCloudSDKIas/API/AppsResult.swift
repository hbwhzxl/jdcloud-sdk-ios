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

   JDCLOUD IAS Operateback Services API
   京东云联合登陆运营后台应用管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 运营后台查询app
@objc(AppsResult)
public class AppsResult:NSObject,JdCloudResult
{
    /// Pagination
    var pagination:Pagination?

    /// Result
    var result:AppQueryResultItem?



    public override init(){
        super.init()
    }

    enum AppsResultCodingKeys: String, CodingKey {
        case pagination
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AppsResultCodingKeys.self)
        self.pagination = try decoderContainer.decode(Pagination?.self, forKey: .pagination)
        self.result = try decoderContainer.decode(AppQueryResultItem?.self, forKey: .result)
    }
}
public extension AppsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AppsResultCodingKeys.self)
        try encoderContainer.encode(pagination, forKey: .pagination)
        try encoderContainer.encode(result, forKey: .result)
    }
}
