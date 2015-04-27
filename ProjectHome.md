I rewrite a python based picoblaze compiler and assembler, and upload to https://github.com/buaabyl/picoblaze_utils because google code blocked by isp sometime:(


---

The sdcc port is from http://www.fit.vutbr.cz/~meduna/work/doku.php?id=projects:vlam:pbcc:pbcc

The kcpsm3w32 is a wapper of kcpsm3.exe, because that is 16-bit dos program. and have no argument can conrol. So I write a simple wapper.

You can build sdcc under msys or cygwin. I build it under debian5 with mingw32

```
./configure --host=i586-mingw32msvc --disable-pic16-port --disable-pic14-port --disable-json-port --disable-ds390-port --disable-ds400-port --disable-z80-port --disable-mcs51-port --disable-hc80-port --disable-gbz80-port

chmod +x sim/ucsim/mkecho
make
```

And everything fine.

The kcpsm3w32 can build with vc and gcc.


---

sdcc的picoblaze移植是有 http://www.fit.vutbr.cz/~meduna/work/doku.php?id=projects:vlam:pbcc:pbcc 做的。

我写了一个kcpsm3w32的汇编封装器，因为xilinx给的kcpsm3.exe是dos程序，直接运行会改变命令行的大小，并且不可控，所以自己写了一个封装。

用法：
```
sdcc -mpblaze simple.c
```

正确的话会输出：simple.psm和simple.v。

其它信息可以到 http://www.thinkemb.com/wordpress/?p=212 看看。