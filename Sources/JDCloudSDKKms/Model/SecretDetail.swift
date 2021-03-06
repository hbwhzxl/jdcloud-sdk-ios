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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  secretDetail
@objc(SecretDetail)
public class SecretDetail:NSObject,Codable{
    /// 密钥的基本信息
    /// Required:true
    var secretInfo:SecretInfo
    /// Secret版本的个数
    /// Required:true
    var secretVersionCount:Int
    /// Secret版本详情的列表
    /// Required:true
    var secretVersionList:SecretVersionItem?



    public  init(secretInfo:SecretInfo,secretVersionCount:Int,secretVersionList:SecretVersionItem?){
             self.secretInfo = secretInfo
             self.secretVersionCount = secretVersionCount
             self.secretVersionList = secretVersionList
    }

    enum SecretDetailCodingKeys: String, CodingKey {
        case secretInfo
        case secretVersionCount
        case secretVersionList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SecretDetailCodingKeys.self)
        self.secretInfo = try decoderContainer.decode(SecretInfo.self, forKey: .secretInfo)
        self.secretVersionCount = try decoderContainer.decode(Int.self, forKey: .secretVersionCount)
        self.secretVersionList = try decoderContainer.decode(SecretVersionItem?.self, forKey: .secretVersionList)
    }
}
public extension SecretDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SecretDetailCodingKeys.self)
         try encoderContainer.encode(secretInfo, forKey: .secretInfo)
         try encoderContainer.encode(secretVersionCount, forKey: .secretVersionCount)
         try encoderContainer.encode(secretVersionList, forKey: .secretVersionList)
    }
}
