######数据库初始化########

#创建数据库
CREATE DATABASE IF NOT EXISTS mbp;
#进入mbp数据库
use mbp;

#登录账户表
CREATE TABLE us_user
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '主键',
    userName VARCHAR(50) NOT NULL COMMENT '用户名',
    name VARCHAR(50) NOT NULL COMMENT '真实姓名',
    password VARCHAR(50)  DEFAULT '123123' NOT NULL COMMENT '密码',
    email VARCHAR(255)  DEFAULT '' NOT NULL COMMENT '电子邮箱',
    deptId INT DEFAULT 0 NOT NULL COMMENT '部门id',
    phone VARCHAR(50) DEFAULT '' NOT NULL COMMENT '联系方式',
    status VARCHAR(10) DEFAULT 'E' COMMENT '状态, E正常 D失效',
    createTime DATETIME COMMENT '创建时间',
    createUser INT  COMMENT '创建人id',
);
#初始化admin帐号
INSERT INTO us_user VALUES (0,'admin','管理员','admin','ming.xu@mbpsoft.com','0','18820110911','E','2016-10-10 12:12:12',0,'2016-10-10 12:12:12');
INSERT INTO us_user VALUES (0,'zdk','朱登科','123','dk.zhu@mbpsoft.com','0','18820110911','E','2016-10-10 12:12:12',0,'2016-10-10 12:12:12');

#访问日志表
CREATE TABLE sys_visit_log
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '主键',
    ip VARCHAR(50) NOT NULL COMMENT 'IP地址',
    province VARCHAR(50) NOT NULL COMMENT '省份',
    city VARCHAR(50) NOT NULL COMMENT '城市',
    url VARCHAR(500) NOT NULL COMMENT '访问地址',
    createTime DATETIME NOT NULL COMMENT '访问时间'
);
#初始化访问日志
INSERT INTO sys_visit_log VALUES (0,'127.0.0.1','广东省','广州市','/','2008-08-08 08:08:08')


#创建用户登录日志
CREATE TABLE us_login(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '主键',
  userId INT NOT NULL COMMENT '用户ID',
  loginDate DATETIME COMMENT '登录日期',
  logoutDate DATETIME COMMENT '退出日期'
)


#创建用户登录日志
CREATE TABLE jo_job(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '主键',
  name INT NOT NULL COMMENT '职位名称',
  desc VARCHAR(4000) COMMENT '职位描述',
  require VARCHAR(4000) COMMENT '任职要求',
  createTime DATETIME NOT NULL COMMENT '创建日期',
  createUser INT NOT NULL COMMENT '创建人'
)



















