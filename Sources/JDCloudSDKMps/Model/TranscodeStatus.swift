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

   媒体处理相关接口
   媒体处理API

   OpenAPI spec version: 1.0.0
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  transcodeStatus
@objc(TranscodeStatus)
public class TranscodeStatus:NSObject,Codable{
    /// 状态 (SUCESS, ERROR, PENDDING, RUNNING)
    /// Required:true
    var status:String
    /// 错误码
    var errorCode:Int?
    /// 通知消息, 由work调用, 暂时方案
    var notifyMessage:String?



    public  init(status:String){
             self.status = status
    }

    enum TranscodeStatusCodingKeys: String, CodingKey {
        case status
        case errorCode
        case notifyMessage
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TranscodeStatusCodingKeys.self)
        self.status = try decoderContainer.decode(String.self, forKey: .status)
        self.errorCode = try decoderContainer.decode(Int?.self, forKey: .errorCode)
        self.notifyMessage = try decoderContainer.decode(String?.self, forKey: .notifyMessage)
    }
}
public extension TranscodeStatus{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TranscodeStatusCodingKeys.self)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(errorCode, forKey: .errorCode)
         try encoderContainer.encode(notifyMessage, forKey: .notifyMessage)
    }
}
