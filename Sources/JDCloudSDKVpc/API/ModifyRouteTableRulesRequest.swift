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

   路由表
   路由表相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改路由表规则
@objc(ModifyRouteTableRulesRequest)
public class ModifyRouteTableRulesRequest:JdCloudRequest
{
    /// 路由表规则信息
    var modifyRouteTableRuleSpecs:ModifyRouteTableRules?

    /// RouteTable ID
    var routeTableId:String


    public init(regionId: String,modifyRouteTableRuleSpecs:ModifyRouteTableRules?,routeTableId:String){
        self.modifyRouteTableRuleSpecs = modifyRouteTableRuleSpecs
        self.routeTableId = routeTableId
        super.init(regionId: regionId)
    }


    enum ModifyRouteTableRulesRequestRequestCodingKeys: String, CodingKey {
        case modifyRouteTableRuleSpecs
        case routeTableId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyRouteTableRulesRequestRequestCodingKeys.self)
        try encoderContainer.encode(modifyRouteTableRuleSpecs, forKey: .modifyRouteTableRuleSpecs)
        try encoderContainer.encode(routeTableId, forKey: .routeTableId)

    }
}
