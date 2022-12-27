/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 25/11/2022 21:14:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ms_article
-- ----------------------------
DROP TABLE IF EXISTS `ms_article`;
CREATE TABLE `ms_article`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment_counts` int NULL DEFAULT NULL COMMENT '评论数量',
  `create_date` bigint NULL DEFAULT NULL COMMENT '创建时间',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `view_counts` int NULL DEFAULT NULL COMMENT '浏览数量',
  `weight` int NOT NULL COMMENT '是否置顶',
  `author_id` bigint NOT NULL COMMENT '作者id',
  `body_id` bigint NULL DEFAULT NULL COMMENT '内容id',
  `category_id` int NULL DEFAULT NULL COMMENT '类别id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1595748841706987523 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_article
-- ----------------------------
INSERT INTO `ms_article` VALUES (1, 3, 1621947720727, '通过Spring Boot实现的服务，只需要依靠一个Java类，把它打包成jar，并通过`java -jar`命令就可以运行起来。\r\n\r\n这一切相较于传统Spring应用来说，已经变得非常的轻便、简单。', 'springboot介绍以及入门案例', 183, 1, 1, 1, 2);
INSERT INTO `ms_article` VALUES (2, 0, 1613947720727, 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。', 'Vue.js 到底是什么', 10, 1, 1, 20, 2);
INSERT INTO `ms_article` VALUES (3, 0, 1523947720727, '本节将介绍如何在项目中使用 Element。', 'Element相关', 15, 0, 1596048472131231746, 21, 2);
INSERT INTO `ms_article` VALUES (1405916999732707330, 0, 1624031708047, 'springboot入门案例', 'SpringBoot入门案例', 6, 0, 1596048472131231746, 1405916999854342146, 2);
INSERT INTO `ms_article` VALUES (1595684209973669890, 0, 1669275736679, 'Linux简介', 'Linux简介', 10, 0, 1596048472131231746, 1595684210099499009, 2);
INSERT INTO `ms_article` VALUES (1596114165757321218, 0, 1669378246148, 'vue的基本介绍', 'vue介绍', 3, 0, 1596113934013636610, 1596114165837012995, 1);
INSERT INTO `ms_article` VALUES (1596126095507136513, 0, 1669381090411, 'Linux操作系统', 'Linux操作系统', 1, 0, 1596123733447090177, 1596126095570051073, 2);
INSERT INTO `ms_article` VALUES (1596126527386230785, 0, 1669381193396, 'Linux详细安装', 'Linux安装', 1, 0, 1596123733447090177, 1596126527449145348, 2);

-- ----------------------------
-- Table structure for ms_article_body
-- ----------------------------
DROP TABLE IF EXISTS `ms_article_body`;
CREATE TABLE `ms_article_body`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596048541370802180 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_article_body
-- ----------------------------
INSERT INTO `ms_article_body` VALUES (1, '# 1. Spring Boot介绍\r\n\r\n## 1.1 简介\r\n\r\n在您第1次接触和学习Spring框架的时候，是否因为其繁杂的配置而退却了？\r\n\r\n在你第n次使用Spring框架的时候，是否觉得一堆反复黏贴的配置有一些厌烦？\r\n\r\n那么您就不妨来试试使用Spring Boot来让你更易上手，更简单快捷地构建Spring应用！\r\n\r\nSpring Boot让我们的Spring应用变的更轻量化。\r\n\r\n我们不必像以前那样繁琐的构建项目、打包应用、部署到Tomcat等应用服务器中来运行我们的业务服务。\r\n\r\n通过Spring Boot实现的服务，只需要依靠一个Java类，把它打包成jar，并通过`java -jar`命令就可以运行起来。\r\n\r\n这一切相较于传统Spring应用来说，已经变得非常的轻便、简单。\r\n\r\n**总结一下Spring Boot的主要优点：**\r\n\r\n1. 为所有Spring开发者更快的入门\r\n2. 开箱即用，提供各种默认配置来简化项目配置\r\n3. 内嵌式容器简化Web项目\r\n4. 没有冗余代码生成和XML配置的要求\r\n5. 统一的依赖管理\r\n6. 自动装配，更易使用，更易扩展\r\n\r\n## 1.2 使用版本说明\r\n\r\nSpringboot版本：使用最新的2.5.0版本\r\n\r\n教程参考了官方文档进行制作，权威。\r\n\r\n其他依赖版本：\r\n\r\n	1. Maven  需求：3.5+\r\n\r\n   	2. JDK 需求  8+\r\n   	3. Spring Framework 5.3.7以上版本\r\n   	4. Tomcat 9.0\r\n   	5. Servlet版本 4.0  但是可以部署到Servlet到3.1+的容器中\r\n\r\n# 2. 快速入门\r\n\r\n快速的创建一个Spring Boot应用，并且实现一个简单的Http请求处理。通过这个例子对Spring Boot有一个初步的了解，并体验其结构简单、开发快速的特性。\r\n\r\n教程使用的Idea版本：2019.3\r\n\r\n## 2.1 创建基础项目\r\n\r\n**第一步：** 创建maven项目\r\n\r\npom.xml :\r\n\r\n~~~xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<project xmlns=\"http://maven.apache.org/POM/4.0.0\"\r\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n         xsi:schemaLocation=\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd\">\r\n    <modelVersion>4.0.0</modelVersion>\r\n\r\n    <groupId>com.xiaopizhu</groupId>\r\n    <artifactId>helloSpringBoot</artifactId>\r\n    <version>1.0-SNAPSHOT</version>\r\n	<!--springboot的父工程其中定义了常用的依赖，并且无依赖冲突-->\r\n    <parent>\r\n        <groupId>org.springframework.boot</groupId>\r\n        <artifactId>spring-boot-starter-parent</artifactId>\r\n        <version>2.5.0</version>\r\n    </parent>\r\n</project>\r\n~~~\r\n\r\n注意上方的parent必须加，其中定义了springboot官方支持的n多依赖，基本上常用的已经有了，所以接下来导入依赖的时候，绝大部分都可以不加版本号。\r\n\r\n此时的工程结构为：\r\n\r\n![image-20210523173241557](img/image-20210523173241557.png)\r\n\r\n**第二步：** 添加web依赖\r\n\r\n~~~xml\r\n<dependencies>\r\n    <dependency>\r\n        <groupId>org.springframework.boot</groupId>\r\n        <artifactId>spring-boot-starter-web</artifactId>\r\n    </dependency>\r\n</dependencies>\r\n~~~\r\n\r\n添加上方的web依赖，其中间接依赖了spring-web，spring-webmvc，spring-core等spring和springmvc的包，并且集成了tomcat。\r\n\r\n**第三步：** 编写启动类\r\n\r\n~~~java\r\npackage com.xiaopizhu.springboot;\r\n\r\nimport org.springframework.boot.SpringApplication;\r\nimport org.springframework.boot.autoconfigure.SpringBootApplication;\r\n\r\n@SpringBootApplication\r\npublic class HelloApp {\r\n\r\n    public static void main(String[] args) {\r\n        SpringApplication.run(HelloApp.class,args);\r\n    }\r\n}\r\n\r\n~~~\r\n\r\n@SpringBootApplication注解标识了HelloApp为启动类，也是Spring Boot的核心。\r\n\r\n**第四步：** 运行启动类的main方法\r\n\r\n![image-20210523173712142](img/image-20210523173712142.png)\r\n\r\n看到如上配置，证明启动成功，tomcat端口号默认为8080。\r\n\r\n**第五步：**  如果想要修改端口号，可以在resources目录下新建application.properties\r\n\r\n~~~properties\r\nserver.port=8082\r\n~~~\r\n\r\n**第六步：** 重新运行\r\n\r\n![image-20210523174011613](img/image-20210523174011613.png)\r\n\r\n此时的项目结构为：\r\n\r\n![image-20210523174032053](img/image-20210523174032053.png)\r\n\r\n**src/main/java :**  编写java代码，注意启动类需要放在项目的根包下。\r\n\r\n**src/main/resources:**  放置资源的目录，比如springboot的配置文件，静态文件，mybatis配置，日志配置等。\r\n\r\n**src/test/java:**  测试代码\r\n\r\n## 2.2 编写一个Http接口\r\n\r\n**第一步：**创建`HelloController`类，内容如下：\r\n\r\n~~~java\r\npackage com.xiaopizhu.springboot.controller;\r\n\r\nimport org.springframework.web.bind.annotation.GetMapping;\r\nimport org.springframework.web.bind.annotation.RequestMapping;\r\nimport org.springframework.web.bind.annotation.RestController;\r\n\r\n@RestController\r\n@RequestMapping(\"hello\")\r\npublic class HelloController {\r\n\r\n    @GetMapping(\"boot\")\r\n    public String hello(){\r\n        return \"hello spring boot\";\r\n    }\r\n\r\n}\r\n\r\n~~~\r\n\r\n**注意包名，必须在启动类所在的包名下。**\r\n\r\n**第二步：**重启程序，使用postman或者直接在浏览器输入http://localhost:8082/hello/boot\r\n\r\n得到结果：hello spring boot\r\n\r\n## 2.3 编写单元测试用例\r\n\r\n**第一步：**添加spring boot测试依赖\r\n\r\n~~~xml\r\n		<dependency>\r\n            <groupId>org.springframework.boot</groupId>\r\n            <artifactId>spring-boot-starter-test</artifactId>\r\n            <scope>test</scope>\r\n        </dependency>\r\n~~~\r\n\r\n**第二步：**在src/test 下，编写测试用例\r\n\r\n~~~java\r\npackage com.xiaopizhu.springboot.controller;\r\n\r\nimport org.junit.jupiter.api.BeforeAll;\r\nimport org.junit.jupiter.api.BeforeEach;\r\nimport org.junit.jupiter.api.Test;\r\nimport org.springframework.boot.test.context.SpringBootTest;\r\nimport org.springframework.http.MediaType;\r\nimport org.springframework.test.web.servlet.MockMvc;\r\nimport org.springframework.test.web.servlet.request.MockMvcRequestBuilders;\r\nimport org.springframework.test.web.servlet.setup.MockMvcBuilders;\r\n\r\nimport static org.hamcrest.Matchers.equalTo;\r\nimport static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;\r\nimport static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;\r\n\r\n@SpringBootTest\r\npublic class TestHelloController {\r\n\r\n    private MockMvc mockMvc;\r\n\r\n    @BeforeEach\r\n    public void beforeEach(){\r\n        mockMvc = MockMvcBuilders.standaloneSetup(new HelloController()).build();\r\n    }\r\n    @Test\r\n    public void testHello() throws Exception {\r\n        mockMvc.perform(MockMvcRequestBuilders.get(\"/hello/boot\")\r\n                .accept(MediaType.APPLICATION_JSON))\r\n                .andExpect(status().isOk())\r\n                .andExpect(content().string(equalTo(\"hello spring boot\")));\r\n    }\r\n}\r\n\r\n~~~\r\n\r\n上面的测试用例，是构建一个空的`WebApplicationContext`，并且在before中加载了HelloController，得以在测试用例中mock调用，模拟请求。\r\n\r\n## 2.4 打包为jar运行\r\n\r\n**第一步：**添加打包(maven构建springboot)插件\r\n\r\n~~~xml\r\n  <build>\r\n        <plugins>\r\n            <plugin>\r\n                <groupId>org.springframework.boot</groupId>\r\n                <artifactId>spring-boot-maven-plugin</artifactId>\r\n            </plugin>\r\n        </plugins>\r\n    </build>\r\n~~~\r\n\r\n在idea的右侧 maven中，使用package来打包程序，打包完成后，在target目录下生成helloSpringBoot-1.0-SNAPSHOT.jar\r\n\r\n![image-20210523181737720](img/image-20210523181737720.png)\r\n\r\n**第二步：**打开cmd：找到jar对应的目录\r\n\r\n输入命令\r\n\r\n~~~shell\r\njava -jar helloSpringBoot-1.0-SNAPSHOT.jar\r\n~~~\r\n\r\n![image-20210523182426404](img/image-20210523182426404.png)\r\n\r\n**第三步：**测试，使用postman或者直接在浏览器输入http://localhost:8082/hello/boot\r\n\r\n得到结果：hello spring boot\r\n\r\n## 2.5 查看jar包内容\r\n\r\n~~~shell\r\njar tvf helloSpringBoot-1.0-SNAPSHOT.jar\r\n~~~\r\n\r\n# 3. 小结\r\n\r\n1. 通过Maven构建了一个空白Spring Boot项目，再通过引入web模块实现了一个简单的请求处理。\r\n2. 通过修改配置文件，更改端口号\r\n3. 编写了测试用例\r\n4. 打包jar包运行\r\n\r\n', '<h2>2018-01-04</h2>\n<pre><code class=\"lang-\"># 使用vue的Webpack模板生成脚手架\n</code></pre>\n<h2>2018-01-05</h2>\n<pre><code class=\"lang-\"># 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n</code></pre>\n<h2>2018-01-07</h2>\n<pre><code class=\"lang-\"># 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n</code></pre>\n<h2>2018-01-08</h2>\n<pre><code class=\"lang-\"># 使用组件-博客作者tab页 \n# 添加第三方图标\n</code></pre>\n<h2>2018-01-09</h2>\n<pre><code class=\"lang-\"># 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n</code></pre>\n<h2>2018-01-10</h2>\n<pre><code class=\"lang-\"># 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n</code></pre>\n<h2>2018-01-11</h2>\n<pre><code class=\"lang-\"># 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n</code></pre>\n<h2>2018-01-12</h2>\n<pre><code class=\"lang-\"># 文章详情页  内容  评论等\n\n</code></pre>\n<h2>2018-01-13</h2>\n<pre><code class=\"lang-\">## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n</code></pre>\n<h2>2018-01-15</h2>\n<pre><code class=\"lang-\"># 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n</code></pre>\n<h2>2018-01-15  2</h2>\n<pre><code class=\"lang-\"># 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n</code></pre>\n<h2>2018-01-16</h2>\n<pre><code class=\"lang-\"># 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n</code></pre>\n<h2>2018-01-24</h2>\n<pre><code class=\"lang-\"># 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n</code></pre>\n<h2>2018-01-25</h2>\n<pre><code class=\"lang-\"># 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n</code></pre>\n<h2>2018-01-26</h2>\n<pre><code class=\"lang-\"># 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n</code></pre>\n<h2>2018-01-27</h2>\n<pre><code class=\"lang-\"># 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n</code></pre>\n<h2>2018-01-28</h2>\n<pre><code class=\"lang-\"># 文章分类和标签详情\n\n</code></pre>\n<h2>2018-01-29</h2>\n<pre><code class=\"lang-\"># 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n</code></pre>\n<h2>2018-01-30</h2>\n<pre><code class=\"lang-\"># BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n</code></pre>\n', 1);
INSERT INTO `ms_article_body` VALUES (20, 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。\n\n如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。\n\n# 起步\n\n> 官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。\n\n尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：\n\n```javascript\n<script src=\"https://cdn.jsdelivr.net/npm/vue\"></script>\n\n```\n安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。\n\n# 声明式渲染\nVue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：\n```javascript\n<div id=\"app\">\n  {{ message }}\n</div>\n\n```\n```javascript\nvar app = new Vue({\n  el: \'#app\',\n  data: {\n    message: \'Hello Vue!\'\n  }\n})\n\n```\n我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。\n\n除了文本插值，我们还可以像这样来绑定元素特性：\n\n\n\n\n\n\n', '<p>Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。</p>\n<p>如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。<br />\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。</p>\n<h1>起步</h1>\n<blockquote>\n<p>官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。</p>\n</blockquote>\n<p>尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;script src=<span class=\"hljs-string\">\"https://cdn.jsdelivr.net/npm/vue\"</span>&gt;<span class=\"xml\"><span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">script</span>&gt;</span></span>\n\n</code></div></pre>\n<p>安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。</p>\n<h1>声明式渲染</h1>\n<p>Vue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;div id=<span class=\"hljs-string\">\"app\"</span>&gt;\n  {{ message }}\n&lt;<span class=\"hljs-regexp\">/div&gt;\n\n</span></code></div></pre>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">var</span> app = <span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">data</span>: {\n    <span class=\"hljs-attr\">message</span>: <span class=\"hljs-string\">\'Hello Vue!\'</span>\n  }\n})\n\n</code></div></pre>\n<p>我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。</p>\n<p>除了文本插值，我们还可以像这样来绑定元素特性：</p>\n', 2);
INSERT INTO `ms_article_body` VALUES (21, '## 快速上手\n\n本节将介绍如何在项目中使用 Element。\n\n### 使用 Starter Kit\n我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。\n\n如果不希望使用我们提供的模板，请继续阅读。\n\n### 使用 vue-cli\n\n我们还可以使用 vue-cli 初始化项目，命令如下：\n\n```language\n> npm i -g vue-cli\n> mkdir my-project && cd my-project\n> vue init webpack\n> npm i && npm i element-ui\n```\n\n### 引入 Element\n你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。\n\n#### 完整引入\n在 main.js 中写入以下内容：\n```javascript\nimport Vue from \'vue\'\nimport ElementUI from \'element-ui\'\nimport \'element-ui/lib/theme-chalk/index.css\'\nimport App from \'./App.vue\'\n\nVue.use(ElementUI)\n\nnew Vue({\n  el: \'#app\',\n  render: h => h(App)\n})\n\n```\n以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。\n\n#### 按需引入\n借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。\n\n首先，安装 babel-plugin-component：\n\n', '<h2>快速上手</h2>\n<p>本节将介绍如何在项目中使用 Element。</p>\n<h3>使用 Starter Kit</h3>\n<p>我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。</p>\n<p>如果不希望使用我们提供的模板，请继续阅读。</p>\n<h3>使用 vue-cli</h3>\n<p>我们还可以使用 vue-cli 初始化项目，命令如下：</p>\n<pre><code class=\"lang-language\">&gt; npm i -g vue-cli\n&gt; mkdir my-project &amp;&amp; cd my-project\n&gt; vue init webpack\n&gt; npm i &amp;&amp; npm i element-ui\n</code></pre>\n<h3>引入 Element</h3>\n<p>你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。</p>\n<h4>完整引入</h4>\n<p>在 main.js 中写入以下内容：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">import</span> Vue <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'vue\'</span>\n<span class=\"hljs-keyword\">import</span> ElementUI <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'element-ui\'</span>\n<span class=\"hljs-keyword\">import</span> <span class=\"hljs-string\">\'element-ui/lib/theme-chalk/index.css\'</span>\n<span class=\"hljs-keyword\">import</span> App <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'./App.vue\'</span>\n\nVue.use(ElementUI)\n\n<span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">render</span>: <span class=\"hljs-function\"><span class=\"hljs-params\">h</span> =&gt;</span> h(App)\n})\n\n</code></div></pre>\n<p>以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。</p>\n<h4>按需引入</h4>\n<p>借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。</p>\n<p>首先，安装 babel-plugin-component：</p>\n', 3);
INSERT INTO `ms_article_body` VALUES (1595684210099499009, '###  Linux定义\n**Linux 一般是指 Linux 内核、 Linux 系统、 Li nux 发行版。严格意义上说 Linux 是指由 Linus Torvalds 维护的并发布的内核。它的代码只包括内核而不包括其它方面的应用。内核提供系统核心服务，如进程管理，进程的调度，虚拟文件系统，内存的管理等等。**\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/0d0107d8-95bf-45fc-9ae7-1c34d98b70a9.png)\n### Linux的主要特点\n**1、开放性\n开放性是指系统遵循世界标准规范，特别是遵循开放系统互连（ OSI ）国际标准。\n2、多用户\n多用户是指系统资源可以被不同用户各自拥有使用，即每个用户对自己的资源（例如：文件、设备）有特定的权限，互不影响。\n3、多任务\n多任务是现代计算机的最主要的一个特点。它是指计算机同时执行多个程序，而且各个程序的运行互相独立。 Linux 系统调度每一个进程平等地访问微处理器。\n4、良好的用户界面\nLinux 向用户提供了两种界面：用户界面和系统调用。 用户界面可分为基于文本的命令行界面和图形界面，作为人机交互界面。 系统调用给用户提供编程时使用的界面。用户可以在编程时直接使用系统提供的系统调用命令。\n5、设备独立性\n指操作系统把所有外部设备统一当作成文件来看待，只要安装它们的驱动程序，任何用户都可以象使用文件一样，操纵、使用这些设备，而不必知道它们的具体存在形式。\n6、丰富的网络功能\n完善的内置网络是 Linux 的一大特点。\n7、可靠的系统安全\nLinux 采取了许多安全技术措施，包括对读、写进行权限控制、带保护的子系统、审计跟踪、核心授权等。\n8、良好的可移植性\n可移植性是指将操作系统从一个平台转移到另一个平台使它仍然能按其自身的方式运行的能力。**', '<h3><a id=\"Linux_0\"></a>Linux定义</h3>\n<p><strong>Linux 一般是指 Linux 内核、 Linux 系统、 Li nux 发行版。严格意义上说 Linux 是指由 Linus Torvalds 维护的并发布的内核。它的代码只包括内核而不包括其它方面的应用。内核提供系统核心服务，如进程管理，进程的调度，虚拟文件系统，内存的管理等等。</strong><br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/0d0107d8-95bf-45fc-9ae7-1c34d98b70a9.png\" alt=\"image.png\" /></p>\n<h3><a id=\"Linux_3\"></a>Linux的主要特点</h3>\n<p><strong>1、开放性<br />\n开放性是指系统遵循世界标准规范，特别是遵循开放系统互连（ OSI ）国际标准。<br />\n2、多用户<br />\n多用户是指系统资源可以被不同用户各自拥有使用，即每个用户对自己的资源（例如：文件、设备）有特定的权限，互不影响。<br />\n3、多任务<br />\n多任务是现代计算机的最主要的一个特点。它是指计算机同时执行多个程序，而且各个程序的运行互相独立。 Linux 系统调度每一个进程平等地访问微处理器。<br />\n4、良好的用户界面<br />\nLinux 向用户提供了两种界面：用户界面和系统调用。 用户界面可分为基于文本的命令行界面和图形界面，作为人机交互界面。 系统调用给用户提供编程时使用的界面。用户可以在编程时直接使用系统提供的系统调用命令。<br />\n5、设备独立性<br />\n指操作系统把所有外部设备统一当作成文件来看待，只要安装它们的驱动程序，任何用户都可以象使用文件一样，操纵、使用这些设备，而不必知道它们的具体存在形式。<br />\n6、丰富的网络功能<br />\n完善的内置网络是 Linux 的一大特点。<br />\n7、可靠的系统安全<br />\nLinux 采取了许多安全技术措施，包括对读、写进行权限控制、带保护的子系统、审计跟踪、核心授权等。<br />\n8、良好的可移植性<br />\n可移植性是指将操作系统从一个平台转移到另一个平台使它仍然能按其自身的方式运行的能力。</strong></p>\n', 1595684209973669890);
INSERT INTO `ms_article_body` VALUES (1595688099574128641, '1', '<p>1</p>\n', 1595688099444105217);
INSERT INTO `ms_article_body` VALUES (1595748841774096386, 'qweqweqwe', '<p>qweqweqwe</p>\n', 1595748841706987522);
INSERT INTO `ms_article_body` VALUES (1596042794532511747, '12', '<p>12</p>\n', 1596042794507345922);
INSERT INTO `ms_article_body` VALUES (1596048541370802179, '123', '<p>123</p>\n', 1596048541286916098);
INSERT INTO `ms_article_body` VALUES (1596052778532200450, '蔡博', '<p>蔡博</p>\n', 1596052778465091586);
INSERT INTO `ms_article_body` VALUES (1596058721588219905, '前端1', '<p>前端1</p>\n', 1596058721449807874);
INSERT INTO `ms_article_body` VALUES (1596114165837012995, '# vue介绍\nVue (发音为 /vjuː/，类似 view) 是一款用于构建用户界面的 JavaScript 框架。它基于标准 HTML、CSS 和 JavaScript 构建，并提供了一套声明式的、组件化的编程模型，帮助你高效地开发用户界面。无论是简单还是复杂的界面，Vue 都可以胜任。\n#### 下面是一个最基本的示例：\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/6076280a-ea53-438e-8e99-7a7f6a453355.png)\n### 声明式渲染\nVue 基于标准 HTML 拓展了一套模板语法，使得我们可以声明式地描述最终输出的 HTML 和 JavaScript 状态之间的关系。\n### 响应性：\nVue 会自动跟踪 JavaScript 状态并在其发生变化时响应式地更新 DOM。\n### 渐进式框架\nVue 是一个框架，也是一个生态。其功能覆盖了大部分前端开发常见的需求。但 Web 世界是十分多样化的，不同的开发者在 Web 上构建的东西可能在形式和规模上会有很大的不同。考虑到这一点，Vue 的设计非常注重灵活性和“可以被逐步集成”这个特点。根据你的需求场景，你可以用不同的方式使用 Vue：\n无需构建步骤，渐进式增强静态的 HTML\n在任何页面中作为 Web Components 嵌入\n单页应用 (SPA)\n全栈 / 服务端渲染 (SSR)\nJamstack / 静态站点生成 (SSG)\n开发桌面端、移动端、WebGL，甚至是命令行终端中的界面\n如果你是初学者，可能会觉得这些概念有些复杂。别担心！理解教程和指南的内容只需要具备基础的 HTML 和 JavaScript 知识。即使你不是这些方面的专家，也能够跟得上。\n\n如果你是有经验的开发者，希望了解如何以最合适的方式在项目中引入 Vue，或者是对上述的这些概念感到好奇，我们在使用 Vue 的多种方式中讨论了有关它们的更多细节。\n\n无论再怎么灵活，Vue 的核心知识在所有这些用例中都是通用的。即使你现在只是一个初学者，随着你的不断成长，到未来有能力实现更复杂的项目时，这一路上获得的知识依然会适用。如果你已经是一个老手，你可以根据实际场景来选择使用 Vue 的最佳方式，在各种场景下都可以保持同样的开发效率。这就是为什么我们将 Vue 称为“渐进式框架”：它是一个可以与你共同成长、适应你不同需求的框架。', '<h1><a id=\"vue_0\"></a>vue介绍</h1>\n<p>Vue (发音为 /vjuː/，类似 view) 是一款用于构建用户界面的 JavaScript 框架。它基于标准 HTML、CSS 和 JavaScript 构建，并提供了一套声明式的、组件化的编程模型，帮助你高效地开发用户界面。无论是简单还是复杂的界面，Vue 都可以胜任。</p>\n<h4><a id=\"_2\"></a>下面是一个最基本的示例：</h4>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/6076280a-ea53-438e-8e99-7a7f6a453355.png\" alt=\"image.png\" /></p>\n<h3><a id=\"_4\"></a>声明式渲染</h3>\n<p>Vue 基于标准 HTML 拓展了一套模板语法，使得我们可以声明式地描述最终输出的 HTML 和 JavaScript 状态之间的关系。</p>\n<h3><a id=\"_6\"></a>响应性：</h3>\n<p>Vue 会自动跟踪 JavaScript 状态并在其发生变化时响应式地更新 DOM。</p>\n<h3><a id=\"_8\"></a>渐进式框架</h3>\n<p>Vue 是一个框架，也是一个生态。其功能覆盖了大部分前端开发常见的需求。但 Web 世界是十分多样化的，不同的开发者在 Web 上构建的东西可能在形式和规模上会有很大的不同。考虑到这一点，Vue 的设计非常注重灵活性和“可以被逐步集成”这个特点。根据你的需求场景，你可以用不同的方式使用 Vue：<br />\n无需构建步骤，渐进式增强静态的 HTML<br />\n在任何页面中作为 Web Components 嵌入<br />\n单页应用 (SPA)<br />\n全栈 / 服务端渲染 (SSR)<br />\nJamstack / 静态站点生成 (SSG)<br />\n开发桌面端、移动端、WebGL，甚至是命令行终端中的界面<br />\n如果你是初学者，可能会觉得这些概念有些复杂。别担心！理解教程和指南的内容只需要具备基础的 HTML 和 JavaScript 知识。即使你不是这些方面的专家，也能够跟得上。</p>\n<p>如果你是有经验的开发者，希望了解如何以最合适的方式在项目中引入 Vue，或者是对上述的这些概念感到好奇，我们在使用 Vue 的多种方式中讨论了有关它们的更多细节。</p>\n<p>无论再怎么灵活，Vue 的核心知识在所有这些用例中都是通用的。即使你现在只是一个初学者，随着你的不断成长，到未来有能力实现更复杂的项目时，这一路上获得的知识依然会适用。如果你已经是一个老手，你可以根据实际场景来选择使用 Vue 的最佳方式，在各种场景下都可以保持同样的开发效率。这就是为什么我们将 Vue 称为“渐进式框架”：它是一个可以与你共同成长、适应你不同需求的框架。</p>\n', 1596114165757321218);
INSERT INTO `ms_article_body` VALUES (1596126095570051073, '# Linux（操作系统内核）\n## Linux，全称GNU/Linux，是一种免费使用和自由传播的类UNIX操作系统，其内核由林纳斯·本纳第克特·托瓦兹于1991年10月5日首次发布，它主要受到Minix和Unix思想的启发，是一个基于POSIX的多用户、多任务、支持多线程和多CPU的操作系统。它能运行主要的Unix工具软件、应用程序和网络协议。它支持32位和64位硬件。Linux继承了Unix以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。Linux有上百种不同的发行版，如基于社区开发的debian、archlinux，和基于商业开发的Red Hat Enterprise Linux、SUSE、Oracle Linux等。\n2022年11月20日，Linux 提交了最后一批 drm-intel-next 功能补丁，Linux 6.2将迎来对英特尔锐炫独显的正式支持\n### 发展历程\nLinux操作系统的诞生、发展和成长过程始终依赖着五个重要支柱：Unix操作系统、MINIX操作系统、GNU计划、POSIX标准和Internet网络。\n20世纪80年代，计算机硬件的性能不断提高，PC的市场不断扩大，当时可供计算机选用的操作系统主要有Unix、DOS和MacOS这几种。Unix价格昂贵，不能运行于PC；DOS显得简陋，且源代码被软件厂商严格保密；MacOS是一种专门用于苹果计算机的操作系统。此时，计算机科学领域迫切需要一个更加完善、强大、廉价和完全开放的操作系统。由于供教学使用的典型操作系统很少，因此当时在荷兰当教授的美国人AndrewS.Tanenbaum编写了一个操作系统，名为MINIX，为了向学生讲述操作系统内部工作原理。MINIX虽然很好，但只是一个用于教学目的的简单操作系统，而不是一个强有力的实用操作系统，然而最大的好处就是公开源代码。全世界学计算机的学生都通过钻研MINIX源代码来了解电脑里运行的MINIX操作系统，芬兰赫尔辛基大学大学二年级的学生Linus Torvalds就是其中一个，在吸收了MINIX精华的基础上，Linus于1991年写出了属于自己的Linux操作系统，版本为Linux0.01，是Linux时代开始的标志。他利用Unix的核心，去除繁杂的核心程序，改写成适用于一般计算机的x86系统，并放在网络上供大家下载，1994年推出完整的核心Version1.0，至此，Linux逐渐成为功能完善、稳定的操作系统，并被广泛使用。\n', '<h1><a id=\"Linux_0\"></a>Linux（操作系统内核）</h1>\n<h2><a id=\"LinuxGNULinuxUNIX1991105MinixUnixPOSIXCPUUnix3264LinuxUnixLinuxdebianarchlinuxRed_Hat_Enterprise_LinuxSUSEOracle_Linux_1\"></a>Linux，全称GNU/Linux，是一种免费使用和自由传播的类UNIX操作系统，其内核由林纳斯·本纳第克特·托瓦兹于1991年10月5日首次发布，它主要受到Minix和Unix思想的启发，是一个基于POSIX的多用户、多任务、支持多线程和多CPU的操作系统。它能运行主要的Unix工具软件、应用程序和网络协议。它支持32位和64位硬件。Linux继承了Unix以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。Linux有上百种不同的发行版，如基于社区开发的debian、archlinux，和基于商业开发的Red Hat Enterprise Linux、SUSE、Oracle Linux等。</h2>\n<p>2022年11月20日，Linux 提交了最后一批 drm-intel-next 功能补丁，Linux 6.2将迎来对英特尔锐炫独显的正式支持</p>\n<h3><a id=\"_3\"></a>发展历程</h3>\n<p>Linux操作系统的诞生、发展和成长过程始终依赖着五个重要支柱：Unix操作系统、MINIX操作系统、GNU计划、POSIX标准和Internet网络。<br />\n20世纪80年代，计算机硬件的性能不断提高，PC的市场不断扩大，当时可供计算机选用的操作系统主要有Unix、DOS和MacOS这几种。Unix价格昂贵，不能运行于PC；DOS显得简陋，且源代码被软件厂商严格保密；MacOS是一种专门用于苹果计算机的操作系统。此时，计算机科学领域迫切需要一个更加完善、强大、廉价和完全开放的操作系统。由于供教学使用的典型操作系统很少，因此当时在荷兰当教授的美国人AndrewS.Tanenbaum编写了一个操作系统，名为MINIX，为了向学生讲述操作系统内部工作原理。MINIX虽然很好，但只是一个用于教学目的的简单操作系统，而不是一个强有力的实用操作系统，然而最大的好处就是公开源代码。全世界学计算机的学生都通过钻研MINIX源代码来了解电脑里运行的MINIX操作系统，芬兰赫尔辛基大学大学二年级的学生Linus Torvalds就是其中一个，在吸收了MINIX精华的基础上，Linus于1991年写出了属于自己的Linux操作系统，版本为Linux0.01，是Linux时代开始的标志。他利用Unix的核心，去除繁杂的核心程序，改写成适用于一般计算机的x86系统，并放在网络上供大家下载，1994年推出完整的核心Version1.0，至此，Linux逐渐成为功能完善、稳定的操作系统，并被广泛使用。</p>\n', 1596126095507136513);
INSERT INTO `ms_article_body` VALUES (1596126527449145348, '# linux系统安装教程图解播报文章\n#### linux操作系统和windows系统类似,也是目前常用的电脑操作系统之一，很多的技术工作人员和电脑爱好者接触比较多的是linux系统。有使用电脑的网友需要用到linux系统，不过却不知道怎么怎么安装linux系统，下面小编要来跟大家说说linux系统安装教程。\n### 工具/原料\n系统版本：linux系统\n品牌型号：神舟 X5-2020A3S\n### 方法\n1.打开虚拟机，在主界面点击“创建新的虚拟机”，以此创建linux操作系统。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/f62d2cbf-5556-4982-9068-3f9a15e0432a.png)\n\n2.选择自定义。\n\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/4673d6e1-93db-4cd2-b85e-815798a30f69.png)\n3.我们先定义硬件，再在模拟机中进行系统的安装，所以在这里选择稍后再安装系统。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/97297ad0-ed3e-4a83-86e0-da0daea81a1c.png)\n\n4.客户机操作系统选择Linux(L)Red Hat Enterprise Linux 7 64 位，点击下一步。\n\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/440b48fa-d223-4485-9f4c-00d82648ba02.png)\n5.给虚拟机命名，建议安装在除系统盘C盘以外的磁盘。\n\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/adc13efa-aac0-43b9-bde0-1110fbef0cd3.png)\n6.设置处理器的数量，处理器数量与核数不能超过当前物理机上的处理器数量与核数。\n\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/803a3301-ec1b-4042-8369-d6d1398975b2.png)\n7.虚拟机内存建议不要超过当前物理机内存的一半，以免造成电脑卡顿。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/bc699c78-187d-49ce-b481-a64c8ed7df90.png)\n\n8.然后选择“使用仅主机模式网络”。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/901cb57d-e482-489d-a7e1-5eb2d2fe9e3f.png)\n\n9.选择推荐。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/6c9e5a55-4a3f-413e-92e7-74499f410396.png)\n\n10.选择推荐。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/424928b7-288a-4772-bb8c-84c2f92a9097.png)\n\n11.若已经有磁盘，选择使用现有虚拟磁盘，若没有则新建一个磁盘。\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/fdd99871-97cb-4011-8624-a9b02f0460e0.png)\n\n12.磁盘容量根据下图进行操作。\n\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/11f663c9-f929-4ddc-a9e5-efe9afebeada.png)\n13.此时虚拟机配置已创建完。\n\n![image.png](http://rls61xk0n.hn-bkt.clouddn.com/682b7716-6b24-44cb-a8c8-08167df59449.png)\n14.点击”开启此虚拟机“即可开始体验。\n## 总结\n1、打开虚拟机，创建新的虚拟机;\n2、定义硬件，再在模拟机中进行系统的安装;\n3、点击”开启此虚拟机“，体验系统。\n', '<h1><a id=\"linux_0\"></a>linux系统安装教程图解播报文章</h1>\n<h4><a id=\"linuxwindowslinuxlinuxlinuxlinux_1\"></a>linux操作系统和windows系统类似,也是目前常用的电脑操作系统之一，很多的技术工作人员和电脑爱好者接触比较多的是linux系统。有使用电脑的网友需要用到linux系统，不过却不知道怎么怎么安装linux系统，下面小编要来跟大家说说linux系统安装教程。</h4>\n<h3><a id=\"_2\"></a>工具/原料</h3>\n<p>系统版本：linux系统<br />\n品牌型号：神舟 X5-2020A3S</p>\n<h3><a id=\"_5\"></a>方法</h3>\n<p>1.打开虚拟机，在主界面点击“创建新的虚拟机”，以此创建linux操作系统。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/f62d2cbf-5556-4982-9068-3f9a15e0432a.png\" alt=\"image.png\" /></p>\n<p>2.选择自定义。</p>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/4673d6e1-93db-4cd2-b85e-815798a30f69.png\" alt=\"image.png\" /><br />\n3.我们先定义硬件，再在模拟机中进行系统的安装，所以在这里选择稍后再安装系统。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/97297ad0-ed3e-4a83-86e0-da0daea81a1c.png\" alt=\"image.png\" /></p>\n<p>4.客户机操作系统选择Linux(L)Red Hat Enterprise Linux 7 64 位，点击下一步。</p>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/440b48fa-d223-4485-9f4c-00d82648ba02.png\" alt=\"image.png\" /><br />\n5.给虚拟机命名，建议安装在除系统盘C盘以外的磁盘。</p>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/adc13efa-aac0-43b9-bde0-1110fbef0cd3.png\" alt=\"image.png\" /><br />\n6.设置处理器的数量，处理器数量与核数不能超过当前物理机上的处理器数量与核数。</p>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/803a3301-ec1b-4042-8369-d6d1398975b2.png\" alt=\"image.png\" /><br />\n7.虚拟机内存建议不要超过当前物理机内存的一半，以免造成电脑卡顿。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/bc699c78-187d-49ce-b481-a64c8ed7df90.png\" alt=\"image.png\" /></p>\n<p>8.然后选择“使用仅主机模式网络”。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/901cb57d-e482-489d-a7e1-5eb2d2fe9e3f.png\" alt=\"image.png\" /></p>\n<p>9.选择推荐。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/6c9e5a55-4a3f-413e-92e7-74499f410396.png\" alt=\"image.png\" /></p>\n<p>10.选择推荐。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/424928b7-288a-4772-bb8c-84c2f92a9097.png\" alt=\"image.png\" /></p>\n<p>11.若已经有磁盘，选择使用现有虚拟磁盘，若没有则新建一个磁盘。<br />\n<img src=\"http://rls61xk0n.hn-bkt.clouddn.com/fdd99871-97cb-4011-8624-a9b02f0460e0.png\" alt=\"image.png\" /></p>\n<p>12.磁盘容量根据下图进行操作。</p>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/11f663c9-f929-4ddc-a9e5-efe9afebeada.png\" alt=\"image.png\" /><br />\n13.此时虚拟机配置已创建完。</p>\n<p><img src=\"http://rls61xk0n.hn-bkt.clouddn.com/682b7716-6b24-44cb-a8c8-08167df59449.png\" alt=\"image.png\" /><br />\n14.点击”开启此虚拟机“即可开始体验。</p>\n<h2><a id=\"_46\"></a>总结</h2>\n<p>1、打开虚拟机，创建新的虚拟机;<br />\n2、定义硬件，再在模拟机中进行系统的安装;<br />\n3、点击”开启此虚拟机“，体验系统。</p>\n', 1596126527386230785);

