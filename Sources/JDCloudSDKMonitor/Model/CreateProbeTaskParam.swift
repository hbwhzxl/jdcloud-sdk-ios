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

///  createProbeTaskParam
@objc(CreateProbeTaskParam)
public class CreateProbeTaskParam:NSObject,Codable{
    /// 探测地址，探测类型为http：内容为url（校验http或https头）；探测类型为telnet：内容为ip或域名（只允许中英文 、数字、中划线（-）、小数点（.）、开头及结尾均不能含有“-”）
    /// Required:true
    var address:String
    /// 探测间隔（单位：秒）：默认值：300，取值范围[60,1200]
    var frequency:Int64?
    /// http body：选择探测类型为1&#x3D;http时有效，最长不超过1024字节
      /// in: query
    var httpBody:String?
    /// http cookie：选择探测类型为1&#x3D;http时有效，最大允许20个key、value对，最长不超过1024字节
    var httpCookie:KeyValue?
    /// http header：选择探测类型为1&#x3D;http时有效，最大允许20个key、value对，最长不超过1024字节
    var httpHeader:KeyValue?
    /// http探测方法：选择探测类型为1&#x3D;http时有效，默认值为1&#x3D;get，可选值：1:get、2:post、3:head
    var httpType:Int64?
    /// task名称，不允许重复，长度不超过32字符，只允许中英文、数字、下划线_、中划线-, [0-9][a-z] [A-Z] [- _ ]
    /// Required:true
    var name:String
    /// 探测端口，探测类型为telnet时必填，取值范围 [1-65535]，http类型忽略该参数
      /// in: query
    var port:Int64?
    /// 探测类型：1&#x3D;http、2&#x3D;telnet
    /// Required:true
    var probeType:Int64
    /// 探测源（发起对探测目标探测的云主机，需安装相应的agent才能探测）
    /// Required:true
    var probes:Probe?
    /// 探测目标id：该探测对象的uuid，任务类型为2：rds、3：redis时必填，
    var targetId:String?
    /// 探测目标region：该探测对象所在region，任务类型为2：rds、3：redis时必填
      /// in: query
    var targetRegion:String?
    /// task类型：1&#x3D;url/ip、2&#x3D;RDS、3&#x3D;redis
    /// Required:true
    var taskType:Int64
    /// 探测超时时间（单位：秒）：默认值:5，取值范围 [1,300]
    var timeout:Int64?



    public  init(address:String,name:String,probeType:Int64,probes:Probe?,taskType:Int64){
             self.address = address
             self.name = name
             self.probeType = probeType
             self.probes = probes
             self.taskType = taskType
    }

    enum CreateProbeTaskParamCodingKeys: String, CodingKey {
        case address
        case frequency
        case httpBody
        case httpCookie
        case httpHeader
        case httpType
        case name
        case port
        case probeType
        case probes
        case targetId
        case targetRegion
        case taskType
        case timeout
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateProbeTaskParamCodingKeys.self)
        self.address = try decoderContainer.decode(String.self, forKey: .address)
        self.frequency = try decoderContainer.decode(Int64?.self, forKey: .frequency)
        self.httpBody = try decoderContainer.decode(String?.self, forKey: .httpBody)
        self.httpCookie = try decoderContainer.decode(KeyValue?.self, forKey: .httpCookie)
        self.httpHeader = try decoderContainer.decode(KeyValue?.self, forKey: .httpHeader)
        self.httpType = try decoderContainer.decode(Int64?.self, forKey: .httpType)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        self.port = try decoderContainer.decode(Int64?.self, forKey: .port)
        self.probeType = try decoderContainer.decode(Int64.self, forKey: .probeType)
        self.probes = try decoderContainer.decode(Probe?.self, forKey: .probes)
        self.targetId = try decoderContainer.decode(String?.self, forKey: .targetId)
        self.targetRegion = try decoderContainer.decode(String?.self, forKey: .targetRegion)
        self.taskType = try decoderContainer.decode(Int64.self, forKey: .taskType)
        self.timeout = try decoderContainer.decode(Int64?.self, forKey: .timeout)
    }
}
public extension CreateProbeTaskParam{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateProbeTaskParamCodingKeys.self)
         try encoderContainer.encode(address, forKey: .address)
         try encoderContainer.encode(frequency, forKey: .frequency)
         try encoderContainer.encode(httpBody, forKey: .httpBody)
         try encoderContainer.encode(httpCookie, forKey: .httpCookie)
         try encoderContainer.encode(httpHeader, forKey: .httpHeader)
         try encoderContainer.encode(httpType, forKey: .httpType)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(probeType, forKey: .probeType)
         try encoderContainer.encode(probes, forKey: .probes)
         try encoderContainer.encode(targetId, forKey: .targetId)
         try encoderContainer.encode(targetRegion, forKey: .targetRegion)
         try encoderContainer.encode(taskType, forKey: .taskType)
         try encoderContainer.encode(timeout, forKey: .timeout)
    }
}
