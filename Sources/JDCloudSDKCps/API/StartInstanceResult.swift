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

   云物理服务器
   云物理服务器操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 对单个云物理服务器执行开机操作，只能启动stopped状态的服务器
@objc(StartInstanceResult)
public class StartInstanceResult:NSObject,JdCloudResult
{
    /// 开机操作是否成功
    var success:Bool?



    public override init(){
        super.init()
    }

    enum StartInstanceResultCodingKeys: String, CodingKey {
        case success
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StartInstanceResultCodingKeys.self)
        self.success = try decoderContainer.decode(Bool?.self, forKey: .success)
    }
}
public extension StartInstanceResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StartInstanceResultCodingKeys.self)
        try encoderContainer.encode(success, forKey: .success)
    }
}
