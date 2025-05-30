# PlantUML

vscode PlantUML extension for Markdown

# Settings

设置网络访问服务器地址：`http://www.plantuml.com/plantuml`

![0001_PlantUML_Settings.png](images/0001_PlantUML_Settings.png)

```plantuml
@startuml
actor -> zengjf: hello
actor <- zengjf: hello
@enduml
```

# 跨域访问设置

**Allow insecure content**

![0001_domain_cross_access.png](images/0001_domain_cross_access.png)

![0001_allow_insecure_content.png](images/0001_allow_insecure_content.png)

# docker

* https://hub.docker.com/r/plantuml/plantuml-server
  * `docker pull plantuml/plantuml-server`
    * `docker run -d -p 8081:8080 plantuml/plantuml-server`
    * `http://127.0.0.1:8081`
* 启动plantuml server  
  ![0001_plantuml_server.png](images/0001_plantuml_server.png)
* 访问plantuml server  
  ![0001_chrome_access_website.png](images/0001_chrome_access_website.png)
* `http://127.0.0.1:8081`  
  ![0001_localhost_8081.png](images/0001_localhost_8081.png)
