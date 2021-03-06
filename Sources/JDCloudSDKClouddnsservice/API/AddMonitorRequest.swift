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

   网站监控
   云解析OpenAPI网站监控接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加子域名的监控项，默认把子域名的所有监控项都添加上监控
@objc(AddMonitorRequest)
public class AddMonitorRequest:JdCloudRequest
{
    /// 子域名
    var subDomainName:String

    /// 域名ID，请使用getDomains接口获取。
    var domainId:String


    public init(regionId: String,subDomainName:String,domainId:String){
        self.subDomainName = subDomainName
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum AddMonitorRequestRequestCodingKeys: String, CodingKey {
        case subDomainName
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddMonitorRequestRequestCodingKeys.self)
        try encoderContainer.encode(subDomainName, forKey: .subDomainName)
        try encoderContainer.encode(domainId, forKey: .domainId)

    }
}
