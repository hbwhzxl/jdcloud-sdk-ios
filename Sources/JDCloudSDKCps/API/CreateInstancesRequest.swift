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


///  创建一台或多台指定配置的云物理服务器&lt;br/&gt;
      ///       /// - 地域与可用区&lt;br/&gt;
      ///       ///   - 调用接口（describeRegiones）获取云物理服务器支持的地域与可用区&lt;br/&gt;
      ///       /// - 实例类型&lt;br/&gt;
      ///       ///   - 调用接口（describeDeviceTypes）获取物理实例类型列表&lt;br/&gt;
      ///       ///   - 不能使用已下线、或已售馨的实例类型&lt;br/&gt;
      ///       /// - 操作系统和预装软件&lt;br/&gt;
      ///       ///   - 可调用接口（describeOS）获取云物理服务器支持的操作系统列表&lt;br/&gt;
      ///       ///   - 可调用接口（describeSoftware）获取云物理服务器支持的软件列表，也可以不预装软件&lt;br/&gt;
      ///       /// - 存储&lt;br/&gt;
      ///       ///   - 数据盘多种RAID可选，可调用接口（describeDeviceRaids）获取服务器支持的RAID列表&lt;br/&gt;
      ///       /// - 网络&lt;br/&gt;
      ///       ///   - 网络类型目前只支持basic&lt;br/&gt;
      ///       ///   - 线路目前只支持bgp&lt;br/&gt;
      ///       ///   - 支持不启用外网，如果启用外网，带宽范围[1,200] 单位Mbps&lt;br/&gt;
      ///       /// - 其他&lt;br/&gt;
      ///       ///   - 购买时长，可按年或月购买，最少购买时长1个月，最长36个月（3年）&lt;br/&gt;
      ///       ///   - 密码设置参考公共参数规范&lt;br/&gt;
      ///       /// 
@objc(CreateInstancesRequest)
public class CreateInstancesRequest:JdCloudRequest
{
    /// 由客户端生成，用于保证请求的幂等性，长度不能超过36个字符；&lt;br/&gt;
      /// 如果多个请求使用了相同的clientToken，只会执行第一个请求，之后的请求直接返回第一个请求的结果&lt;br/&gt;
      /// 
    var clientToken:String?

    /// 描述云物理服务器配置
    var instanceSpec:InstanceSpec


    public init(regionId: String,instanceSpec:InstanceSpec){
        self.instanceSpec = instanceSpec
        super.init(regionId: regionId)
    }


    enum CreateInstancesRequestRequestCodingKeys: String, CodingKey {
        case clientToken
        case instanceSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateInstancesRequestRequestCodingKeys.self)
        try encoderContainer.encode(clientToken, forKey: .clientToken)
        try encoderContainer.encode(instanceSpec, forKey: .instanceSpec)

    }
}
