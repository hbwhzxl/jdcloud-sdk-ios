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

   JDCLOUD IAS Services API
   京东云联合登陆Api

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取应用
@objc(GetAppRequest)
public class GetAppRequest:JdCloudRequest
{
    /// 应用ID，应用创建时由京东云分配的16位数字ID
    var clientId:String


    public init(regionId: String,clientId:String){
        self.clientId = clientId
        super.init(regionId: regionId)
    }


    enum GetAppRequestRequestCodingKeys: String, CodingKey {
        case clientId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAppRequestRequestCodingKeys.self)
        try encoderContainer.encode(clientId, forKey: .clientId)

    }
}
