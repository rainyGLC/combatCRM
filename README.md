### 项目名称 销售机会管理信息 
(客户关系管理CRM:Customer Relationship Management);

###项目介绍：
本项目为奔驰汽车的 CRM 中的销售机会信息管理.奔驰汽车和 4A 广告公司合作做出各类精良的落地页并在各个社交、媒体平台中进行投放。需要一套承接这类落地页收集回来的用户信息，并进行跟踪、统计、反馈的管理系统。通过数据反馈出，哪个落地页有效，哪个渠道获客最多，哪个销售转化最强.
 ### 项目解读
 使用 Node.js 的 Express 框架完成用户数据的增删改查、及角色的设置。收集落地页提交的用户信息，管理员进行分配给销售，销售对客户进行跟踪。项目主要包含以下几个模块：
 
1. 前台
  1. 落地页
2. 后台
  1. 后台登录
  2. 用户管理
    1. 用户列表
    2. 用户新增
    3. 用户修改
  3. 线索管理
    1. 线索列表
    2. 线索跟踪

*  项目思维导图
![图片](https://uploader.shimo.im/f/8rwtAbOCyKgO2cyn.png!thumbnail)
![图片](https://uploader.shimo.im/f/EwZZsWDq7pcLPmd8.png!thumbnail)

### 项目步骤
    环境搭建 主要通过 express-generator 快速搭建 Web 服务框架。

    数据库设计 主要通过产品原型设计出数据库表结构。

    模版配置 主要通过 Nunjucks 和 router 配置生成各个页面及访问路径。

    页面样式 主要通过 HTML 、CSS 完成所有页面的结构与样式。

    用户管理 主要通过 knex.js 连接 MySQL 实现用户数据的增删改查。

    登录与退出 主要通过 cookie 实现用户登录状态的管理。

    线索记录 主要通过落地页发送的用户数据在线索管理列表中展示。

    线索跟踪 主要通过对应的线索信息进行编辑和提交记录信息。

    销售展示 主要通过权限的区分为管理员与销售展示不同的内容。

    项目优化 主要通过自己的想法，对项目进行调整和修改。

### 项目成果






### 启动项目
    npm install
    npm start /或node ./bin/wwww  或者 nodemon ./bin/www（监测)
