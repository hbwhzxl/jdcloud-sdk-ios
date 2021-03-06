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

///  cacheInstanceSpec
@objc(CacheInstanceSpec)
public class CacheInstanceSpec:NSObject,Codable{
    /// 缓存redis实例所属的私有网络ID
    /// Required:true
    var vpcId:String
    /// 缓存redis实例在私有网络下所属的子网ID
    /// Required:true
    var subnetId:String
    /// 缓存redis实例名称，只支持数字、字母、英文下划线、中文，且不少于2字符不超过32字符
    /// Required:true
    var cacheInstanceName:String
    /// 缓存redis实例规格代码，参见实例规格代码表&lt;a href&#x3D;&quot;https://www.jdcloud.com/help/detail/411/isCatalog/1&quot;&gt;实例规格代码&lt;/a&gt;。
    /// Required:true
    var cacheInstanceClass:String
    /// 密码，为空即为免密，包含且只支持字母及数字，不少于8字符不超过16字符
    var password:String?
    /// 缓存Redis实例所在区域可用区ID信息
    /// Required:true
    var azId:AzIdSpec
    /// 缓存Redis实例描述，不能超过256个字符
    var cacheInstanceDescription:String?



    public  init(vpcId:String,subnetId:String,cacheInstanceName:String,cacheInstanceClass:String,azId:AzIdSpec){
             self.vpcId = vpcId
             self.subnetId = subnetId
             self.cacheInstanceName = cacheInstanceName
             self.cacheInstanceClass = cacheInstanceClass
             self.azId = azId
    }

    enum CacheInstanceSpecCodingKeys: String, CodingKey {
        case vpcId
        case subnetId
        case cacheInstanceName
        case cacheInstanceClass
        case password
        case azId
        case cacheInstanceDescription
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CacheInstanceSpecCodingKeys.self)
        self.vpcId = try decoderContainer.decode(String.self, forKey: .vpcId)
        self.subnetId = try decoderContainer.decode(String.self, forKey: .subnetId)
        self.cacheInstanceName = try decoderContainer.decode(String.self, forKey: .cacheInstanceName)
        self.cacheInstanceClass = try decoderContainer.decode(String.self, forKey: .cacheInstanceClass)
        self.password = try decoderContainer.decode(String?.self, forKey: .password)
        self.azId = try decoderContainer.decode(AzIdSpec.self, forKey: .azId)
        self.cacheInstanceDescription = try decoderContainer.decode(String?.self, forKey: .cacheInstanceDescription)
    }
}
public extension CacheInstanceSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CacheInstanceSpecCodingKeys.self)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(cacheInstanceName, forKey: .cacheInstanceName)
         try encoderContainer.encode(cacheInstanceClass, forKey: .cacheInstanceClass)
         try encoderContainer.encode(password, forKey: .password)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(cacheInstanceDescription, forKey: .cacheInstanceDescription)
    }
}
