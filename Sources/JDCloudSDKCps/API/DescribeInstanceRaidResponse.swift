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

@objc(DescribeInstanceRaidResponse)
public class DescribeInstanceRaidResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeInstanceRaidResult?;

    enum DescribeInstanceRaidResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeInstanceRaidResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeInstanceRaidResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeInstanceRaidResponse{
        public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstanceRaidResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}