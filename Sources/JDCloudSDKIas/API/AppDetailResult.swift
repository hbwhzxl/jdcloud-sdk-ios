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

   JDCLOUD IAS Operateback Services API
   京东云联合登陆运营后台应用管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 运营后台获取应用详情
@objc(AppDetailResult)
public class AppDetailResult:NSObject,JdCloudResult
{
    /// 应用
    var clientId:String?

    /// 应用名
    var clientName:String?

    /// tokenEndpointAuthMethod
    var tokenEndpointAuthMethod:String?

    /// grantTypes
    var grantTypes:String?

    /// responseTypes
    var responseTypes:String?

    /// redirectUris
    var redirectUris:String?

    /// clientUri
    var clientUri:String?

    /// logoUri
    var logoUri:String?

    /// tosUri
    var tosUri:String?

    /// policyUri
    var policyUri:String?

    /// scope
    var scope:String?

    /// jwksUri
    var jwksUri:String?

    /// jwks
    var jwks:String?

    /// contacts
    var contacts:String?

    /// extension
    var extensionValue:String?

    /// accessTokenValiditySeconds
    var accessTokenValiditySeconds:Int?

    /// refreshTokenValiditySeconds
    var refreshTokenValiditySeconds:Int?

    /// multiTenant
    var multiTenant:Bool?

    /// secretUpdateTime
    var secretUpdateTime:Int64?

    /// updateTime
    var updateTime:Int64?

    /// createTime
    var createTime:Int64?

    /// account
    var account:String?

    /// userType
    var userType:String?

    /// state
    var state:String?



    public override init(){
        super.init()
    }

    enum AppDetailResultCodingKeys: String, CodingKey {
        case clientId
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
        case responseTypes
        case redirectUris
        case clientUri
        case logoUri
        case tosUri
        case policyUri
        case scope
        case jwksUri
        case jwks
        case contacts
        case extensionValue = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secretUpdateTime
        case updateTime
        case createTime
        case account
        case userType
        case state
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AppDetailResultCodingKeys.self)
        self.clientId = try decoderContainer.decode(String?.self, forKey: .clientId)
        self.clientName = try decoderContainer.decode(String?.self, forKey: .clientName)
        self.tokenEndpointAuthMethod = try decoderContainer.decode(String?.self, forKey: .tokenEndpointAuthMethod)
        self.grantTypes = try decoderContainer.decode(String?.self, forKey: .grantTypes)
        self.responseTypes = try decoderContainer.decode(String?.self, forKey: .responseTypes)
        self.redirectUris = try decoderContainer.decode(String?.self, forKey: .redirectUris)
        self.clientUri = try decoderContainer.decode(String?.self, forKey: .clientUri)
        self.logoUri = try decoderContainer.decode(String?.self, forKey: .logoUri)
        self.tosUri = try decoderContainer.decode(String?.self, forKey: .tosUri)
        self.policyUri = try decoderContainer.decode(String?.self, forKey: .policyUri)
        self.scope = try decoderContainer.decode(String?.self, forKey: .scope)
        self.jwksUri = try decoderContainer.decode(String?.self, forKey: .jwksUri)
        self.jwks = try decoderContainer.decode(String?.self, forKey: .jwks)
        self.contacts = try decoderContainer.decode(String?.self, forKey: .contacts)
        self.extensionValue = try decoderContainer.decode(String?.self, forKey: .extensionValue)
        self.accessTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .accessTokenValiditySeconds)
        self.refreshTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .refreshTokenValiditySeconds)
        self.multiTenant = try decoderContainer.decode(Bool?.self, forKey: .multiTenant)
        self.secretUpdateTime = try decoderContainer.decode(Int64?.self, forKey: .secretUpdateTime)
        self.updateTime = try decoderContainer.decode(Int64?.self, forKey: .updateTime)
        self.createTime = try decoderContainer.decode(Int64?.self, forKey: .createTime)
        self.account = try decoderContainer.decode(String?.self, forKey: .account)
        self.userType = try decoderContainer.decode(String?.self, forKey: .userType)
        self.state = try decoderContainer.decode(String?.self, forKey: .state)
    }
}
public extension AppDetailResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AppDetailResultCodingKeys.self)
        try encoderContainer.encode(clientId, forKey: .clientId)
        try encoderContainer.encode(clientName, forKey: .clientName)
        try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
        try encoderContainer.encode(grantTypes, forKey: .grantTypes)
        try encoderContainer.encode(responseTypes, forKey: .responseTypes)
        try encoderContainer.encode(redirectUris, forKey: .redirectUris)
        try encoderContainer.encode(clientUri, forKey: .clientUri)
        try encoderContainer.encode(logoUri, forKey: .logoUri)
        try encoderContainer.encode(tosUri, forKey: .tosUri)
        try encoderContainer.encode(policyUri, forKey: .policyUri)
        try encoderContainer.encode(scope, forKey: .scope)
        try encoderContainer.encode(jwksUri, forKey: .jwksUri)
        try encoderContainer.encode(jwks, forKey: .jwks)
        try encoderContainer.encode(contacts, forKey: .contacts)
        try encoderContainer.encode(extensionValue, forKey: .extensionValue)
        try encoderContainer.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
        try encoderContainer.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
        try encoderContainer.encode(multiTenant, forKey: .multiTenant)
        try encoderContainer.encode(secretUpdateTime, forKey: .secretUpdateTime)
        try encoderContainer.encode(updateTime, forKey: .updateTime)
        try encoderContainer.encode(createTime, forKey: .createTime)
        try encoderContainer.encode(account, forKey: .account)
        try encoderContainer.encode(userType, forKey: .userType)
        try encoderContainer.encode(state, forKey: .state)
    }
}
