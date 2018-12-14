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

   促销管理接口
   促销管理接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取最低折扣
public class DescribeLowestDiscountRequest:JdCloudRequest
{
    /// 折扣信息
    var lowestDiscountVo:LowestDiscountVo


    public init(regionId: String,lowestDiscountVo:LowestDiscountVo){
        self.lowestDiscountVo = lowestDiscountVo
        super.init(regionId: regionId)
    }


    enum DescribeLowestDiscountRequestRequestCodingKeys: String, CodingKey {
        case lowestDiscountVo
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeLowestDiscountRequestRequestCodingKeys.self)
        try container.encode(lowestDiscountVo, forKey: .lowestDiscountVo)

    }
}