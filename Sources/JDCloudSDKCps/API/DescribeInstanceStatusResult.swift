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

/// 查询单个云物理服务器硬件监控信息
@objc(DescribeInstanceStatusResult)
public class DescribeInstanceStatusResult:NSObject,JdCloudResult
{
    /// CPU状态是否正常
    var cpus:Bool?

    /// 内存状态是否正常
    var mems:Bool?

    /// 硬盘状态是否正常
    var disks:Bool?

    /// 网卡状态是否正常
    var nics:Bool?



    public override init(){
        super.init()
    }

    enum DescribeInstanceStatusResultCodingKeys: String, CodingKey {
        case cpus
        case mems
        case disks
        case nics
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeInstanceStatusResultCodingKeys.self)
        self.cpus = try decoderContainer.decode(Bool?.self, forKey: .cpus)
        self.mems = try decoderContainer.decode(Bool?.self, forKey: .mems)
        self.disks = try decoderContainer.decode(Bool?.self, forKey: .disks)
        self.nics = try decoderContainer.decode(Bool?.self, forKey: .nics)
    }
}
public extension DescribeInstanceStatusResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstanceStatusResultCodingKeys.self)
        try encoderContainer.encode(cpus, forKey: .cpus)
        try encoderContainer.encode(mems, forKey: .mems)
        try encoderContainer.encode(disks, forKey: .disks)
        try encoderContainer.encode(nics, forKey: .nics)
    }
}
