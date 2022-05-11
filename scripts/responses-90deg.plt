set title 'Frequency response USB measuremet microphone UMIK-1 \
for many 90-degree calibration files'
set nokey
set term png size 1920, 1080
set output '../overview/responses-90deg.png'
set ylabel 'factor'
set xlabel 'frequency [Hz]'
set xrange [:20000]
set yrange [-10:6]
set logscale x
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
plot \
'../stripped/7005700_90deg.tsv' using 1:2 with lines, \
'../stripped/7005701_90deg.tsv' using 1:2 with lines, \
'../stripped/7005702_90deg.tsv' using 1:2 with lines, \
'../stripped/7005703_90deg.tsv' using 1:2 with lines, \
'../stripped/7005704_90deg.tsv' using 1:2 with lines, \
'../stripped/7005705_90deg.tsv' using 1:2 with lines, \
'../stripped/7005706_90deg.tsv' using 1:2 with lines, \
'../stripped/7005707_90deg.tsv' using 1:2 with lines, \
'../stripped/7005708_90deg.tsv' using 1:2 with lines, \
'../stripped/7005709_90deg.tsv' using 1:2 with lines, \
'../stripped/7005710_90deg.tsv' using 1:2 with lines, \
'../stripped/7005711_90deg.tsv' using 1:2 with lines, \
'../stripped/7005712_90deg.tsv' using 1:2 with lines, \
'../stripped/7005713_90deg.tsv' using 1:2 with lines, \
'../stripped/7005714_90deg.tsv' using 1:2 with lines, \
'../stripped/7005715_90deg.tsv' using 1:2 with lines, \
'../stripped/7005716_90deg.tsv' using 1:2 with lines, \
'../stripped/7005717_90deg.tsv' using 1:2 with lines, \
'../stripped/7005718_90deg.tsv' using 1:2 with lines, \
'../stripped/7005719_90deg.tsv' using 1:2 with lines, \
'../stripped/7005720_90deg.tsv' using 1:2 with lines, \
'../stripped/7005721_90deg.tsv' using 1:2 with lines, \
'../stripped/7005722_90deg.tsv' using 1:2 with lines, \
'../stripped/7005723_90deg.tsv' using 1:2 with lines, \
'../stripped/7005724_90deg.tsv' using 1:2 with lines, \
'../stripped/7005725_90deg.tsv' using 1:2 with lines, \
'../stripped/7005726_90deg.tsv' using 1:2 with lines, \
'../stripped/7005727_90deg.tsv' using 1:2 with lines, \
'../stripped/7005728_90deg.tsv' using 1:2 with lines, \
'../stripped/7005729_90deg.tsv' using 1:2 with lines, \
'../stripped/7005730_90deg.tsv' using 1:2 with lines, \
'../stripped/7005731_90deg.tsv' using 1:2 with lines, \
'../stripped/7005732_90deg.tsv' using 1:2 with lines, \
'../stripped/7005733_90deg.tsv' using 1:2 with lines, \
'../stripped/7005734_90deg.tsv' using 1:2 with lines, \
'../stripped/7005735_90deg.tsv' using 1:2 with lines, \
'../stripped/7005736_90deg.tsv' using 1:2 with lines, \
'../stripped/7005737_90deg.tsv' using 1:2 with lines, \
'../stripped/7005738_90deg.tsv' using 1:2 with lines, \
'../stripped/7005739_90deg.tsv' using 1:2 with lines, \
'../stripped/7005740_90deg.tsv' using 1:2 with lines, \
'../stripped/7005741_90deg.tsv' using 1:2 with lines, \
'../stripped/7005742_90deg.tsv' using 1:2 with lines, \
'../stripped/7005743_90deg.tsv' using 1:2 with lines, \
'../stripped/7005744_90deg.tsv' using 1:2 with lines, \
'../stripped/7005745_90deg.tsv' using 1:2 with lines, \
'../stripped/7005746_90deg.tsv' using 1:2 with lines, \
'../stripped/7005747_90deg.tsv' using 1:2 with lines, \
'../stripped/7005748_90deg.tsv' using 1:2 with lines, \
'../stripped/7005749_90deg.tsv' using 1:2 with lines, \
'../stripped/7005750_90deg.tsv' using 1:2 with lines, \
'../stripped/7005751_90deg.tsv' using 1:2 with lines, \
'../stripped/7005752_90deg.tsv' using 1:2 with lines, \
'../stripped/7005753_90deg.tsv' using 1:2 with lines, \
'../stripped/7005754_90deg.tsv' using 1:2 with lines, \
'../stripped/7005755_90deg.tsv' using 1:2 with lines, \
'../stripped/7005756_90deg.tsv' using 1:2 with lines, \
'../stripped/7005757_90deg.tsv' using 1:2 with lines, \
'../stripped/7005758_90deg.tsv' using 1:2 with lines, \
'../stripped/7005759_90deg.tsv' using 1:2 with lines, \
'../stripped/7005760_90deg.tsv' using 1:2 with lines, \
'../stripped/7005761_90deg.tsv' using 1:2 with lines, \
'../stripped/7005762_90deg.tsv' using 1:2 with lines, \
'../stripped/7005763_90deg.tsv' using 1:2 with lines, \
'../stripped/7005764_90deg.tsv' using 1:2 with lines, \
'../stripped/7005765_90deg.tsv' using 1:2 with lines, \
'../stripped/7005766_90deg.tsv' using 1:2 with lines, \
'../stripped/7005767_90deg.tsv' using 1:2 with lines, \
'../stripped/7005768_90deg.tsv' using 1:2 with lines, \
'../stripped/7005769_90deg.tsv' using 1:2 with lines, \
'../stripped/7005770_90deg.tsv' using 1:2 with lines, \
'../stripped/7005771_90deg.tsv' using 1:2 with lines, \
'../stripped/7005772_90deg.tsv' using 1:2 with lines, \
'../stripped/7005773_90deg.tsv' using 1:2 with lines, \
'../stripped/7005774_90deg.tsv' using 1:2 with lines, \
'../stripped/7005775_90deg.tsv' using 1:2 with lines, \
'../stripped/7005776_90deg.tsv' using 1:2 with lines, \
'../stripped/7005777_90deg.tsv' using 1:2 with lines, \
'../stripped/7005778_90deg.tsv' using 1:2 with lines, \
'../stripped/7005779_90deg.tsv' using 1:2 with lines, \
'../stripped/7005780_90deg.tsv' using 1:2 with lines, \
'../stripped/7005781_90deg.tsv' using 1:2 with lines, \
'../stripped/7005782_90deg.tsv' using 1:2 with lines, \
'../stripped/7005783_90deg.tsv' using 1:2 with lines, \
'../stripped/7005784_90deg.tsv' using 1:2 with lines, \
'../stripped/7005785_90deg.tsv' using 1:2 with lines, \
'../stripped/7005786_90deg.tsv' using 1:2 with lines, \
'../stripped/7005787_90deg.tsv' using 1:2 with lines, \
'../stripped/7005788_90deg.tsv' using 1:2 with lines, \
'../stripped/7005789_90deg.tsv' using 1:2 with lines, \
'../stripped/7005790_90deg.tsv' using 1:2 with lines, \
'../stripped/7005791_90deg.tsv' using 1:2 with lines, \
'../stripped/7005792_90deg.tsv' using 1:2 with lines, \
'../stripped/7005793_90deg.tsv' using 1:2 with lines, \
'../stripped/7005794_90deg.tsv' using 1:2 with lines, \
'../stripped/7005795_90deg.tsv' using 1:2 with lines, \
'../stripped/7005796_90deg.tsv' using 1:2 with lines, \
'../stripped/7005797_90deg.tsv' using 1:2 with lines, \
'../stripped/7005798_90deg.tsv' using 1:2 with lines, \
'../stripped/7005799_90deg.tsv' using 1:2 with lines, \
'../stripped/7005800_90deg.tsv' using 1:2 with lines, \
'../stripped/7005801_90deg.tsv' using 1:2 with lines, \
'../stripped/7005802_90deg.tsv' using 1:2 with lines, \
'../stripped/7005803_90deg.tsv' using 1:2 with lines, \
'../stripped/7005804_90deg.tsv' using 1:2 with lines, \
'../stripped/7005805_90deg.tsv' using 1:2 with lines, \
'../stripped/7005806_90deg.tsv' using 1:2 with lines, \
'../stripped/7005807_90deg.tsv' using 1:2 with lines, \
'../stripped/7005808_90deg.tsv' using 1:2 with lines, \
'../stripped/7005809_90deg.tsv' using 1:2 with lines, \
'../stripped/7005810_90deg.tsv' using 1:2 with lines, \
'../stripped/7005811_90deg.tsv' using 1:2 with lines, \
'../stripped/7005812_90deg.tsv' using 1:2 with lines, \
'../stripped/7005813_90deg.tsv' using 1:2 with lines, \
'../stripped/7005814_90deg.tsv' using 1:2 with lines, \
'../stripped/7005815_90deg.tsv' using 1:2 with lines, \
'../stripped/7005816_90deg.tsv' using 1:2 with lines, \
'../stripped/7005817_90deg.tsv' using 1:2 with lines, \
'../stripped/7005818_90deg.tsv' using 1:2 with lines, \
'../stripped/7005819_90deg.tsv' using 1:2 with lines, \
'../stripped/7005820_90deg.tsv' using 1:2 with lines, \
'../stripped/7005821_90deg.tsv' using 1:2 with lines, \
'../stripped/7005822_90deg.tsv' using 1:2 with lines, \
'../stripped/7005823_90deg.tsv' using 1:2 with lines, \
'../stripped/7005824_90deg.tsv' using 1:2 with lines, \
'../stripped/7005825_90deg.tsv' using 1:2 with lines, \
'../stripped/7005826_90deg.tsv' using 1:2 with lines, \
'../stripped/7005827_90deg.tsv' using 1:2 with lines, \
'../stripped/7005828_90deg.tsv' using 1:2 with lines, \
'../stripped/7005829_90deg.tsv' using 1:2 with lines, \
'../stripped/7005830_90deg.tsv' using 1:2 with lines, \
'../stripped/7005831_90deg.tsv' using 1:2 with lines, \
'../stripped/7005832_90deg.tsv' using 1:2 with lines, \
'../stripped/7005833_90deg.tsv' using 1:2 with lines, \
'../stripped/7005834_90deg.tsv' using 1:2 with lines, \
'../stripped/7005835_90deg.tsv' using 1:2 with lines, \
'../stripped/7005836_90deg.tsv' using 1:2 with lines, \
'../stripped/7005837_90deg.tsv' using 1:2 with lines, \
'../stripped/7005838_90deg.tsv' using 1:2 with lines, \
'../stripped/7005839_90deg.tsv' using 1:2 with lines, \
'../stripped/7005840_90deg.tsv' using 1:2 with lines, \
'../stripped/7005841_90deg.tsv' using 1:2 with lines, \
'../stripped/7005842_90deg.tsv' using 1:2 with lines, \
'../stripped/7005843_90deg.tsv' using 1:2 with lines, \
'../stripped/7005844_90deg.tsv' using 1:2 with lines, \
'../stripped/7005845_90deg.tsv' using 1:2 with lines, \
'../stripped/7005846_90deg.tsv' using 1:2 with lines, \
'../stripped/7005847_90deg.tsv' using 1:2 with lines, \
'../stripped/7005848_90deg.tsv' using 1:2 with lines, \
'../stripped/7005849_90deg.tsv' using 1:2 with lines, \
'../stripped/7005850_90deg.tsv' using 1:2 with lines, \
'../stripped/7005851_90deg.tsv' using 1:2 with lines, \
'../stripped/7005852_90deg.tsv' using 1:2 with lines, \
'../stripped/7005853_90deg.tsv' using 1:2 with lines, \
'../stripped/7005854_90deg.tsv' using 1:2 with lines, \
'../stripped/7005855_90deg.tsv' using 1:2 with lines, \
'../stripped/7005856_90deg.tsv' using 1:2 with lines, \
'../stripped/7005857_90deg.tsv' using 1:2 with lines, \
'../stripped/7005858_90deg.tsv' using 1:2 with lines, \
'../stripped/7005859_90deg.tsv' using 1:2 with lines, \
'../stripped/7005860_90deg.tsv' using 1:2 with lines, \
'../stripped/7005861_90deg.tsv' using 1:2 with lines, \
'../stripped/7005862_90deg.tsv' using 1:2 with lines, \
'../stripped/7005863_90deg.tsv' using 1:2 with lines, \
'../stripped/7005864_90deg.tsv' using 1:2 with lines, \
'../stripped/7005865_90deg.tsv' using 1:2 with lines, \
'../stripped/7005866_90deg.tsv' using 1:2 with lines, \
'../stripped/7005867_90deg.tsv' using 1:2 with lines, \
'../stripped/7005868_90deg.tsv' using 1:2 with lines, \
'../stripped/7005869_90deg.tsv' using 1:2 with lines, \
'../stripped/7005870_90deg.tsv' using 1:2 with lines, \
'../stripped/7005871_90deg.tsv' using 1:2 with lines, \
'../stripped/7005872_90deg.tsv' using 1:2 with lines, \
'../stripped/7005873_90deg.tsv' using 1:2 with lines, \
'../stripped/7005874_90deg.tsv' using 1:2 with lines, \
'../stripped/7005875_90deg.tsv' using 1:2 with lines, \
'../stripped/7005876_90deg.tsv' using 1:2 with lines, \
'../stripped/7005877_90deg.tsv' using 1:2 with lines, \
'../stripped/7005878_90deg.tsv' using 1:2 with lines, \
'../stripped/7005879_90deg.tsv' using 1:2 with lines, \
'../stripped/7005880_90deg.tsv' using 1:2 with lines, \
'../stripped/7005881_90deg.tsv' using 1:2 with lines, \
'../stripped/7005882_90deg.tsv' using 1:2 with lines, \
'../stripped/7005883_90deg.tsv' using 1:2 with lines, \
'../stripped/7005884_90deg.tsv' using 1:2 with lines, \
'../stripped/7005885_90deg.tsv' using 1:2 with lines, \
'../stripped/7005886_90deg.tsv' using 1:2 with lines, \
'../stripped/7005887_90deg.tsv' using 1:2 with lines, \
'../stripped/7005888_90deg.tsv' using 1:2 with lines, \
'../stripped/7005889_90deg.tsv' using 1:2 with lines, \
'../stripped/7005890_90deg.tsv' using 1:2 with lines, \
'../stripped/7005891_90deg.tsv' using 1:2 with lines, \
'../stripped/7005892_90deg.tsv' using 1:2 with lines, \
'../stripped/7005893_90deg.tsv' using 1:2 with lines, \
'../stripped/7005894_90deg.tsv' using 1:2 with lines, \
'../stripped/7005895_90deg.tsv' using 1:2 with lines, \
'../stripped/7005896_90deg.tsv' using 1:2 with lines, \
'../stripped/7005897_90deg.tsv' using 1:2 with lines, \
'../stripped/7005898_90deg.tsv' using 1:2 with lines, \
'../stripped/7005899_90deg.tsv' using 1:2 with lines, \
'../stripped/7007100_90deg.tsv' using 1:2 with lines, \
'../stripped/7007101_90deg.tsv' using 1:2 with lines, \
'../stripped/7007102_90deg.tsv' using 1:2 with lines, \
'../stripped/7007103_90deg.tsv' using 1:2 with lines, \
'../stripped/7007104_90deg.tsv' using 1:2 with lines, \
'../stripped/7007105_90deg.tsv' using 1:2 with lines, \
'../stripped/7007106_90deg.tsv' using 1:2 with lines, \
'../stripped/7007107_90deg.tsv' using 1:2 with lines, \
'../stripped/7007108_90deg.tsv' using 1:2 with lines, \
'../stripped/7007109_90deg.tsv' using 1:2 with lines, \
'../stripped/7007110_90deg.tsv' using 1:2 with lines, \
'../stripped/7007111_90deg.tsv' using 1:2 with lines, \
'../stripped/7007112_90deg.tsv' using 1:2 with lines, \
'../stripped/7007113_90deg.tsv' using 1:2 with lines, \
'../stripped/7007114_90deg.tsv' using 1:2 with lines, \
'../stripped/7007115_90deg.tsv' using 1:2 with lines, \
'../stripped/7007116_90deg.tsv' using 1:2 with lines, \
'../stripped/7007117_90deg.tsv' using 1:2 with lines, \
'../stripped/7007118_90deg.tsv' using 1:2 with lines, \
'../stripped/7007119_90deg.tsv' using 1:2 with lines, \
'../stripped/7007120_90deg.tsv' using 1:2 with lines, \
'../stripped/7007121_90deg.tsv' using 1:2 with lines, \
'../stripped/7007122_90deg.tsv' using 1:2 with lines, \
'../stripped/7007123_90deg.tsv' using 1:2 with lines, \
'../stripped/7007124_90deg.tsv' using 1:2 with lines, \
'../stripped/7007125_90deg.tsv' using 1:2 with lines, \
'../stripped/7007126_90deg.tsv' using 1:2 with lines, \
'../stripped/7007127_90deg.tsv' using 1:2 with lines, \
'../stripped/7007128_90deg.tsv' using 1:2 with lines, \
'../stripped/7007129_90deg.tsv' using 1:2 with lines, \
'../stripped/7007130_90deg.tsv' using 1:2 with lines, \
'../stripped/7007131_90deg.tsv' using 1:2 with lines, \
'../stripped/7007132_90deg.tsv' using 1:2 with lines, \
'../stripped/7007133_90deg.tsv' using 1:2 with lines, \
'../stripped/7007134_90deg.tsv' using 1:2 with lines, \
'../stripped/7007135_90deg.tsv' using 1:2 with lines, \
'../stripped/7007136_90deg.tsv' using 1:2 with lines, \
'../stripped/7007137_90deg.tsv' using 1:2 with lines, \
'../stripped/7007138_90deg.tsv' using 1:2 with lines, \
'../stripped/7007139_90deg.tsv' using 1:2 with lines, \
'../stripped/7007140_90deg.tsv' using 1:2 with lines, \
'../stripped/7007141_90deg.tsv' using 1:2 with lines, \
'../stripped/7007142_90deg.tsv' using 1:2 with lines, \
'../stripped/7007143_90deg.tsv' using 1:2 with lines, \
'../stripped/7007144_90deg.tsv' using 1:2 with lines, \
'../stripped/7007145_90deg.tsv' using 1:2 with lines, \
'../stripped/7007146_90deg.tsv' using 1:2 with lines, \
'../stripped/7007147_90deg.tsv' using 1:2 with lines, \
'../stripped/7007148_90deg.tsv' using 1:2 with lines, \
'../stripped/7007149_90deg.tsv' using 1:2 with lines, \
'../stripped/7007150_90deg.tsv' using 1:2 with lines, \
'../stripped/7007151_90deg.tsv' using 1:2 with lines, \
'../stripped/7007152_90deg.tsv' using 1:2 with lines, \
'../stripped/7007153_90deg.tsv' using 1:2 with lines, \
'../stripped/7007154_90deg.tsv' using 1:2 with lines, \
'../stripped/7007155_90deg.tsv' using 1:2 with lines, \
'../stripped/7007156_90deg.tsv' using 1:2 with lines, \
'../stripped/7007157_90deg.tsv' using 1:2 with lines, \
'../stripped/7007158_90deg.tsv' using 1:2 with lines, \
'../stripped/7007159_90deg.tsv' using 1:2 with lines, \
'../stripped/7007160_90deg.tsv' using 1:2 with lines, \
'../stripped/7007161_90deg.tsv' using 1:2 with lines, \
'../stripped/7007162_90deg.tsv' using 1:2 with lines, \
'../stripped/7007163_90deg.tsv' using 1:2 with lines, \
'../stripped/7007164_90deg.tsv' using 1:2 with lines, \
'../stripped/7007165_90deg.tsv' using 1:2 with lines, \
'../stripped/7007166_90deg.tsv' using 1:2 with lines, \
'../stripped/7007167_90deg.tsv' using 1:2 with lines, \
'../stripped/7007168_90deg.tsv' using 1:2 with lines, \
'../stripped/7007169_90deg.tsv' using 1:2 with lines, \
'../stripped/7007170_90deg.tsv' using 1:2 with lines, \
'../stripped/7007171_90deg.tsv' using 1:2 with lines, \
'../stripped/7007172_90deg.tsv' using 1:2 with lines, \
'../stripped/7007173_90deg.tsv' using 1:2 with lines, \
'../stripped/7007174_90deg.tsv' using 1:2 with lines, \
'../stripped/7007175_90deg.tsv' using 1:2 with lines, \
'../stripped/7007176_90deg.tsv' using 1:2 with lines, \
'../stripped/7007177_90deg.tsv' using 1:2 with lines, \
'../stripped/7007178_90deg.tsv' using 1:2 with lines, \
'../stripped/7007179_90deg.tsv' using 1:2 with lines, \
'../stripped/7007180_90deg.tsv' using 1:2 with lines, \
'../stripped/7007181_90deg.tsv' using 1:2 with lines, \
'../stripped/7007182_90deg.tsv' using 1:2 with lines, \
'../stripped/7007183_90deg.tsv' using 1:2 with lines, \
'../stripped/7007184_90deg.tsv' using 1:2 with lines, \
'../stripped/7007185_90deg.tsv' using 1:2 with lines, \
'../stripped/7007186_90deg.tsv' using 1:2 with lines, \
'../stripped/7007187_90deg.tsv' using 1:2 with lines, \
'../stripped/7007188_90deg.tsv' using 1:2 with lines, \
'../stripped/7007189_90deg.tsv' using 1:2 with lines, \
'../stripped/7007190_90deg.tsv' using 1:2 with lines, \
'../stripped/7007191_90deg.tsv' using 1:2 with lines, \
'../stripped/7007192_90deg.tsv' using 1:2 with lines, \
'../stripped/7007193_90deg.tsv' using 1:2 with lines, \
'../stripped/7007194_90deg.tsv' using 1:2 with lines, \
'../stripped/7007195_90deg.tsv' using 1:2 with lines, \
'../stripped/7007196_90deg.tsv' using 1:2 with lines, \
'../stripped/7007197_90deg.tsv' using 1:2 with lines, \
'../stripped/7007198_90deg.tsv' using 1:2 with lines, \
'../stripped/7007199_90deg.tsv' using 1:2 with lines, \
'../stripped/7007200_90deg.tsv' using 1:2 with lines, \
'../stripped/7009100_90deg.tsv' using 1:2 with lines, \
'../stripped/7009101_90deg.tsv' using 1:2 with lines, \
'../stripped/7009102_90deg.tsv' using 1:2 with lines, \
'../stripped/7009103_90deg.tsv' using 1:2 with lines, \
'../stripped/7009104_90deg.tsv' using 1:2 with lines, \
'../stripped/7009105_90deg.tsv' using 1:2 with lines, \
'../stripped/7009106_90deg.tsv' using 1:2 with lines, \
'../stripped/7009107_90deg.tsv' using 1:2 with lines, \
'../stripped/7009108_90deg.tsv' using 1:2 with lines, \
'../stripped/7009109_90deg.tsv' using 1:2 with lines, \
'../stripped/7009110_90deg.tsv' using 1:2 with lines, \
'../stripped/7009111_90deg.tsv' using 1:2 with lines, \
'../stripped/7009112_90deg.tsv' using 1:2 with lines, \
'../stripped/7009113_90deg.tsv' using 1:2 with lines, \
'../stripped/7009114_90deg.tsv' using 1:2 with lines, \
'../stripped/7009115_90deg.tsv' using 1:2 with lines, \
'../stripped/7009116_90deg.tsv' using 1:2 with lines, \
'../stripped/7009117_90deg.tsv' using 1:2 with lines, \
'../stripped/7009118_90deg.tsv' using 1:2 with lines, \
'../stripped/7009119_90deg.tsv' using 1:2 with lines, \
'../stripped/7009120_90deg.tsv' using 1:2 with lines, \
'../stripped/7009121_90deg.tsv' using 1:2 with lines, \
'../stripped/7009122_90deg.tsv' using 1:2 with lines, \
'../stripped/7009123_90deg.tsv' using 1:2 with lines, \
'../stripped/7009124_90deg.tsv' using 1:2 with lines, \
'../stripped/7009125_90deg.tsv' using 1:2 with lines, \
'../stripped/7009126_90deg.tsv' using 1:2 with lines, \
'../stripped/7009127_90deg.tsv' using 1:2 with lines, \
'../stripped/7009128_90deg.tsv' using 1:2 with lines, \
'../stripped/7009129_90deg.tsv' using 1:2 with lines, \
'../stripped/7009130_90deg.tsv' using 1:2 with lines, \
'../stripped/7009131_90deg.tsv' using 1:2 with lines, \
'../stripped/7009132_90deg.tsv' using 1:2 with lines, \
'../stripped/7009133_90deg.tsv' using 1:2 with lines, \
'../stripped/7009134_90deg.tsv' using 1:2 with lines, \
'../stripped/7009135_90deg.tsv' using 1:2 with lines, \
'../stripped/7009136_90deg.tsv' using 1:2 with lines, \
'../stripped/7009137_90deg.tsv' using 1:2 with lines, \
'../stripped/7009138_90deg.tsv' using 1:2 with lines, \
'../stripped/7009139_90deg.tsv' using 1:2 with lines, \
'../stripped/7009140_90deg.tsv' using 1:2 with lines, \
'../stripped/7009141_90deg.tsv' using 1:2 with lines, \
'../stripped/7009142_90deg.tsv' using 1:2 with lines, \
'../stripped/7009143_90deg.tsv' using 1:2 with lines, \
'../stripped/7009144_90deg.tsv' using 1:2 with lines, \
'../stripped/7009145_90deg.tsv' using 1:2 with lines, \
'../stripped/7009146_90deg.tsv' using 1:2 with lines, \
'../stripped/7009147_90deg.tsv' using 1:2 with lines, \
'../stripped/7009148_90deg.tsv' using 1:2 with lines, \
'../stripped/7009149_90deg.tsv' using 1:2 with lines, \
'../stripped/7009150_90deg.tsv' using 1:2 with lines, \
'../stripped/7009151_90deg.tsv' using 1:2 with lines, \
'../stripped/7009152_90deg.tsv' using 1:2 with lines, \
'../stripped/7009153_90deg.tsv' using 1:2 with lines, \
'../stripped/7009154_90deg.tsv' using 1:2 with lines, \
'../stripped/7009155_90deg.tsv' using 1:2 with lines, \
'../stripped/7009156_90deg.tsv' using 1:2 with lines, \
'../stripped/7009157_90deg.tsv' using 1:2 with lines, \
'../stripped/7009158_90deg.tsv' using 1:2 with lines, \
'../stripped/7009159_90deg.tsv' using 1:2 with lines, \
'../stripped/7009160_90deg.tsv' using 1:2 with lines, \
'../stripped/7009161_90deg.tsv' using 1:2 with lines, \
'../stripped/7009162_90deg.tsv' using 1:2 with lines, \
'../stripped/7009163_90deg.tsv' using 1:2 with lines, \
'../stripped/7009164_90deg.tsv' using 1:2 with lines, \
'../stripped/7009165_90deg.tsv' using 1:2 with lines, \
'../stripped/7009166_90deg.tsv' using 1:2 with lines, \
'../stripped/7009167_90deg.tsv' using 1:2 with lines, \
'../stripped/7009168_90deg.tsv' using 1:2 with lines, \
'../stripped/7009169_90deg.tsv' using 1:2 with lines, \
'../stripped/7009170_90deg.tsv' using 1:2 with lines, \
'../stripped/7009171_90deg.tsv' using 1:2 with lines, \
'../stripped/7009172_90deg.tsv' using 1:2 with lines, \
'../stripped/7009173_90deg.tsv' using 1:2 with lines, \
'../stripped/7009174_90deg.tsv' using 1:2 with lines, \
'../stripped/7009175_90deg.tsv' using 1:2 with lines, \
'../stripped/7009176_90deg.tsv' using 1:2 with lines, \
'../stripped/7009177_90deg.tsv' using 1:2 with lines, \
'../stripped/7009178_90deg.tsv' using 1:2 with lines, \
'../stripped/7009179_90deg.tsv' using 1:2 with lines, \
'../stripped/7009180_90deg.tsv' using 1:2 with lines, \
'../stripped/7009181_90deg.tsv' using 1:2 with lines, \
'../stripped/7009182_90deg.tsv' using 1:2 with lines, \
'../stripped/7009183_90deg.tsv' using 1:2 with lines, \
'../stripped/7009184_90deg.tsv' using 1:2 with lines, \
'../stripped/7009185_90deg.tsv' using 1:2 with lines, \
'../stripped/7009186_90deg.tsv' using 1:2 with lines, \
'../stripped/7009187_90deg.tsv' using 1:2 with lines, \
'../stripped/7009188_90deg.tsv' using 1:2 with lines, \
'../stripped/7009189_90deg.tsv' using 1:2 with lines, \
'../stripped/7009190_90deg.tsv' using 1:2 with lines, \
'../stripped/7009191_90deg.tsv' using 1:2 with lines, \
'../stripped/7009192_90deg.tsv' using 1:2 with lines, \
'../stripped/7009193_90deg.tsv' using 1:2 with lines, \
'../stripped/7009194_90deg.tsv' using 1:2 with lines, \
'../stripped/7009195_90deg.tsv' using 1:2 with lines, \
'../stripped/7009196_90deg.tsv' using 1:2 with lines, \
'../stripped/7009197_90deg.tsv' using 1:2 with lines, \
'../stripped/7009198_90deg.tsv' using 1:2 with lines, \
'../stripped/7009199_90deg.tsv' using 1:2 with lines, \
'../stripped/7009200_90deg.tsv' using 1:2 with lines, \
'../stripped/7100500_90deg.tsv' using 1:2 with lines, \
'../stripped/7100501_90deg.tsv' using 1:2 with lines, \
'../stripped/7100502_90deg.tsv' using 1:2 with lines, \
'../stripped/7100503_90deg.tsv' using 1:2 with lines, \
'../stripped/7100504_90deg.tsv' using 1:2 with lines, \
'../stripped/7100505_90deg.tsv' using 1:2 with lines, \
'../stripped/7100506_90deg.tsv' using 1:2 with lines, \
'../stripped/7100507_90deg.tsv' using 1:2 with lines, \
'../stripped/7100508_90deg.tsv' using 1:2 with lines, \
'../stripped/7100509_90deg.tsv' using 1:2 with lines, \
'../stripped/7100510_90deg.tsv' using 1:2 with lines, \
'../stripped/7100511_90deg.tsv' using 1:2 with lines, \
'../stripped/7100512_90deg.tsv' using 1:2 with lines, \
'../stripped/7100513_90deg.tsv' using 1:2 with lines, \
'../stripped/7100514_90deg.tsv' using 1:2 with lines, \
'../stripped/7100515_90deg.tsv' using 1:2 with lines, \
'../stripped/7100516_90deg.tsv' using 1:2 with lines, \
'../stripped/7100517_90deg.tsv' using 1:2 with lines, \
'../stripped/7100518_90deg.tsv' using 1:2 with lines, \
'../stripped/7100519_90deg.tsv' using 1:2 with lines, \
'../stripped/7100520_90deg.tsv' using 1:2 with lines, \
'../stripped/7100521_90deg.tsv' using 1:2 with lines, \
'../stripped/7100522_90deg.tsv' using 1:2 with lines, \
'../stripped/7100523_90deg.tsv' using 1:2 with lines, \
'../stripped/7100524_90deg.tsv' using 1:2 with lines, \
'../stripped/7100525_90deg.tsv' using 1:2 with lines, \
'../stripped/7100526_90deg.tsv' using 1:2 with lines, \
'../stripped/7100527_90deg.tsv' using 1:2 with lines, \
'../stripped/7100528_90deg.tsv' using 1:2 with lines, \
'../stripped/7100529_90deg.tsv' using 1:2 with lines, \
'../stripped/7100530_90deg.tsv' using 1:2 with lines, \
'../stripped/7100531_90deg.tsv' using 1:2 with lines, \
'../stripped/7100532_90deg.tsv' using 1:2 with lines, \
'../stripped/7100533_90deg.tsv' using 1:2 with lines, \
'../stripped/7100534_90deg.tsv' using 1:2 with lines, \
'../stripped/7100535_90deg.tsv' using 1:2 with lines, \
'../stripped/7100536_90deg.tsv' using 1:2 with lines, \
'../stripped/7100537_90deg.tsv' using 1:2 with lines, \
'../stripped/7100538_90deg.tsv' using 1:2 with lines, \
'../stripped/7100539_90deg.tsv' using 1:2 with lines, \
'../stripped/7100540_90deg.tsv' using 1:2 with lines, \
'../stripped/7100541_90deg.tsv' using 1:2 with lines, \
'../stripped/7100542_90deg.tsv' using 1:2 with lines, \
'../stripped/7100543_90deg.tsv' using 1:2 with lines, \
'../stripped/7100544_90deg.tsv' using 1:2 with lines, \
'../stripped/7100545_90deg.tsv' using 1:2 with lines, \
'../stripped/7100546_90deg.tsv' using 1:2 with lines, \
'../stripped/7100547_90deg.tsv' using 1:2 with lines, \
'../stripped/7100548_90deg.tsv' using 1:2 with lines, \
'../stripped/7100549_90deg.tsv' using 1:2 with lines, \
'../stripped/7100550_90deg.tsv' using 1:2 with lines, \
'../stripped/7100551_90deg.tsv' using 1:2 with lines, \
'../stripped/7100552_90deg.tsv' using 1:2 with lines, \
'../stripped/7100553_90deg.tsv' using 1:2 with lines, \
'../stripped/7100554_90deg.tsv' using 1:2 with lines, \
'../stripped/7100555_90deg.tsv' using 1:2 with lines, \
'../stripped/7100556_90deg.tsv' using 1:2 with lines, \
'../stripped/7100557_90deg.tsv' using 1:2 with lines, \
'../stripped/7100558_90deg.tsv' using 1:2 with lines, \
'../stripped/7100559_90deg.tsv' using 1:2 with lines, \
'../stripped/7100560_90deg.tsv' using 1:2 with lines, \
'../stripped/7100561_90deg.tsv' using 1:2 with lines, \
'../stripped/7100562_90deg.tsv' using 1:2 with lines, \
'../stripped/7100563_90deg.tsv' using 1:2 with lines, \
'../stripped/7100564_90deg.tsv' using 1:2 with lines, \
'../stripped/7100565_90deg.tsv' using 1:2 with lines, \
'../stripped/7100566_90deg.tsv' using 1:2 with lines, \
'../stripped/7100567_90deg.tsv' using 1:2 with lines, \
'../stripped/7100568_90deg.tsv' using 1:2 with lines, \
'../stripped/7100569_90deg.tsv' using 1:2 with lines, \
'../stripped/7100570_90deg.tsv' using 1:2 with lines, \
'../stripped/7100571_90deg.tsv' using 1:2 with lines, \
'../stripped/7100572_90deg.tsv' using 1:2 with lines, \
'../stripped/7100573_90deg.tsv' using 1:2 with lines, \
'../stripped/7100574_90deg.tsv' using 1:2 with lines, \
'../stripped/7100575_90deg.tsv' using 1:2 with lines, \
'../stripped/7100576_90deg.tsv' using 1:2 with lines, \
'../stripped/7100577_90deg.tsv' using 1:2 with lines, \
'../stripped/7100578_90deg.tsv' using 1:2 with lines, \
'../stripped/7100579_90deg.tsv' using 1:2 with lines, \
'../stripped/7100580_90deg.tsv' using 1:2 with lines, \
'../stripped/7100581_90deg.tsv' using 1:2 with lines, \
'../stripped/7100582_90deg.tsv' using 1:2 with lines, \
'../stripped/7100583_90deg.tsv' using 1:2 with lines, \
'../stripped/7100584_90deg.tsv' using 1:2 with lines, \
'../stripped/7100585_90deg.tsv' using 1:2 with lines, \
'../stripped/7100586_90deg.tsv' using 1:2 with lines, \
'../stripped/7100587_90deg.tsv' using 1:2 with lines, \
'../stripped/7100588_90deg.tsv' using 1:2 with lines, \
'../stripped/7100589_90deg.tsv' using 1:2 with lines, \
'../stripped/7100590_90deg.tsv' using 1:2 with lines, \
'../stripped/7100591_90deg.tsv' using 1:2 with lines, \
'../stripped/7100592_90deg.tsv' using 1:2 with lines, \
'../stripped/7100593_90deg.tsv' using 1:2 with lines, \
'../stripped/7100594_90deg.tsv' using 1:2 with lines, \
'../stripped/7100595_90deg.tsv' using 1:2 with lines, \
'../stripped/7100596_90deg.tsv' using 1:2 with lines, \
'../stripped/7100597_90deg.tsv' using 1:2 with lines, \
'../stripped/7100598_90deg.tsv' using 1:2 with lines, \
'../stripped/7100599_90deg.tsv' using 1:2 with lines, \
'../stripped/7100600_90deg.tsv' using 1:2 with lines, \
1