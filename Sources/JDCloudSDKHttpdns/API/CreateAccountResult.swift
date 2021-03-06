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

   账户
   httpdns OpenAPI账户接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建httpdns账户
@objc(CreateAccountResult)
public class CreateAccountResult:NSObject,JdCloudResult
{
    /// 开户成功后得到的账户结构
    var data:Account?



    public override init(){
        super.init()
    }

    enum CreateAccountResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateAccountResultCodingKeys.self)
        self.data = try decoderContainer.decode(Account?.self, forKey: .data)
    }
}
public extension CreateAccountResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAccountResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
