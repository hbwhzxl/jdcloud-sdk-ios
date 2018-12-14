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

   域名
   云解析OpenAPI域名接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询对应的购买方式的价格
public class GetPriceRequest:JdCloudRequest
{
    /// 域名ID。新购域名不用填写。升级服务的时候需要填写，请使用getDomains接口获取。
    var domainId:Int?

    /// 套餐类型，0-&gt;免费 1-&gt;企业版 2-&gt;企业高级版
    var packId:Int

    /// 购买的类型，1-&gt;新购买、3-&gt;升级服务
    var buyType:Int

    /// 购买的时间长度，1-3
    var timeSpan:Int

    /// 购买的时间单位，1-&gt;小时，2-&gt;天，3-&gt;月，4-&gt;年
    var timeUnit:Int


    public init(regionId: String,packId:Int,buyType:Int,timeSpan:Int,timeUnit:Int){
        self.packId = packId
        self.buyType = buyType
        self.timeSpan = timeSpan
        self.timeUnit = timeUnit
        super.init(regionId: regionId)
    }


    enum GetPriceRequestRequestCodingKeys: String, CodingKey {
        case domainId
        case packId
        case buyType
        case timeSpan
        case timeUnit
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetPriceRequestRequestCodingKeys.self)
        try container.encode(domainId, forKey: .domainId)
        try container.encode(packId, forKey: .packId)
        try container.encode(buyType, forKey: .buyType)
        try container.encode(timeSpan, forKey: .timeSpan)
        try container.encode(timeUnit, forKey: .timeUnit)

    }
}