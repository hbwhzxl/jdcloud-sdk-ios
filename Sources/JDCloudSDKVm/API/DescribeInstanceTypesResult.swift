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

/// 查询实例规格信息列表
      ///       /// 
@objc(DescribeInstanceTypesResult)
public class DescribeInstanceTypesResult:NSObject,JdCloudResult
{
    /// InstanceTypes
    var instanceTypes:InstanceType?

    /// SpecificInstanceTypes
    var specificInstanceTypes:InstanceType?

    /// 总数量
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeInstanceTypesResultCodingKeys: String, CodingKey {
        case instanceTypes
        case specificInstanceTypes
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeInstanceTypesResultCodingKeys.self)
        self.instanceTypes = try decoderContainer.decode(InstanceType?.self, forKey: .instanceTypes)
        self.specificInstanceTypes = try decoderContainer.decode(InstanceType?.self, forKey: .specificInstanceTypes)
        self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
    }
}
public extension DescribeInstanceTypesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstanceTypesResultCodingKeys.self)
        try encoderContainer.encode(instanceTypes, forKey: .instanceTypes)
        try encoderContainer.encode(specificInstanceTypes, forKey: .specificInstanceTypes)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
