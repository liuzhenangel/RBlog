

# Rina Blog

> RBlog 项目是一个使用 [rails template of 80percent](https://github.com/80percent/rails-template) 模板创建的 Rails 项目, 引用了最新的技术框架，后端框架为: Rails 5.1.4, 前端框架用的 bootstrap 4, startbootstrap, 主要功能有: 后台管理, 数据统计, 文章管理，相册管理，个人简历管理, 时间线等功能

## Demo

项目 Demo 请访问: <http://liuzhen.me/>

## 核心技术框架

* Ruby on Rails 5.1.4
* bootstrap 4
* font-awesome
* figaro
* postgres
* slim
* high_voltage
* carriewave & upyun
* sidekiq
* kaminari
* mina
* puma
* lograge
* simditor
* turn.js

## 系统依赖

Rails 5.1.4

## 开发环境准备

第一步, 安装项目依赖

$ bundle install

第二步, 启动服务

$ rails s

第三步, 浏览器访问: http://localhost:3000

结束.

## 如何发布?

第一步, 配置nginx

先根据项目里的 config/deploy/production.rb, /config/deploy.rb, config/puma.rb, /config/nigix.conf 文件, 修改其中的配置, 然后将 /config/nigix.conf 文件复制到你的服务器上 nginx 所在目录的 /etc/nginx/conf.d 目录下, 命名为 xxx.conf 的文件. 然后重启 nginx.

第二步, 在服务器上初始化

$ mina setup

第三步, 发布

$ mina deploy

## 学习参考资料

Rails文档: <http://edgeguides.rubyonrails.org/api_app.html>

使用模板创建Rails项目: <https://github.com/80percent/rails-template>

ubuntu16.04安装rails <https://gorails.com/setup/ubuntu/16.04>

simditor编辑器: <http://simditor.tower.im/>

startbootstrap-clean-blog前端样式: <https://startbootstrap.com/template-overviews/clean-blog/>

sb-admin前端样式: <https://startbootstrap.com/template-overviews/sb-admin/>

turnjs前端样式: <http://www.turnjs.com>

timeline前端样式: <https://github.com/RyanFitzgerald/vertical-timeline>

图片在线压缩: <http://compressjpeg.com/zh/>

## 引荐 Vue.js 项目

项目 Demo 请访问: <http://v2ex.liuzhen.me/>

项目代码: <https://github.com/liuzhenangel/v2ex_frontend>

## 引荐 React.js 项目

项目 Demo 请访问: <http://ruby-china.liuzhen.me/>

项目代码: <https://github.com/liuzhenangel/react-ruby-china>

## 贡献者

* Rina

## Built with

[rails template of 80percent](https://github.com/80percent/rails-template)

## LICENSE
MIT
