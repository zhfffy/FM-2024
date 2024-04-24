clear;
clear;
# ./rebuild.sh;
make clean;
make -j;
# valgrind ./modelchecker ./testcase/cal209.aig
# ./modelchecker ./testcase/cal209.aag
# valgrind ./modelchecker ./testcase/cal21.aig
# valgrind 
# ./modelchecker ./testcase/cal35.aig
# ./modelchecker /pub/data/zxd/data/MC/hwmcc2020-abc/data/vgasim_imgfifo-p066.aig
# ./modelchecker /pub/data/zxd/data/MC/hwmcc2020-abc/data/gen43.aig

# valgrind 
# ./modelchecker /pub/data/zxd/data/MC/hwmcc2020-abc/data/shift_register_top_w16_d8_e0.aig
# valgrind ./modelchecker ./testcase/test_10c.aig
# ./modelchecker /pub/data/zxd/data/MC/hwmcc2017/data/6s367r.aig
# ./modelchecker /pub/data/zxd/data/MC/hwmcc2020-abc/data/dspfilters_fastfir_second-p43.aig
# valgrind ./modelchecker ./testcase/i10.aag
# valgrind 
# valgrind ./modelchecker /pub/data/zxd/data/MC/hwmcc2017/data/texasifetch1p1.aig

#/home/zhulf/modelchecker/modelchecker /home/zhulf/modelchecker/test4.aig
/home/zhulf/modelchecker/modelchecker  /home/zhulf/modelchecker/test4_fold.aig -pc -acc 

#/home/zhulf/modelchecker/modelchecker  /home/zhulf/modelchecker/testcase/bug_instance/prodcellp0neg.aag
#/home/zhulf/modelchecker/modelchecker  /home/zhulf/data/MC/hwmcc2020/data/dspfilters_fastfir_second-p05.aig
#time /home/zhulf/modelchecker/modelchecker /home/zhulf/data/MC/hwmcc2020-abc/data/zipcpu-busdelay-p36.aig   # mic(cube)特别长 每次drop一个literal很慢
#time /home/zhulf/modelchecker/modelchecker /home/zhulf/data/MC/hwmcc2020-abc/data/frogs.5.prop1-func-interl.aig
#time /home/zhulf/modelchecker/modelchecker /home/zhulf/data/MC/hwmcc2020-abc/data/zipcpu-zipmmu-p39.aig

#time ./modelchecker /home/zhulf/data/MC/hwmcc2020-abc/data/blocks.4.prop1-back-serstep.aig        m0 55.8 其他无解
#time ./modelchecker /home/zhulf/data/MC/hwmcc2020-abc/data/qspiflash_dualflexpress_divfive-p009.aig m0 m1 20s m7 m8 无解
#time ./modelchecker /home/zhulf/data/MC/hwmcc2020-abc/data/vis_arrays_buf_bug.aig #其他求解器都秒解 我们这个很慢

#time ./modelchecker ./testcase/bug_instance/bc57sensorsp1.aig  #40s
#time ./modelchecker ./testcase/bug_instance/anderson.3.prop1-back-serstep.aig #秒出
#time ./modelchecker ./testcase/zipversa_composecrc_prf-p03.aig #在level7死循环
#time ./modelchecker /home/zhulf/data/MC/hwmcc2020/data/zipversa_composecrc_prf-p22.aig 不化简无法读取

# scp -r  zhulf@192.168.100.3:/pub/data/zxd/res/ic3-baselines /pub/data/zhulf/res/ic3-baselines/ 复制到本地
# scp -r  zhulf@192.168.100.2:/pub/data/zhulf /pub/data/zhulf 复制到本地


