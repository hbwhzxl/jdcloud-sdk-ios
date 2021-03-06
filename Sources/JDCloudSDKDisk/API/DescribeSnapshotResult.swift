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

   快照相关接口
   快照相关接口，提供创建快照，查询快照信息，删除快照，修改快照信息等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询云硬盘快照信息详情
@objc(DescribeSnapshotResult)
public class DescribeSnapshotResult:NSObject,JdCloudResult
{
    /// Snapshot
    var snapshot:Snapshot?



    public override init(){
        super.init()
    }

    enum DescribeSnapshotResultCodingKeys: String, CodingKey {
        case snapshot
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSnapshotResultCodingKeys.self)
        self.snapshot = try decoderContainer.decode(Snapshot?.self, forKey: .snapshot)
    }
}
public extension DescribeSnapshotResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotResultCodingKeys.self)
        try encoderContainer.encode(snapshot, forKey: .snapshot)
    }
}