-- ----------------------------
-- Table structure for ms_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `ms_article_tag`;
CREATE TABLE `ms_article_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE,
  INDEX `tag_id`(`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596126527449145348 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_article_tag
-- ----------------------------
INSERT INTO `ms_article_tag` VALUES (1, 1, 1);
INSERT INTO `ms_article_tag` VALUES (2, 1, 2);
INSERT INTO `ms_article_tag` VALUES (3, 2, 4);
INSERT INTO `ms_article_tag` VALUES (1595684210049167362, 1595684209973669890, 5);
INSERT INTO `ms_article_tag` VALUES (1595688099494436865, 1595688099444105217, 4);
INSERT INTO `ms_article_tag` VALUES (1595748841774096385, 1595748841706987522, 4);
INSERT INTO `ms_article_tag` VALUES (1596042794532511746, 1596042794507345922, 1);
INSERT INTO `ms_article_tag` VALUES (1596048541370802178, 1596048541286916098, 1);
INSERT INTO `ms_article_tag` VALUES (1596052778532200449, 1596052778465091586, 1);
INSERT INTO `ms_article_tag` VALUES (1596058721508528129, 1596058721449807874, 1);
INSERT INTO `ms_article_tag` VALUES (1596114165837012994, 1596114165757321218, 4);
INSERT INTO `ms_article_tag` VALUES (1596126095507136514, 1596126095507136513, 5);
INSERT INTO `ms_article_tag` VALUES (1596126527449145346, 1596126527386230785, 1);
INSERT INTO `ms_article_tag` VALUES (1596126527449145347, 1596126527386230785, 5);

