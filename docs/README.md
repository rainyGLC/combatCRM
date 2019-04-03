README.md

在做项目中遇到的问题：
    当页面出现304或403时，应该首先检查页面路由和api路由

    sql中的时间字段类型为TIMESTAMP,有时候会设置当前时间CURRENT_TIMESTAMP并自动更新ON UPDATE CURRENT_TIMESTAMP，表示在数据库数据有更新的时候UPDATE_TIME的时间会自动更新
    （如果数据库数据值没有变化的话，UPDATE_TIME是不会自动更新的）
 