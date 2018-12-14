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

   云部署
   云部署应用、部署组、上线单相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class DeployJDCloudClient :JDCloudClient{
    
    private final var deployJDCloudClient:DeployJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "deploy" + "v1"
    
    public let serviceName: String = "deploy"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func describeAppAsync(request:DescribeAppRequest,requestComplation:@escaping ExecuteResult<DescribeAppResult>) throws {
        deployJDCloudClient = self
        try DescribeAppExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeConfigMetasAsync(request:DescribeConfigMetasRequest,requestComplation:@escaping ExecuteResult<DescribeConfigMetasResult>) throws {
        deployJDCloudClient = self
        try DescribeConfigMetasExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyAppAsync(request:ModifyAppRequest,requestComplation:@escaping ExecuteResult<ModifyAppResult>) throws {
        deployJDCloudClient = self
        try ModifyAppExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeInstancesResult>) throws {
        deployJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteAppAsync(request:DeleteAppRequest,requestComplation:@escaping ExecuteResult<DeleteAppResult>) throws {
        deployJDCloudClient = self
        try DeleteAppExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteDeployAsync(request:DeleteDeployRequest,requestComplation:@escaping ExecuteResult<DeleteDeployResult>) throws {
        deployJDCloudClient = self
        try DeleteDeployExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAppAsync(request:CreateAppRequest,requestComplation:@escaping ExecuteResult<CreateAppResult>) throws {
        deployJDCloudClient = self
        try CreateAppExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func rollbackDeployAsync(request:RollbackDeployRequest,requestComplation:@escaping ExecuteResult<RollbackDeployResult>) throws {
        deployJDCloudClient = self
        try RollbackDeployExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAppsAsync(request:DescribeAppsRequest,requestComplation:@escaping ExecuteResult<DescribeAppsResult>) throws {
        deployJDCloudClient = self
        try DescribeAppsExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeDeploysAsync(request:DescribeDeploysRequest,requestComplation:@escaping ExecuteResult<DescribeDeploysResult>) throws {
        deployJDCloudClient = self
        try DescribeDeploysExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createGroupAsync(request:CreateGroupRequest,requestComplation:@escaping ExecuteResult<CreateGroupResult>) throws {
        deployJDCloudClient = self
        try CreateGroupExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyDeployAsync(request:ModifyDeployRequest,requestComplation:@escaping ExecuteResult<ModifyDeployResult>) throws {
        deployJDCloudClient = self
        try ModifyDeployExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteMilestoneAsync(request:DeleteMilestoneRequest,requestComplation:@escaping ExecuteResult<DeleteMilestoneResult>) throws {
        deployJDCloudClient = self
        try DeleteMilestoneExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyGroupAsync(request:ModifyGroupRequest,requestComplation:@escaping ExecuteResult<ModifyGroupResult>) throws {
        deployJDCloudClient = self
        try ModifyGroupExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteGroupAsync(request:DeleteGroupRequest,requestComplation:@escaping ExecuteResult<DeleteGroupResult>) throws {
        deployJDCloudClient = self
        try DeleteGroupExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createDeployAsync(request:CreateDeployRequest,requestComplation:@escaping ExecuteResult<CreateDeployResult>) throws {
        deployJDCloudClient = self
        try CreateDeployExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeDeployAsync(request:DescribeDeployRequest,requestComplation:@escaping ExecuteResult<DescribeDeployResult>) throws {
        deployJDCloudClient = self
        try DescribeDeployExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeGroupsAsync(request:DescribeGroupsRequest,requestComplation:@escaping ExecuteResult<DescribeGroupsResult>) throws {
        deployJDCloudClient = self
        try DescribeGroupsExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeGroupAsync(request:DescribeGroupRequest,requestComplation:@escaping ExecuteResult<DescribeGroupResult>) throws {
        deployJDCloudClient = self
        try DescribeGroupExecutor(jdCloudClient: deployJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension DeployJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "deploy.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "deploy.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}