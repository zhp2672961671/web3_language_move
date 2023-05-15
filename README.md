<!--
 * @Author: 章红平
 * @Date: 2023-05-15 09:52:33
 * @LastEditors: 章红平
 * @LastEditTime: 2023-05-15 14:21:57
 * @FilePath: \web3_language_move\README.md
 * @Description: 描述
-->
# web3_language_move
<!-- https://learnblockchain.cn/article/5285 -->
#move 环境
安装cargos
由于move是基于rust写的。所以要安装move首先要安装rust开发环境。
使用以下命令安装：
curl https://sh.rustup.rs -sSf | sh
安装move-cli
1.拉取move最新代码
 git clone https://github.com/move-language/move.git
2.安装move-cli
cargo install --path move/language/tools/move-cli
3.测试安装是否成功
move -h
Move-analyzer安装
主要提供语法检查、高亮等功能，vscode的插件也需要用到该命令，否则会报错。

cargo install --path move/language/tools/move-analyzer

vscode开发环境
1.move-analyzer
2.move syntax
线上测试环境
https://playground.pontem.network/