-- ----------------------------
-- Table structure for ms_category
-- ----------------------------
DROP TABLE IF EXISTS `ms_category`;
CREATE TABLE `ms_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_category
-- ----------------------------
INSERT INTO `ms_category` VALUES (1, '/static/category/front.png', '前端', '用户看得见的');
INSERT INTO `ms_category` VALUES (2, '/static/category/back.png', '后端', '用户看不见的');
INSERT INTO `ms_category` VALUES (3, '/static/category/lift.jpg', '生活', '嗨害嗨');
INSERT INTO `ms_category` VALUES (4, '/static/category/database.png', '数据库', '存储数据的仓库');
INSERT INTO `ms_category` VALUES (5, '/static/category/language.png', '编程语言', 'PHP是世界上最好的语言.java');

-- ----------------------------
-- Table structure for ms_comment
-- ----------------------------
DROP TABLE IF EXISTS `ms_comment`;
CREATE TABLE `ms_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `create_date` bigint NOT NULL COMMENT '创建时间',
  `article_id` bigint NOT NULL COMMENT '文章id',
  `author_id` bigint NOT NULL COMMENT '作者id',
  `parent_id` bigint NOT NULL COMMENT '父评论id',
  `to_uid` bigint NOT NULL COMMENT '给谁评论',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第几层的评论',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596058768711225347 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_comment
