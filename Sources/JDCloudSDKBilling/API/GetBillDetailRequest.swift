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


///  查询消费记录详情
@objc(GetBillDetailRequest)
public class GetBillDetailRequest:JdCloudRequest
{
    /// SystemType
    var systemType:Int?

    /// BillId
    var billId:Double


    public init(regionId: String,billId:Double){
        self.billId = billId
        super.init(regionId: regionId)
    }


    enum GetBillDetailRequestRequestCodingKeys: String, CodingKey {
        case systemType
        case billId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetBillDetailRequestRequestCodingKeys.self)
        try encoderContainer.encode(systemType, forKey: .systemType)
        try encoderContainer.encode(billId, forKey: .billId)

    }
}
