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

   媒体处理 API
   媒体处理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class MpsJDCloudClient :JDCloudClient{
    
    private final var mpsJDCloudClient:MpsJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "mps" + "v1"
    
    public let serviceName: String = "mps"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func createThumbnailTaskAsync(request:CreateThumbnailTaskRequest,requestComplation:@escaping ExecuteResult<CreateThumbnailTaskResult>) throws {
        mpsJDCloudClient = self
        try CreateThumbnailTaskExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func listThumbnailTaskAsync(request:ListThumbnailTaskRequest,requestComplation:@escaping ExecuteResult<ListThumbnailTaskResult>) throws {
        mpsJDCloudClient = self
        try ListThumbnailTaskExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getNotificationAsync(request:GetNotificationRequest,requestComplation:@escaping ExecuteResult<GetNotificationResult>) throws {
        mpsJDCloudClient = self
        try GetNotificationExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getThumbnailTaskAsync(request:GetThumbnailTaskRequest,requestComplation:@escaping ExecuteResult<GetThumbnailTaskResult>) throws {
        mpsJDCloudClient = self
        try GetThumbnailTaskExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getImageStyleAsync(request:GetImageStyleRequest,requestComplation:@escaping ExecuteResult<GetImageStyleResult>) throws {
        mpsJDCloudClient = self
        try GetImageStyleExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func setNotificationAsync(request:SetNotificationRequest,requestComplation:@escaping ExecuteResult<SetNotificationResult>) throws {
        mpsJDCloudClient = self
        try SetNotificationExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createImageStyleAsync(request:CreateImageStyleRequest,requestComplation:@escaping ExecuteResult<CreateImageStyleResult>) throws {
        mpsJDCloudClient = self
        try CreateImageStyleExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func listImageStyleAsync(request:ListImageStyleRequest,requestComplation:@escaping ExecuteResult<ListImageStyleResult>) throws {
        mpsJDCloudClient = self
        try ListImageStyleExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateImageStyleAsync(request:UpdateImageStyleRequest,requestComplation:@escaping ExecuteResult<UpdateImageStyleResult>) throws {
        mpsJDCloudClient = self
        try UpdateImageStyleExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteImageStyleAsync(request:DeleteImageStyleRequest,requestComplation:@escaping ExecuteResult<DeleteImageStyleResult>) throws {
        mpsJDCloudClient = self
        try DeleteImageStyleExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func countImageStyleAsync(request:CountImageStyleRequest,requestComplation:@escaping ExecuteResult<CountImageStyleResult>) throws {
        mpsJDCloudClient = self
        try CountImageStyleExecutor(jdCloudClient: mpsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension MpsJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "mps.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }

    convenience init() throws{

        if(GlobalConfig.credential == nil)
        {
            throw SDKError.argumentNullError("credential can not be nil")
        }else{
              var sdkEnvironment:SDKEnvironment
            if(GlobalConfig.sdkEnvironment != nil)
            {
                sdkEnvironment = GlobalConfig.sdkEnvironment!
            }else{
                sdkEnvironment = SDKEnvironment(endPoint: "mps.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}