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

///  slowLogAttributes
@objc(SlowLogAttributes)
public class SlowLogAttributes:NSObject,Codable{
    /// 数据库名，表示该SQL是在哪个数据库中执行的
    var dbName:String?
    /// SQL语句
    var sql:String?
    /// SQL语句执行的开始时间，格式为YYYY-MM-DD hh:mm:ss
    var executionTime:String?
    /// SQL语句执行的时长，单位秒
    var elapsedTime:Double?
    /// SQL语句等待锁的时间，单位秒
    var lockTime:Double?
    /// SQL语句扫描的行数
    var rowsExamined:Int?
    /// SQL语句返回的行数
    var rowsReturned:Int?



    public override init(){
            super.init()
    }

    enum SlowLogAttributesCodingKeys: String, CodingKey {
        case dbName
        case sql
        case executionTime
        case elapsedTime
        case lockTime
        case rowsExamined
        case rowsReturned
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SlowLogAttributesCodingKeys.self)
        self.dbName = try decoderContainer.decode(String?.self, forKey: .dbName)
        self.sql = try decoderContainer.decode(String?.self, forKey: .sql)
        self.executionTime = try decoderContainer.decode(String?.self, forKey: .executionTime)
        self.elapsedTime = try decoderContainer.decode(Double?.self, forKey: .elapsedTime)
        self.lockTime = try decoderContainer.decode(Double?.self, forKey: .lockTime)
        self.rowsExamined = try decoderContainer.decode(Int?.self, forKey: .rowsExamined)
        self.rowsReturned = try decoderContainer.decode(Int?.self, forKey: .rowsReturned)
    }
}
public extension SlowLogAttributes{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SlowLogAttributesCodingKeys.self)
         try encoderContainer.encode(dbName, forKey: .dbName)
         try encoderContainer.encode(sql, forKey: .sql)
         try encoderContainer.encode(executionTime, forKey: .executionTime)
         try encoderContainer.encode(elapsedTime, forKey: .elapsedTime)
         try encoderContainer.encode(lockTime, forKey: .lockTime)
         try encoderContainer.encode(rowsExamined, forKey: .rowsExamined)
         try encoderContainer.encode(rowsReturned, forKey: .rowsReturned)
    }
}
