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

///  resource
@objc(Resource)
public class Resource:NSObject,Codable{
    /// 资源id集合，传*表示对所有id生效
    /// Required:true
    var ids:[String?]
    /// 资源类型，云主机-server、镜像-image、云硬盘-volume、vpc-vpc、公网Ip-floatingIp、负载均衡-loadbalance、云数据库(mysql)-database、云缓存-cache
    /// Required:true
    var type:String



    public  init(ids:[String?],type:String){
             self.ids = ids
             self.type = type
    }

    enum ResourceCodingKeys: String, CodingKey {
        case ids
        case type
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceCodingKeys.self)
        self.ids = try decoderContainer.decode([String?].self, forKey: .ids)
        self.type = try decoderContainer.decode(String.self, forKey: .type)
    }
}
public extension Resource{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceCodingKeys.self)
         try encoderContainer.encode(ids, forKey: .ids)
         try encoderContainer.encode(type, forKey: .type)
    }
}
