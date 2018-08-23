


 创建目录结构
     mkdir -p src/main/java/com/cyril/demo
     mkdir -p src/main/docker


 pom.xml 注意：

        Spring Boot Maven plugin 提供了很多方便的功能：

        1）它收集的类路径上所有 jar 文件，并构建成一个单一的、可运行的jar，这使得它更方便地执行和传输服务。

        2）它搜索的 public static void main() 方法来标记为可运行的类。

        3）它提供了一个内置的依赖解析器，用于设置版本号以匹配 Spring Boot 的依赖。您可以覆盖任何你想要的版本，但它会默认选择的 Boot 的版本集。

        Spotify 的 docker-maven-plugin 插件是用于构建 Maven 的 Docker Image

        1）imageName指定了镜像的名字，本例为 springio/lidong-spring-boot-demo

        2）dockerDirectory指定 Dockerfile 的位置

        3）resources是指那些需要和 Dockerfile 放在一起，在构建镜像时使用的文件，一般应用 jar 包需要纳入。


开始编写一个简单的Spring Boot 应用 ：

src/main/java/com/lidong/demo/SampleController.java:

    类用 @SpringBootApplication @RestController 标识,可用 Spring MVC 来处理 Web 请求。

    @RequestMapping 将 / 映射到 home() ，并将”Hello Docker World” 文本作为响应。

    main() 方法使用 Spring Boot 的 SpringApplication.run() 方法来启动应用。



