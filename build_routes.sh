#!/bin/bash

# 为主应用生成路由
echo "为主应用生成路由..."
flutter pub run build_runner build --delete-conflicting-outputs

# 为Auth模块生成路由
echo "为Auth模块生成路由..."
cd modules/auth
flutter pub run build_runner build --delete-conflicting-outputs
cd ../..

# 为Chat模块生成路由
echo "为Chat模块生成路由..."
cd modules/chat
flutter pub run build_runner build --delete-conflicting-outputs
cd ../..

# 为其它模块生成路由（如果需要）
# echo "为Contact模块生成路由..."
# cd modules/contact
# flutter pub run build_runner build --delete-conflicting-outputs
# cd ../..

echo "路由生成完成!" 