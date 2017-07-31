## SpringMVC+Spring+Mybatis

org.mybatis.mybatis-spring 实现 spring与mybatis无缝结合方便平台快速搭建。

    <resources>
            <resource>
                <directory>src/main/webapp</directory>
            </resource>
            <resource>
                <directory>src/main/resources</directory>
            </resource>
            <resource>
                <directory>src/main/java</directory>
                <includes>
                    <include>**/*.xml</include>
                </includes>
            </resource>
    </resources>
    
以上POM配置让源码中xml能够编译到target/classes目录中。否则，运行报错找不到dao接口方法。

### 总结
子模块快速搭建SSM开发框架，重点是如何在spring中配置mybatis数据层。
接下来，依照[Mybatis3文档](http://www.mybatis.org/mybatis-3/zh/statement-builders.html)掌握mybatis基本概念和使用。