-- ----------------------------
INSERT INTO `ms_comment` VALUES (53, '写的好', 123213213213, 1, 1, 0, 1, '1');
INSERT INTO `ms_comment` VALUES (1595089679482322945, '好文啊\n', 1669133989575, 1, 5, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1595089780867039234, '真好', 1669134013765, 1, 5, 1405205050975899650, 1, '2');
INSERT INTO `ms_comment` VALUES (1595689433950003202, '1', 1669276982196, 1595688099444105217, 12, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1595718190844846082, 'admin', 1669283838347, 1595688099444105217, 1, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1595718222994186241, 'admin', 1669283846035, 1595688099444105217, 1, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1595718255495847937, 'admin', 1669283853791, 1595688099444105217, 1, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1596058768711225346, '阿文', 1669365038457, 1596058721449807874, 1596048472131231746, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1596060395765633025, '不错呐', 1669365426388, 1596058721449807874, 1596048472131231746, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1596084965834956802, '哪有哪有', 1669371284331, 1, 22, 53, 1, '2');
INSERT INTO `ms_comment` VALUES (1596085097397690370, '确实确实', 1669371315716, 1, 22, 0, 0, '1');
INSERT INTO `ms_comment` VALUES (1596085251735494657, 'good', 1669371352505, 1, 22, 0, 0, '1');

