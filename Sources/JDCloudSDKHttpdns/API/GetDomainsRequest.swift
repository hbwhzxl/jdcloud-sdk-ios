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
   httpdns OpenAPI域名接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询使用httpdns服务的域名
@objc(GetDomainsRequest)
public class GetDomainsRequest:JdCloudRequest
{
    /// 当前页数，起始值为1
    var pageIndex:Int

    /// 分页查询时设置的每页行数
    var pageSize:Int

    /// 关键字，按照”%domainName%”模式搜索域名
    var domainName:String?


    public init(regionId: String,pageIndex:Int,pageSize:Int){
        self.pageIndex = pageIndex
        self.pageSize = pageSize
        super.init(regionId: regionId)
    }


    enum GetDomainsRequestRequestCodingKeys: String, CodingKey {
        case pageIndex
        case pageSize
        case domainName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetDomainsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageIndex, forKey: .pageIndex)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(domainName, forKey: .domainName)

    }
}
