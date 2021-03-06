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
import JDCloudSDKCommon


///  批量查询云物理服务器详细信息&lt;br/&gt;
      ///       /// 支持分页查询，默认每页10条&lt;br/&gt;
      ///       /// 
@objc(DescribeInstancesRequest)
public class DescribeInstancesRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为10；取值范围[10, 100]
    var pageSize:Int?

    /// 可用区，精确匹配
    var az:String?

    /// 云物理服务器名称，支持模糊匹配
    var name:String?

    /// 网络类型，精确匹配，目前只支持basic
    var networkType:String?

    /// 实例类型，精确匹配，调用接口（describeDeviceTypes）获取实例类型
    var deviceType:String?

    /// 云物理服务器状态，参考云物理服务器状态
    var status:String?

    /// instanceId - 云物理服务器ID，精确匹配，支持多个
      /// 
    var filters:Filter?




    enum DescribeInstancesRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case az
        case name
        case networkType
        case deviceType
        case status
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstancesRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(az, forKey: .az)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(networkType, forKey: .networkType)
        try encoderContainer.encode(deviceType, forKey: .deviceType)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}
