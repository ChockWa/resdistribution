package cn.jjf.resdistribution.service.impl;

import cn.jjf.resdistribution.service.HelloService;
import cn.jjf.resdistribution.service.WechatService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Service;

/**
 * @auther: zhuohuahe
 * @date: 2019/10/12 13:44
 * @description:
 */
@Service
public class WechatServiceImpl implements WechatService {

    @Reference(version = "1.0.0")
    HelloService helloService;

    @Override
    public String test(){
        return helloService.sayHello("test");
    }
}
