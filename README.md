# 飞宏IM - 多模块Flutter应用

## 项目介绍

飞宏IM是一款功能完善的即时通讯应用，基于Flutter框架开发，采用多模块架构设计，支持Android和iOS平台。

## 架构设计

项目采用模块化架构，每个模块都有明确的职责和边界，提高了代码的可维护性和可扩展性。

### 模块划分

项目分为以下几个主要模块：

#### 1. common模块

包含通用工具、扩展方法、常量、主题和国际化资源。

- 工具类（utils）
- 扩展方法（extensions）
- 模型（models）
- 主题（theme）
- 国际化（i18n）
- 公共组件（widgets）

#### 2. core模块

包含核心业务逻辑、网络请求、数据处理和缓存。

- API客户端（api）
- 数据库（database）
- 仓库（repositories）
- 服务（services）

#### 3. uikit模块

包含所有可复用的UI组件和主题。

- 组件（components）
- 主题（theme）
- 动画（animations）

#### 4. auth模块

处理用户认证相关功能，包括登录、注册、验证码等。

- 屏幕（screens）
- 提供者（providers）
- 仓库（repositories）

#### 5. chat模块

处理聊天相关功能，包括会话列表、聊天界面、消息处理等。

- 屏幕（screens）
- 提供者（providers）
- 仓库（repositories）
- 组件（components）

#### 6. contact模块

处理联系人相关功能，包括联系人列表、用户资料等。

- 屏幕（screens）
- 提供者（providers）
- 仓库（repositories）
- 组件（components）

#### 7. 主应用模块

整合所有模块，提供应用入口、路由和全局配置。

### 技术栈

- 状态管理：Riverpod
- 路由管理：auto_route
- 网络请求：dio
- 数据持久化：shared_preferences, sqflite, hive
- UI组件：自定义UI组件库
- 即时通讯：WuKongIM SDK

## 开发指南

### 环境设置

```bash
# 获取依赖
flutter pub get

# 生成代码
flutter pub run build_runner build --delete-conflicting-outputs
```

### 模块开发规范

1. 每个模块都应该有明确的职责和边界
2. 模块之间应通过定义良好的接口进行通信
3. 避免循环依赖
4. 公共代码应放在common模块中
5. UI组件应在uikit模块中定义

### 代码风格

遵循[Effective Dart](https://dart.dev/guides/language/effective-dart)规范。

## 构建与发布

```bash
# 构建Android应用
flutter build apk --release

# 构建iOS应用
flutter build ios --release
```
