# PlantUML类图

PlantUML类图使用方法

# 参考文档

* [类成员的箭头方向(Arrows from/to class members)](https://plantuml.com/zh/class-diagram)

# plantuml

`sudo docker run -d -p 8081:8080 plantuml/plantuml-server`

# 定义能见度

字符 | 可访问性
----|----
\-  | private 私有
\#  | protected 受保护
\~  | package private 包内可见
\+  | public 公有 

# sample

示例1

```plantuml
@startuml

struct platform_device {
    const char      *name;
    bool            id_auto;
    struct          dev;
}

struct device {
    struct device_driver *driver;
    void        *platform_data;
    void        *driver_data;
}

platform_device::dev --> device

@enduml
```

示例2

```plantuml
@startuml

struct platform_device {
    +const char      *name;
    +bool            id_auto;
    +struct          dev;
}

struct device {
    +struct device_driver *driver;
    +void        *platform_data;
    +void        *driver_data;
}

platform_device::dev --> device

@enduml
```
