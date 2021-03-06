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

///  modifyElasticIpSpec
@objc(ModifyElasticIpSpec)
public class ModifyElasticIpSpec:NSObject,Codable{
    /// 弹性公网IP的限速（单位：Mbps），取值范围为[1-200]
    /// Required:true
    var bandwidthMbps:Int



    public  init(bandwidthMbps:Int){
             self.bandwidthMbps = bandwidthMbps
    }

    enum ModifyElasticIpSpecCodingKeys: String, CodingKey {
        case bandwidthMbps
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyElasticIpSpecCodingKeys.self)
        self.bandwidthMbps = try decoderContainer.decode(Int.self, forKey: .bandwidthMbps)
    }
}
public extension ModifyElasticIpSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyElasticIpSpecCodingKeys.self)
         try encoderContainer.encode(bandwidthMbps, forKey: .bandwidthMbps)
    }
}
