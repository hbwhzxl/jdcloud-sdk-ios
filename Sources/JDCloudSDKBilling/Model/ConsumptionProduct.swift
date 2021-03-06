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

///  consumptionProduct
@objc(ConsumptionProduct)
public class ConsumptionProduct:NSObject,Codable{
    /// appCode
    var appCode:String?
    /// appCodeName
    var appCodeName:String?
    /// serviceCode
    var serviceCode:String?
    /// serviceCodeName
    var serviceCodeName:String?
    /// 优惠后金额
    var actualFee:Double?
    /// 现金支付
    var cashPayFee:Double?
    /// 余额支付
    var balancePayFee:Double?
    /// 代金券支付金额
    var cashCouponPayFee:Double?
    /// 欠费金额
    var arrearFee:Double?
    /// ProductDetails
    var productDetails:Consumption?
    /// ProductDetailList
    var productDetailList:ProductDetailList?



    public override init(){
            super.init()
    }

    enum ConsumptionProductCodingKeys: String, CodingKey {
        case appCode
        case appCodeName
        case serviceCode
        case serviceCodeName
        case actualFee
        case cashPayFee
        case balancePayFee
        case cashCouponPayFee
        case arrearFee
        case productDetails
        case productDetailList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConsumptionProductCodingKeys.self)
        self.appCode = try decoderContainer.decode(String?.self, forKey: .appCode)
        self.appCodeName = try decoderContainer.decode(String?.self, forKey: .appCodeName)
        self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        self.serviceCodeName = try decoderContainer.decode(String?.self, forKey: .serviceCodeName)
        self.actualFee = try decoderContainer.decode(Double?.self, forKey: .actualFee)
        self.cashPayFee = try decoderContainer.decode(Double?.self, forKey: .cashPayFee)
        self.balancePayFee = try decoderContainer.decode(Double?.self, forKey: .balancePayFee)
        self.cashCouponPayFee = try decoderContainer.decode(Double?.self, forKey: .cashCouponPayFee)
        self.arrearFee = try decoderContainer.decode(Double?.self, forKey: .arrearFee)
        self.productDetails = try decoderContainer.decode(Consumption?.self, forKey: .productDetails)
        self.productDetailList = try decoderContainer.decode(ProductDetailList?.self, forKey: .productDetailList)
    }
}
public extension ConsumptionProduct{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConsumptionProductCodingKeys.self)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(appCodeName, forKey: .appCodeName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(serviceCodeName, forKey: .serviceCodeName)
         try encoderContainer.encode(actualFee, forKey: .actualFee)
         try encoderContainer.encode(cashPayFee, forKey: .cashPayFee)
         try encoderContainer.encode(balancePayFee, forKey: .balancePayFee)
         try encoderContainer.encode(cashCouponPayFee, forKey: .cashCouponPayFee)
         try encoderContainer.encode(arrearFee, forKey: .arrearFee)
         try encoderContainer.encode(productDetails, forKey: .productDetails)
         try encoderContainer.encode(productDetailList, forKey: .productDetailList)
    }
}
