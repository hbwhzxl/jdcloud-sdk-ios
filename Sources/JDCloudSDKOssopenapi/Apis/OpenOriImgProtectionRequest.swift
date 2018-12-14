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

   原图保护openAPI
   原图保护openAPI

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  开启原图保护
public class OpenOriImgProtectionRequest:JdCloudRequest
{
    /// 原图保护图像格式列表，符合固定XML格式
    var imageExtensions:String

    /// Bucket名称
    var bucketName:String


    public init(regionId: String,imageExtensions:String,bucketName:String){
        self.imageExtensions = imageExtensions
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum OpenOriImgProtectionRequestRequestCodingKeys: String, CodingKey {
        case imageExtensions
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: OpenOriImgProtectionRequestRequestCodingKeys.self)
        try container.encode(imageExtensions, forKey: .imageExtensions)
        try container.encode(bucketName, forKey: .bucketName)

    }
}