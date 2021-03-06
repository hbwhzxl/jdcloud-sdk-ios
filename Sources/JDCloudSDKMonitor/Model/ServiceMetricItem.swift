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

///  serviceMetricItem
@objc(ServiceMetricItem)
public class ServiceMetricItem:NSObject,Codable{
    /// Aggregates
    var aggregates:ServiceMetricAggregateItem?
    /// CalculateUnit
    var calculateUnit:String?
    /// Metric
    var metric:String?
    /// Name
    var name:String?



    public override init(){
            super.init()
    }

    enum ServiceMetricItemCodingKeys: String, CodingKey {
        case aggregates
        case calculateUnit
        case metric
        case name
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ServiceMetricItemCodingKeys.self)
        self.aggregates = try decoderContainer.decode(ServiceMetricAggregateItem?.self, forKey: .aggregates)
        self.calculateUnit = try decoderContainer.decode(String?.self, forKey: .calculateUnit)
        self.metric = try decoderContainer.decode(String?.self, forKey: .metric)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
    }
}
public extension ServiceMetricItem{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ServiceMetricItemCodingKeys.self)
         try encoderContainer.encode(aggregates, forKey: .aggregates)
         try encoderContainer.encode(calculateUnit, forKey: .calculateUnit)
         try encoderContainer.encode(metric, forKey: .metric)
         try encoderContainer.encode(name, forKey: .name)
    }
}
