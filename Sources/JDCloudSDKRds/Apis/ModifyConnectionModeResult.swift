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

   实例管理
   实例管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  修改MySQL实例的连接模式：标准模式(standard) 和高安全模式(security).&lt;br&gt;- **标准模式**：响应时间短，但没有 SQL 审计和拦截的能力。&lt;br&gt;- **高安全模式**：具备一定的 SQL注入拦截能力（通过分析表达式、关键系统函数等来实现防御 SQL 注入攻击），并可开启 SQL 审计，但会增加一定的响应时间。&lt;br&gt;- 仅支持MySQL
public class ModifyConnectionModeResult:JdCloudResult
{
}