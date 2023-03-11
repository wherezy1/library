package com.where.library.auth.config;

import com.where.library.auth.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/10:16
 * @Description: Oauth2的 AuthenticationManager UserService ClientDetailsService 等方法实现的配置
 * 授权服务器
 */
@Configuration
@EnableAuthorizationServer
public class Oauth2ServerConfig extends AuthorizationServerConfigurerAdapter {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private UserService userService;
    @Autowired
    private ClientDetailsService clientDetailsService;

    /**
     * 授权服务端配置
     * @param security
     * @throws Exception
     */
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {

    }

    /**
     * 授权客户端配置
     * clientId：（必填）客户端ID。
     * secret：（对于受信任的客户端是必需的）客户端密钥（如果有）。
     * scope：客户端的范围受到限制。如果范围未定义或为空（默认值），则客户端不受范围的限制。
     * authorizedGrantTypes：授权客户使用的授权类型。默认值为空。
     * authorities：授予客户端的权限（常规的Spring Security权限）。
     * @param clients
     * @throws Exception
     */
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.inMemory()
                .withClient("admin") // 配置client_id
                .secret(passwordEncoder.encode("123456"))   // 配置client_secret
                .accessTokenValiditySeconds(3600)   //  配置访问token的有限期
                .refreshTokenValiditySeconds(86400)  //配置刷新token的有效期
                // TODO 跳转位置
                .redirectUris("https://www.baidu.com")    //配置redirect_uri 授权成功后跳转
                .scopes("all")   // 配置申请权限范围
                .authorizedGrantTypes("authorization_code", "password", "client_credentials", "refresh_token"); // 配置grant_type授权类型

    }

    /**
     * @param endpoints
     * @throws Exception
     */
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
//        endpoints.tokenStore(tokenStore)//自定义令牌存储策略
//                //默认除密码模式外，所有授权模式均支持，密码模式需要显示注入authenticationManager开启
//                .authenticationManager(authenticationManager)
//                .userDetailsService(userDetailServiceImpl)//自定义用户密码加载服务
//                .tokenGranter(tokenGranter)//定义控制授权
//                .exceptionTranslator(webResponseExceptionTranslator);//自定义异常解析

        endpoints.authenticationManager(authenticationManager)
                .userDetailsService(userService);
    }
}
