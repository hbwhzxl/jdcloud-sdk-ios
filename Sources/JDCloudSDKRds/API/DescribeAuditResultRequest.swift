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

   审计管理
   审计管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  仅支持查看MySQL实例的审计内容
@objc(DescribeAuditResultRequest)
public class DescribeAuditResultRequest:JdCloudRequest
{
    /// 查询开始时间，格式为：YYYY-MM-DD HH:mm:ss，开始时间不能早于当前时间30天
    var startTime:String

    /// 查询截止时间，格式为：YYYY-MM-DD HH:mm:ss，开始时间到结束时间不能超过3天
    var endTime:String

    /// 数据库名
    var dbName:String?

    /// 账号名
    var accountName:String?

    /// 显示数据的页码，默认为1，取值范围：[-1,∞)
    var pageNumber:Int?

    /// 每页显示的数据条数，默认为10，取值范围：10、20、50
    var pageSize:Int?

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,startTime:String,endTime:String,instanceId:String){
        self.startTime = startTime
        self.endTime = endTime
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum DescribeAuditResultRequestRequestCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case dbName
        case accountName
        case pageNumber
        case pageSize
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAuditResultRequestRequestCodingKeys.self)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(dbName, forKey: .dbName)
        try encoderContainer.encode(accountName, forKey: .accountName)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
