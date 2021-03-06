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

   账号管理
   API related to Relational Database Service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查看某个RDS实例下所有账号信息，包括账号名称、对各个数据库的访问权限信息等
@objc(DescribeAccountsResult)
public class DescribeAccountsResult:NSObject,JdCloudResult
{
    /// Accounts
    var accounts:Account?



    public override init(){
        super.init()
    }

    enum DescribeAccountsResultCodingKeys: String, CodingKey {
        case accounts
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAccountsResultCodingKeys.self)
        self.accounts = try decoderContainer.decode(Account?.self, forKey: .accounts)
    }
}
public extension DescribeAccountsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAccountsResultCodingKeys.self)
        try encoderContainer.encode(accounts, forKey: .accounts)
    }
}
