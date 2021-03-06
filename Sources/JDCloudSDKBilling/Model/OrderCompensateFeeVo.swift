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

///  orderCompensateFeeVo
@objc(OrderCompensateFeeVo)
public class OrderCompensateFeeVo:NSObject,Codable{
    /// 用户pin
    var pin:String?
    /// 应用码
    var appCode:String?
    /// 服务码
    var serviceCode:String?
    /// 资源id
    var resourceId:String?
    /// 资源区域
    var region:String?
    /// 开始时间
    var startTime:String?
    /// 结束时间
    var endTime:String?
    /// 计算总价
    var totalFee:Double?
    /// 计费类型 1:按配置 2:按用量 3:包年包月 4:一次性
    var billingType:Int?



    public override init(){
            super.init()
    }

    enum OrderCompensateFeeVoCodingKeys: String, CodingKey {
        case pin
        case appCode
        case serviceCode
        case resourceId
        case region
        case startTime
        case endTime
        case totalFee
        case billingType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderCompensateFeeVoCodingKeys.self)
        self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        self.appCode = try decoderContainer.decode(String?.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        self.region = try decoderContainer.decode(String?.self, forKey: .region)
        self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        self.totalFee = try decoderContainer.decode(Double?.self, forKey: .totalFee)
        self.billingType = try decoderContainer.decode(Int?.self, forKey: .billingType)
    }
}
public extension OrderCompensateFeeVo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderCompensateFeeVoCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(totalFee, forKey: .totalFee)
         try encoderContainer.encode(billingType, forKey: .billingType)
    }
}