-- ----------------------------
-- Table structure for ms_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `ms_sys_user`;
CREATE TABLE `ms_sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `create_date` bigint NULL DEFAULT NULL COMMENT '注册时间',
  `last_login` bigint NULL DEFAULT NULL COMMENT '最后登录时间',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `mobile_phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `deleted` bit(1) NULL DEFAULT NULL COMMENT '是否删除',
  `admin` bit(1) NULL DEFAULT NULL COMMENT '是否管理员',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_sys_user
-- ----------------------------
INSERT INTO `ms_sys_user` VALUES (1, 'admin', '15f08f86435b060236fa9ccea751e9e5', '李四', 20210622223122, 20210630223130, 'http://localhost:8080/static/img/logo.b3a48c0.png', '12', '11', b'0', b'1', '12', '1');
INSERT INTO `ms_sys_user` VALUES (22, 'caibo', '559930024fd0770525f1288f157c0d5a', 'caibo', 1669361215113, 1669361215113, '/static/img/logo.b3a48c0.png', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ms_sys_user` VALUES (1596048472131231746, 'huang', '6e429b4a32e5b6312708db075a9b49e4', 'huang', 1669362583556, 1669362583556, '/static/img/logo.b3a48c0.png', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ms_sys_user` VALUES (1596113934013636610, 'yuyi', '82d54051435fa1cd6c23d1426e64f314', '余艺', 1669378190898, 1669378190898, '/static/img/logo.b3a48c0.png', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ms_sys_user` VALUES (1596123733447090177, 'xiaohuang', 'fd8c185fde390c42d4d90247fce407f5', '黄懿桓', 1669380527258, 1669380527258, '/static/img/logo.b3a48c0.png', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ms_tag
-- ----------------------------
DROP TABLE IF EXISTS `ms_tag`;
CREATE TABLE `ms_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ms_tag
-- ----------------------------
INSERT INTO `ms_tag` VALUES (1, '/static/tag/java.png', 'Java');
INSERT INTO `ms_tag` VALUES (2, '/static/tag/spring.png', 'Spring');
INSERT INTO `ms_tag` VALUES (3, '/static/tag/docker.png', 'Docker');
INSERT INTO `ms_tag` VALUES (4, '/static/tag/vue.png', 'vue');
INSERT INTO `ms_tag` VALUES (5, '/static/tag/linux.png', 'Linux');
INSERT INTO `ms_tag` VALUES (6, '/static/tag/mp.png', 'MybatisPlus');

SET FOREIGN_KEY_CHECKS = 1;
