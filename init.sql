CREATE TABLE `tb_admin`
(
  `id`             int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  `username`       varchar(30) NOT NULL default '',
  `phone`          varchar(11) NOT NULL default '',
  `name`           varchar(10) NOT NULL default '',
  `email`          varchar(20) NOT NULL default '',
  `password`       varchar(190) NOT NULL default '',
  `remember_token` varchar(190) NOT NULL default '',
  `uuid`           char(36) NOT NULL default '',
  `created_at`     int unsigned NOT NULL default 0,
  `updated_at`     int unsigned NOT NULL default 0,
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO lay_admin.tb_admin (id, username, phone, name, email, password, remember_token, uuid, created_at, updated_at) VALUES (1, 'root', '17511111111', '超级管理员', '', '$2y$10$KJiRuGgOtRWPSG7Z7NeocenI0Csz0.KJj0FWykmFgTMapEZfol33W', 'gEpXR93PHN0w2wWkAU5gVprEmXPvjdKDDSfS0yPaOs82sWjT1UYMNmxhjEkI', '905a2f8e-72f5-3ed0-872b-abca0feb3976', 0, 0);


CREATE TABLE `tb_admin_roles`
(
  `id`           int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  `name`         varchar(30) NOT NULL default '',
  `guard_name`   varchar(30) NOT NULL default '',
  `display_name` varchar(30) NOT NULL default '',
  `created_at`   int unsigned NOT NULL default 0,
  `updated_at`   int unsigned NOT NULL default 0
) ENGINE = InnoDB  DEFAULT CHARSET = utf8;
INSERT INTO lay_admin.tb_admin_roles (id, name, guard_name, display_name, created_at, updated_at) VALUES (1, 'root', 'web', '超级管理员', 0, 0);
INSERT INTO lay_admin.tb_admin_roles (id, name, guard_name, display_name, created_at, updated_at) VALUES (2, 'admin', 'web', '管理员', 0, 0);


CREATE TABLE `tb_admin_permissions`
(
  `id`           int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  `name`         varchar(30) NOT NULL default '',
  `guard_name`   varchar(30) NOT NULL default '',
  `display_name` varchar(30) NOT NULL default '',
  `route`        varchar(100) NOT NULL default '' COMMENT '路由名称',
  `icon_id`      int(11) NOT NULL DEFAULT '0' COMMENT '图标ID',
  `parent_id`    int(11) NOT NULL DEFAULT '0',
  `sort`         int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at`   int unsigned NOT NULL default 0,
  `updated_at`   int unsigned NOT NULL default 0
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (1, 'system.manage', 'web', '系统管理', '', 100, 0, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (2, 'system.user', 'web', '用户管理', 'admin.user', 123, 1, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (3, 'system.user.create', 'web', '添加用户', 'admin.user.create', 1, 2, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (4, 'system.user.edit', 'web', '编辑用户', 'admin.user.edit', 1, 2, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (5, 'system.user.destroy', 'web', '删除用户', 'admin.user.destroy', 1, 2, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (6, 'system.user.role', 'web', '分配角色', 'admin.user.role', 1, 2, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (7, 'system.user.permission', 'web', '分配权限', 'admin.user.permission', 1, 2, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (8, 'system.role', 'web', '角色管理', 'admin.role', 121, 1, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (9, 'system.role.create', 'web', '添加角色', 'admin.role.create', 1, 8, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (10, 'system.role.edit', 'web', '编辑角色', 'admin.role.edit', 1, 8, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (11, 'system.role.destroy', 'web', '删除角色', 'admin.role.destroy', 1, 8, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (12, 'system.role.permission', 'web', '分配权限', 'admin.role.permission', 1, 8, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (13, 'system.permission', 'web', '权限管理', 'admin.permission', 12, 1, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (14, 'system.permission.create', 'web', '添加权限', 'admin.permission.create', 1, 13, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (15, 'system.permission.edit', 'web', '编辑权限', 'admin.permission.edit', 1, 13, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (16, 'system.permission.destroy', 'web', '删除权限', 'admin.permission.destroy', 1, 13, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (17, 'message.manage', 'web', '消息管理', '', 24, 0, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (18, 'message.message.mine', 'web', '我的消息', 'admin.message.mine', 124, 17, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (19, 'message.message', 'web', '消息管理', 'admin.message', 24, 17, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (20, 'message.message.create', 'web', '推送消息', 'admin.message.create', 1, 19, 0, 0, 0);
INSERT INTO lay_admin.tb_admin_permissions (id, name, guard_name, display_name, route, icon_id, parent_id, sort, created_at, updated_at) VALUES (21, 'message.message.destroy', 'web', '删除消息', 'admin.message.destroy', 1, 19, 0, 0, 0);



CREATE TABLE `tb_admin_role_has_permissions`
(
  `permission_id` int(10) unsigned NOT NULL,
  `role_id`       int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`),
  KEY `role_has_tb_admin_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_tb_admin_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `tb_admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_tb_admin_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `tb_admin_roles` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


CREATE TABLE `tb_admin_model_has_permissions`
(
  `permission_id` int(10) unsigned                        NOT NULL,
  `model_id`      int(10) unsigned                        NOT NULL,
  `model_type`    varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`),
  KEY `tb_admin_model_has_permissions_model_id_model_type_index` (`model_id`, `model_type`),
  CONSTRAINT `tb_admin_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `tb_admin_permissions` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (1, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (2, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (3, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (4, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (5, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (6, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (7, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (8, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (9, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (10, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (11, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (12, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (13, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (14, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (15, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (16, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (17, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (18, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (19, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (20, 1, 'App\\Models\\User');
INSERT INTO lay_admin.tb_admin_model_has_permissions (permission_id, model_id, model_type) VALUES (21, 1, 'App\\Models\\User');


CREATE TABLE `tb_admin_model_has_roles`
(
  `role_id`    int(10) unsigned                        NOT NULL,
  `model_id`   int(10) unsigned                        NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`, `model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `tb_admin_roles` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO lay_admin.tb_admin_model_has_roles (role_id, model_id, model_type) VALUES (1, 1, 'App\\Models\\User');



CREATE TABLE `tb_messages`
(
  `id`          int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  `title`       varchar(50) NOT NULL default '' COMMENT '消息标题',
  `content`     text COMMENT '消息内容',
  `read`        tinyint NOT NULL DEFAULT 1 COMMENT '1-未读，2-已读',
  `send_uuid`   char(36) NOT NULL DEFAULT '1' COMMENT '消息发送者UUID，1表示系统发送',
  `accept_uuid` char(36) NOT NULL default '' COMMENT '消息接收者UUID',
  `flag`        tinyint NOT NULL default 0 COMMENT '消息对应关系：12-系统推送给后台，13-系统推送给前台,22-后台推送给后台，23-后台推送给前台，32-前台推送给后台，33-前台推送给前台，',
  `created_at`  int unsigned NOT NULL default 0,
  `updated_at`  int unsigned NOT NULL default 0
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `tb_icons`
(
  `id`          int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  `unicode`       varchar(50) NOT NULL default '' COMMENT 'unicode 字符',
  `class`       varchar(50) NOT NULL default '' COMMENT '类名',
  `name`       varchar(20) NOT NULL default '' COMMENT '名称',
  `sort`       int NOT NULL default 0 COMMENT '排序',
  `created_at`  int unsigned NOT NULL default 0,
  `updated_at`  int unsigned NOT NULL default 0
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (1, '&#xe6c9;', 'layui-icon-rate-half', '半星', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (2, '&#xe67b;', 'layui-icon-rate', '星星-空心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (3, '&#xe67a;', 'layui-icon-rate-solid', '星星-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (4, '&#xe678;', 'layui-icon-cellphone', '手机', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (5, '&#xe679;', 'layui-icon-vercode', '验证码', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (6, '&#xe677;', 'layui-icon-login-wechat', '微信', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (7, '&#xe676;', 'layui-icon-login-qq', 'QQ', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (8, '&#xe675;', 'layui-icon-login-weibo', '微博', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (9, '&#xe673;', 'layui-icon-password', '密码', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (10, '&#xe66f;', 'layui-icon-username', '用户名', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (11, '&#xe9aa;', 'layui-icon-refresh-3', '刷新-粗', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (12, '&#xe672;', 'layui-icon-auz', '授权', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (13, '&#xe66b;', 'layui-icon-spread-left', '左向右伸缩菜单', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (14, '&#xe668;', 'layui-icon-shrink-right', '右向左伸缩菜单', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (15, '&#xe6b1;', 'layui-icon-snowflake', '雪花', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (16, '&#xe702;', 'layui-icon-tips', '提示说明', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (17, '&#xe66e;', 'layui-icon-note', '便签', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (18, '&#xe68e;', 'layui-icon-home', '主页', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (19, '&#xe674;', 'layui-icon-senior', '高级', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (20, '&#xe669;', 'layui-icon-refresh', '刷新', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (21, '&#xe666;', 'layui-icon-refresh-1', '刷新', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (22, '&#xe66c;', 'layui-icon-flag', '旗帜', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (23, '&#xe66a;', 'layui-icon-theme', '主题', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (24, '&#xe667;', 'layui-icon-notice', '消息-通知', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (25, '&#xe7ae;', 'layui-icon-website', '网站', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (26, '&#xe665;', 'layui-icon-console', '控制台', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (27, '&#xe664;', 'layui-icon-face-surprised', '表情-惊讶', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (28, '&#xe716;', 'layui-icon-set', '设置-空心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (29, '&#xe656;', 'layui-icon-template-1', '模板', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (30, '&#xe653;', 'layui-icon-app', '应用', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (31, '&#xe663;', 'layui-icon-template', '模板', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (32, '&#xe6c6;', 'layui-icon-praise', '赞', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (33, '&#xe6c5;', 'layui-icon-tread', '踩', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (34, '&#xe662;', 'layui-icon-male', '男', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (35, '&#xe661;', 'layui-icon-female', '女', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (36, '&#xe660;', 'layui-icon-camera', '相机-空心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (37, '&#xe65d;', 'layui-icon-camera-fill', '相机-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (38, '&#xe65f;', 'layui-icon-more', '菜单-水平', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (39, '&#xe671;', 'layui-icon-more-vertical', '菜单-垂直', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (40, '&#xe65e;', 'layui-icon-rmb', '金额-人民币', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (41, '&#xe659;', 'layui-icon-dollar', '金额-美元', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (42, '&#xe735;', 'layui-icon-diamond', '钻石-等级', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (43, '&#xe756;', 'layui-icon-fire', '火', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (44, '&#xe65c;', 'layui-icon-return', '返回', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (45, '&#xe715;', 'layui-icon-location', '位置-地图', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (46, '&#xe705;', 'layui-icon-read', '办公-阅读', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (47, '&#xe6b2;', 'layui-icon-survey', '调查', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (48, '&#xe6af;', 'layui-icon-face-smile', '表情-微笑', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (49, '&#xe69c;', 'layui-icon-face-cry', '表情-哭泣', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (50, '&#xe698;', 'layui-icon-cart-simple', '购物车', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (51, '&#xe657;', 'layui-icon-cart', '购物车', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (52, '&#xe65b;', 'layui-icon-next', '下一页', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (53, '&#xe65a;', 'layui-icon-prev', '上一页', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (54, '&#xe681;', 'layui-icon-upload-drag', '上传-空心-拖拽', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (55, '&#xe67c;', 'layui-icon-upload', '上传-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (56, '&#xe601;', 'layui-icon-download-circle', '下载-圆圈', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (57, '&#xe857;', 'layui-icon-component', '组件', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (58, '&#xe655;', 'layui-icon-file-b', '文件-粗', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (59, '&#xe770;', 'layui-icon-user', '用户', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (60, '&#xe670;', 'layui-icon-find-fill', '发现-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (61, '&#xe63d;', 'layui-icon-loading', 'loading', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (62, '&#xe63e;', 'layui-icon-loading-1', 'loading', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (63, '&#xe654;', 'layui-icon-add-1', '添加', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (64, '&#xe652;', 'layui-icon-play', '播放', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (65, '&#xe651;', 'layui-icon-pause', '暂停', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (66, '&#xe6fc;', 'layui-icon-headset', '音频-耳机', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (67, '&#xe6ed;', 'layui-icon-video', '视频', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (68, '&#xe688;', 'layui-icon-voice', '语音-声音', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (69, '&#xe645;', 'layui-icon-speaker', '消息-通知-喇叭', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (70, '&#xe64f;', 'layui-icon-fonts-del', '删除线', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (71, '&#xe64e;', 'layui-icon-fonts-code', '代码', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (72, '&#xe64b;', 'layui-icon-fonts-html', 'HTML', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (73, '&#xe62b;', 'layui-icon-fonts-strong', '字体加粗', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (74, '&#xe64d;', 'layui-icon-unlink', '删除链接', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (75, '&#xe64a;', 'layui-icon-picture', '图片', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (76, '&#xe64c;', 'layui-icon-link', '链接', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (77, '&#xe650;', 'layui-icon-face-smile-b', '表情-笑-粗', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (78, '&#xe649;', 'layui-icon-align-left', '左对齐', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (79, '&#xe648;', 'layui-icon-align-right', '右对齐', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (80, '&#xe647;', 'layui-icon-align-center', '居中对齐', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (81, '&#xe646;', 'layui-icon-fonts-u', '字体-下划线', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (82, '&#xe644;', 'layui-icon-fonts-i', '字体-斜体', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (83, '&#xe62a;', 'layui-icon-tabs', 'Tabs 选项卡', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (84, '&#xe643;', 'layui-icon-radio', '单选框-选中', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (85, '&#xe63f;', 'layui-icon-circle', '单选框-候选', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (86, '&#xe642;', 'layui-icon-edit', '编辑', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (87, '&#xe641;', 'layui-icon-share', '分享', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (88, '&#xe640;', 'layui-icon-delete', '删除', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (89, '&#xe63c;', 'layui-icon-form', '表单', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (90, '&#xe63b;', 'layui-icon-cellphone-fine', '手机-细体', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (91, '&#xe63a;', 'layui-icon-dialogue', '聊天 对话 沟通', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (92, '&#xe639;', 'layui-icon-fonts-clear', '文字格式化', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (93, '&#xe638;', 'layui-icon-layer', '窗口', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (94, '&#xe637;', 'layui-icon-date', '日期', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (95, '&#xe636;', 'layui-icon-water', '水 下雨', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (96, '&#xe635;', 'layui-icon-code-circle', '代码-圆圈', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (97, '&#xe634;', 'layui-icon-carousel', '轮播组图', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (98, '&#xe633;', 'layui-icon-prev-circle', '翻页', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (99, '&#xe632;', 'layui-icon-layouts', '布局', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (100, '&#xe631;', 'layui-icon-util', '工具', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (101, '&#xe630;', 'layui-icon-templeate-1', '选择模板', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (102, '&#xe62f;', 'layui-icon-upload-circle', '上传-圆圈', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (103, '&#xe62e;', 'layui-icon-tree', '树', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (104, '&#xe62d;', 'layui-icon-table', '表格', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (105, '&#xe62c;', 'layui-icon-chart', '图表', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (106, '&#xe629;', 'layui-icon-chart-screen', '图标 报表 屏幕', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (107, '&#xe628;', 'layui-icon-engine', '引擎', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (108, '&#xe625;', 'layui-icon-triangle-d', '下三角', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (109, '&#xe623;', 'layui-icon-triangle-r', '右三角', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (110, '&#xe621;', 'layui-icon-file', '文件', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (111, '&#xe620;', 'layui-icon-set-sm', '设置-小型', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (112, '&#xe61f;', 'layui-icon-add-circle', '添加-圆圈', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (113, '&#xe61c;', 'layui-icon-404', '404', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (114, '&#xe60b;', 'layui-icon-about', '关于', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (115, '&#xe619;', 'layui-icon-up', '箭头 向上', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (116, '&#xe61a;', 'layui-icon-down', '箭头 向下', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (117, '&#xe603;', 'layui-icon-left', '箭头 向左', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (118, '&#xe602;', 'layui-icon-right', '箭头 向右', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (119, '&#xe617;', 'layui-icon-circle-dot', '圆点', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (120, '&#xe615;', 'layui-icon-search', '搜索', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (121, '&#xe614;', 'layui-icon-set-fill', '设置-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (122, '&#xe613;', 'layui-icon-group', '群组', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (123, '&#xe612;', 'layui-icon-friends', '好友', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (124, '&#xe611;', 'layui-icon-reply-fill', '回复 评论 实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (125, '&#xe60f;', 'layui-icon-menu-fill', '菜单 隐身 实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (126, '&#xe60e;', 'layui-icon-log', '记录', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (127, '&#xe60d;', 'layui-icon-picture-fine', '图片-细体', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (128, '&#xe60c;', 'layui-icon-face-smile-fine', '表情-笑-细体', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (129, '&#xe60a;', 'layui-icon-list', '列表', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (130, '&#xe609;', 'layui-icon-release', '发布 纸飞机', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (131, '&#xe605;', 'layui-icon-ok', '对 OK', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (132, '&#xe607;', 'layui-icon-help', '帮助', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (133, '&#xe606;', 'layui-icon-chat', '客服', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (134, '&#xe604;', 'layui-icon-top', 'top 置顶', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (135, '&#xe600;', 'layui-icon-star', '收藏-空心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (136, '&#xe658;', 'layui-icon-star-fill', '收藏-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (137, '&#x1007;', 'layui-icon-close-fill', '关闭-实心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (138, '&#x1006;', 'layui-icon-close', '关闭-空心', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (139, '&#x1005;', 'layui-icon-ok-circle', '正确', 0, 0, 0);
INSERT INTO lay_admin.tb_icons (id, unicode, class, name, sort, created_at, updated_at) VALUES (140, '&#xe608;', 'layui-icon-add-circle-fine', '添加-圆圈-细体', 0, 0, 0);