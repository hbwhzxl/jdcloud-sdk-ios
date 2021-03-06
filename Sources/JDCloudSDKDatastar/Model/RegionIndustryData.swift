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

///  regionIndustryData
@objc(RegionIndustryData)
public class RegionIndustryData:NSObject,Codable{
    /// 区域
    var region:String?
    /// 行业
    var industry:String?
    /// 一级指标
    var firstIndex:String?
    /// 二级指标
    var secondIndex:String?
    /// 日期
    var dateTime:String?
    /// 日期类型（月、天）
    var dateType:String?
    /// 指标数值
    var indexValue:String?
    /// 数值单位
    var valueUnit:String?
    /// 属性类别
    var attrType:String?
    /// 属性值
    var attrValue:String?
    /// 属性值扩展内容
    var attrValueExt:String?



    public override init(){
            super.init()
    }

    enum RegionIndustryDataCodingKeys: String, CodingKey {
        case region
        case industry
        case firstIndex
        case secondIndex
        case dateTime
        case dateType
        case indexValue
        case valueUnit
        case attrType
        case attrValue
        case attrValueExt
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RegionIndustryDataCodingKeys.self)
        self.region = try decoderContainer.decode(String?.self, forKey: .region)
        self.industry = try decoderContainer.decode(String?.self, forKey: .industry)
        self.firstIndex = try decoderContainer.decode(String?.self, forKey: .firstIndex)
        self.secondIndex = try decoderContainer.decode(String?.self, forKey: .secondIndex)
        self.dateTime = try decoderContainer.decode(String?.self, forKey: .dateTime)
        self.dateType = try decoderContainer.decode(String?.self, forKey: .dateType)
        self.indexValue = try decoderContainer.decode(String?.self, forKey: .indexValue)
        self.valueUnit = try decoderContainer.decode(String?.self, forKey: .valueUnit)
        self.attrType = try decoderContainer.decode(String?.self, forKey: .attrType)
        self.attrValue = try decoderContainer.decode(String?.self, forKey: .attrValue)
        self.attrValueExt = try decoderContainer.decode(String?.self, forKey: .attrValueExt)
    }
}
public extension RegionIndustryData{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RegionIndustryDataCodingKeys.self)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(industry, forKey: .industry)
         try encoderContainer.encode(firstIndex, forKey: .firstIndex)
         try encoderContainer.encode(secondIndex, forKey: .secondIndex)
         try encoderContainer.encode(dateTime, forKey: .dateTime)
         try encoderContainer.encode(dateType, forKey: .dateType)
         try encoderContainer.encode(indexValue, forKey: .indexValue)
         try encoderContainer.encode(valueUnit, forKey: .valueUnit)
         try encoderContainer.encode(attrType, forKey: .attrType)
         try encoderContainer.encode(attrValue, forKey: .attrValue)
         try encoderContainer.encode(attrValueExt, forKey: .attrValueExt)
    }
}
