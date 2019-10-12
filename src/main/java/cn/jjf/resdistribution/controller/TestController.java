package cn.jjf.resdistribution.controller;

import cn.jjf.resdistribution.service.HelloService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @auther: zhuohuahe
 * @date: 2019/10/12 14:23
 * @description:
 */
@RestController
@RequestMapping("test")
public class TestController {

    @Reference
    HelloService helloService;

    @GetMapping("sayHello")
    public String sayHello(String name){
        return helloService.sayHello(name);
    }
}
