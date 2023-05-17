/*Move 的基本数据类型包括: 整型 (u8, u64, u128)、布尔型 boolean 和地址 address。

Move 不支持字符串和浮点数。 */
/*
整型
整型包括 u8、u64 和 u128，我们通过下面的例子来理解整型：
*/
script {
    fun main() {
        // 定义空变量，稍后设置值
        let a: u8;
        a = 10;

        // 定义变量，设置类型
        let a: u64 = 10;

        // 最后简单的分配
        let a = 10;

        // 具有定义值类型的简单赋值
        let a = 10u128;

        // 在函数调用或表达式中，可以使用ints作为常数值
        if (a < 10) {};

        // 像这样的，带类型
        if (a < 10u8) {}; // 通常不需要指定类型
    }
}
/*
运算符as
当需要比较值的大小或者当函数需要输入不同大小的整型参数时，你可以使用as运算符将一种整型转换成另外一种整型：
*/
script{
    fun main(){
        let a:u8=10;
        let b:u64=100;
        //我们只能比较相同大小的整数
        if(a==(b as u8))abort 11;
        if((a as u64)==b)abort 11;
    }
}
/*
布尔型
布尔类型就像编程语言那样，包含false和true两个值。
*/
script{
    fun main(){
        //这些都是做这件事的方法
        let b:bool;b=true;
        let b:bool=true;
        let b=true;
        let b=false;//这里有一个false的例子
    }
}
/*
地址
地址是区块链中交易发送者的标识符，转账和导入模块这些基本操作都
*/
script {
    fun main(){
        let addr :address;// 类型标识符
        // 在这本书中，我将使用{发件人}}表示法；
        // 始终将示例中的“｛｛sender｝｝”替换为VM特定的地址！！！
        addr={{sender}};
        // 在Diem的Move VM和Starcoin中-十六进制的16字节地址
        addr=0x...;
        // 在dfinance的DVM-bech32编码地址中，前缀为“wallet1”
        addr=wallet1...;
    }
}