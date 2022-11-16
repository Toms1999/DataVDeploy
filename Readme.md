# 产品细节文档

该产品第一期的目标：

通过可视化界面快速让用户能够拉起一套应用的流程，并且对该应用进行基本的运维操作，如部署、启停、扩缩容、销毁等运维操作，同时能够选择已安装的应用或者管理的主机进行对应的监控部署，并且对于部分需要性能测试的指标，能够快速进行相应的benchMark操作。

## 功能流程

### 拥有主机

所有的应用操作都是位于主机之上的，因此，在进行相关操作的之前，用户必须先纳管主机资源，该功能的目的就是让用户配置相关的参数，能够让该工具知道，我需要在哪些主机上进行操作。

### 拥有应用包

建立好对应的主机资源后，在进行应用部署前，需要用户提供需要部署的应用程序安装包，同时关联对应要部署的程序项，或者产品提供好部分模板。

### 拥有应用操作脚本

上传好相关安装包并选择要安装的程序项之后，用户可以选择已有的操作命令进行应用程序的操作，如部署、启动、停止等等。该操作会选择要进行操作的主机节点。

### 配置操作参数

选择对应的主机节点之后，需要填充该操作必须的操作参数，如需要对主机进行免密配置，需要配置java环境等环境变量。需要填写对应操作需要的参数等等。

### 执行应用对应操作

配置完应用操作需要的必要参数后，就可以进行相应的操作

### 应用监控

用户可以选择已安装的应用或者主机进行部署相应的监控程序，该程序会自动拉起相应角色的Prometheus+grafana程序。

### 应用benckmark

用户可以选择对应的应用进行性能测试，这个需要预定义性能测试的分类，根据选择的不同执行相应的步骤。

## 功能模块

### 1. 登录页

用户在执行我们产品的初始化安装程序后，登录该管理工具的登录页面。logo和风格待议，只确定功能。

![image-20221111103835219](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111103835219.png)

### 2. 概览页

登录页进来之后，进入的是全局概览页面，该页面主要是对已有主机资源的概览

![image-20221111111302300](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111111302300.png)

### 3. 主机管理

主机管理页面的主要功能是需要管理已有或者新增主机节点，并对已有的主机进行基础环境配置，这里不含相关应用的配置（编程语言环境的配置），其余相关语言环境的配置在应用管理中进行。

#### 3.1 主机列表

列出已经管理的主机列表

![image-20221111132530642](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111132530642.png)

#### 3.2 新增主机

该页面可以进行主机的增加或者批量增加

![image-20221111131607758](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111131607758.png)

#### 3.3 主机配置

该页面可以针对单台主机或者多台主机进行一些基础环境配置（免密，时间同步服务，防火墙设置）

![image-20221111132351703](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111132351703.png)

### 4. 应用管理

该模块引导用户进行不同应用的操作行为，其中按照应用分类进行不同的操作。具体如下：

#### 4.1应用列表

该页面可以看到全部的应用列表情况，包含已安装和未安装的情况

![image-20221111135455223](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111135455223.png)

#### 4.2 新增应用

用户可以通过该页面进行应用的新增操作

该操作分为三步：

1. 选择要新增的应用分类，并上传新增应用的安装包，并指明要安装的版本
2. 开始进行新增应用前的环境监测，检查当前主机环境新增该应用时所必须的环境
3. 开始新增应用，选择新增应用对应的新增脚本，填写脚本所必须的参数，进行应用的新增

##### 4.2.1 应用配置

该功能供用户对新增的应用相关参数的配置包含：

应用分类，如数据库、编程语言、基础组件、计算引擎等分类

应用上传路径

应用安装路径

应用角色划分

应用数据目录

应用元数据目录

应用端口配置

![image-20221111151344898](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111151344898.png)

##### 4.2.2 环境检测

该功能主要供用户在新增应用前检测对应要安装的主机上，是否具备安装的相关环境

分类新增完成后，自动跳转到环境检测功能处，

![image-20221111150403273](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111150403273.png)

##### 4.2.3 开始新增

该功能主要共用户在完成环境检测后，进行对应应用部署操作

环境检测完成后，自动跳转到开始新增功能处

该功能会根据应用配置阶段配置的应用相关的参数，进行应用的部署新增操作

![image-20221111151248250](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111151248250.png)

#### 4.3应用启停

新增应用完成后，我们可以使用应用启停功能来对已经安装的应用按照角色进行启动、停止或者批量启动停止操作

该功能可以筛选对应的应用类型，选择对应应用 的角色，选择对应的主机，进行对应的操作

![image-20221111155513416](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111155513416.png)



#### 4.4应用升降级

可以使用该功能对已经安装的应用进行应用的升级操作

可以使用该功能对已经安装的应用进行应用的降级操作

![image-20221111162405014](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111162405014.png)

#### 4.5应用扩缩容

可以使用该功能对已经安装的应用进行应用的扩容操作

可以使用该功能对已经安装的应用进行应用的缩容操作

![image-20221111162709230](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111162709230.png)

#### 4.6应用销毁

可以使用该功能对已经安装的应用进行应用的销毁操作

![image-20221111163944638](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111163944638.png)

### 5.脚本管理

脚本管理模块主要是对已有脚本的管理，分类，新脚本的上传、分类，方便开发者能够快速拓展新应用的管理

#### 5.1脚本列表

该功能为用户展示已有的脚本列表

![image-20221111170816069](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111170816069.png)

#### 5.2 新增脚本

该功能是为开发者拓展新应用操作脚本，用户可以通过该功能，编写相关脚本，绑定对应应用即可

![image-20221111165433135](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111165433135.png)

#### 5.3 参数定义

该功能可以让用户为新增的脚本绑定对应脚本使用参数模板

![image-20221111165740149](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111165740149.png)

#### 5.4 脚本销毁

该功能为用户提供相关已有脚本的删除管理

![image-20221111170051725](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111170051725.png)

### 6.监控管理

监控管理模块主要是为用户为对应主机或者应用添加相应的监控模板，该功能同样依赖应用和相关脚本

#### 6.1 主机监控概览

已有主机监控概览

![image-20221111173641983](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111173641983.png)

#### 6.2 应用监控概览

![image-20221111173722983](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111173722983.png)

#### 6.3 新增主机监控

该功能可以指定对应主机新增主机监控模板

![image-20221111174259747](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111174259747.png)

#### 6.4 新增应用监控

该功能可以指定对应应用和主机新增应用监控模板

![image-20221111174422986](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111174422986.png)



### 7.性能测试

性能测试模块是为了快速对已经构建好的应用进行相关的应用测试，这里目前值涵盖数据库相关的性能测试

#### 7.1已有测试报告

观测已经积累的性能测试报告

![image-20221111180036175](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111180036175.png)

#### 7.2 新增性能测试

用户可以通过该模块快速进行数据库相关的性能测试

##### 7.2.1 参数配置

用户通过该功能 选择对应的数据库性能测试的分类和要进行测试的数据库参数

![image-20221111181009124](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111181009124.png)

##### 7.2.2 数据准备

用户通过该功能选择要生成的数据大小和要适应的数据格式，以及进行数据导入

![image-20221111181458721](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111181458721.png)

##### 7.2.3 开始测试

![image-20221111181656944](C:\Users\FR\AppData\Roaming\Typora\typora-user-images\image-20221111181656944.png)

开始测试，并输出相关报告，报告输出完成后，可以在概览中查看该报告




