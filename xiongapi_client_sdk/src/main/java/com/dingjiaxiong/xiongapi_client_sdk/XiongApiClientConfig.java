package com.dingjiaxiong.xiongapi_client_sdk;

import com.dingjiaxiong.xiongapi_client_sdk.client.XiongApiClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * YuApi 客户端配置
 *
 * @author Ding Jiaxiong
 */
@Configuration
@ConfigurationProperties("xiongapi.client")
@Data
@ComponentScan
public class XiongApiClientConfig {

    private String accessKey;

    private String secretKey;

    @Bean
    public XiongApiClient xiongApiClient() {
        return new XiongApiClient(accessKey, secretKey);
    }

}
