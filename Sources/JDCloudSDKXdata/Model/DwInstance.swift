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

///  dwInstance
@objc(DwInstance)
public class DwInstance:NSObject,Codable{
    /// 实例名
    /// Required:true
    var instanceName:String
    /// 实例描述
    var comments:String?
    /// 实例属主
    var instanceOwnerName:String?
    /// 实例所属区域
    var area:String?
    /// 实例别名（在页面显示）
    var uname:String?
    /// 实例创建时间
    var createTime:String?



    public  init(instanceName:String){
             self.instanceName = instanceName
    }

    enum DwInstanceCodingKeys: String, CodingKey {
        case instanceName
        case comments
        case instanceOwnerName
        case area
        case uname
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwInstanceCodingKeys.self)
        self.instanceName = try decoderContainer.decode(String.self, forKey: .instanceName)
        self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        self.instanceOwnerName = try decoderContainer.decode(String?.self, forKey: .instanceOwnerName)
        self.area = try decoderContainer.decode(String?.self, forKey: .area)
        self.uname = try decoderContainer.decode(String?.self, forKey: .uname)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
    }
}
public extension DwInstance{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwInstanceCodingKeys.self)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(comments, forKey: .comments)
         try encoderContainer.encode(instanceOwnerName, forKey: .instanceOwnerName)
         try encoderContainer.encode(area, forKey: .area)
         try encoderContainer.encode(uname, forKey: .uname)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}
