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

   JDCLOUD 攻击信息 API
   态势感知单一攻击相关信息接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询单一攻击事件安全事件统计接口
public class QuerySingleAttacksNameCountStatRequest:JdCloudRequest
{
    /// 起始时间, 毫秒时间戳。如果不传，则需要传timeSpan
    var timeBegin:String?

    /// 结束时间, 毫秒时间戳, 不传为当前时间
    var timeEnd:String?

    /// 天数.如果timeBegin，则该参数无效
    var timeSpan:Int?

    /// 攻击类型
    var jdClass:Int?

    /// 云主机外网IP
    var floatingIp:String?

    /// 云主机内网IP
    var fixedIp:String?

    /// 云主机Id
    var serverId:String?

    /// 云主机名称
    var serverName:String?

    /// 事件等级
    var severity:Int?

    /// 事件等级,支持多个，逗号分隔
    var severities:String?

    /// 事件状态, 待处理传0，完成传1,2,3
    var statuses:String?

    /// 当sortBy &#x3D; time时指定的间隔，取值为1h 1d 1w 1m
    var interval:String

    /// time:按时间段聚合,data_center:数据中心名称,floatingip:外网IP,fixedip:内网IP,server_id:服务器ID,severity: 事件等级{紧急:1,常规:2},status: 事件状态 //0:待处理; 1:完成,2:忽略(必选)默认0；jdClass: 事件类型；ruleid:规则名称；jd_class: 规则ID；peer_ip:按攻击者IP 聚合，会统计攻击者外部IP所有事件
    var sortBy:String


    public init(regionId: String,interval:String,sortBy:String){
        self.interval = interval
        self.sortBy = sortBy
        super.init(regionId: regionId)
    }


    enum QuerySingleAttacksNameCountStatRequestRequestCodingKeys: String, CodingKey {
        case timeBegin
        case timeEnd
        case timeSpan
        case jdClass
        case floatingIp
        case fixedIp
        case serverId
        case serverName
        case severity
        case severities
        case statuses
        case interval
        case sortBy
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QuerySingleAttacksNameCountStatRequestRequestCodingKeys.self)
        try container.encode(timeBegin, forKey: .timeBegin)
        try container.encode(timeEnd, forKey: .timeEnd)
        try container.encode(timeSpan, forKey: .timeSpan)
        try container.encode(jdClass, forKey: .jdClass)
        try container.encode(floatingIp, forKey: .floatingIp)
        try container.encode(fixedIp, forKey: .fixedIp)
        try container.encode(serverId, forKey: .serverId)
        try container.encode(serverName, forKey: .serverName)
        try container.encode(severity, forKey: .severity)
        try container.encode(severities, forKey: .severities)
        try container.encode(statuses, forKey: .statuses)
        try container.encode(interval, forKey: .interval)
        try container.encode(sortBy, forKey: .sortBy)

    }
}