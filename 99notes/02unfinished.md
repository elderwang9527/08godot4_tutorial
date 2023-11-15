## 231112

## 下载 godot

使用 mac 系统演示，只是个人习惯。
注意使用 4.1.1 版本

## 创建项目

切换语言

## 各菜单栏介绍

## 创建 characterbody2d 节点

给出官方介绍链接  
重命名为 Player ，新建 player 文件夹并保存此场景
给此节点新增 sprite2d 子节点。

## 创建玩家精灵图

下载 ninja 文件夹，并更名为 art 保存在项目下  
把绿色忍者的精灵图更名为 player sprite.png，并把它设置为 sprite2d 的源图  
此时图片不清晰，回到 player 节点，设置 canvasitem，texture，flieter->nearest，图片就清晰了  
选择 sprite2d，animation，设置 hframe 和 vframe 到刚好只显示一个像素图  
测试场景，发现刚才设置的像素图在左上角且很难看到

## 设置 viewport

project setting -> general -> display -> window -> size 设置长宽为 1920/8 1080/8，此时运行场景窗口会很小，且即使拉大屏幕，像素图也不能变大
project setting -> general -> display -> window -> stretch -> mode 设置为 canvas_item，aspect 设置为 keep，这样拉大屏幕后会发现像素图也变大了。
打开 window 的 advanced settings，将 window width override 和 window height override 分别设置为 1920，1080。这样测试场景时不用拉伸就已经是合适尺寸了。

## 下节内容为移动玩家
