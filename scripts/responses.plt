set title 'Frequency response USB measuremet microphone UMIK-1 \
for many calibration files'
set nokey
set term png size 1920, 1080
set output '../overview/responses.png'
set ylabel 'factor'
set xlabel 'frequency [Hz]'
set xrange [:20000]
set yrange [-10:6]
set logscale x
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
plot \
'../stripped/7005700.tsv' using 1:2 with lines, \
'../stripped/7005701.tsv' using 1:2 with lines, \
'../stripped/7005702.tsv' using 1:2 with lines, \
'../stripped/7005703.tsv' using 1:2 with lines, \
'../stripped/7005704.tsv' using 1:2 with lines, \
'../stripped/7005705.tsv' using 1:2 with lines, \
'../stripped/7005706.tsv' using 1:2 with lines, \
'../stripped/7005707.tsv' using 1:2 with lines, \
'../stripped/7005708.tsv' using 1:2 with lines, \
'../stripped/7005709.tsv' using 1:2 with lines, \
'../stripped/7005710.tsv' using 1:2 with lines, \
'../stripped/7005711.tsv' using 1:2 with lines, \
'../stripped/7005712.tsv' using 1:2 with lines, \
'../stripped/7005713.tsv' using 1:2 with lines, \
'../stripped/7005714.tsv' using 1:2 with lines, \
'../stripped/7005715.tsv' using 1:2 with lines, \
'../stripped/7005716.tsv' using 1:2 with lines, \
'../stripped/7005717.tsv' using 1:2 with lines, \
'../stripped/7005718.tsv' using 1:2 with lines, \
'../stripped/7005719.tsv' using 1:2 with lines, \
'../stripped/7005720.tsv' using 1:2 with lines, \
'../stripped/7005721.tsv' using 1:2 with lines, \
'../stripped/7005722.tsv' using 1:2 with lines, \
'../stripped/7005723.tsv' using 1:2 with lines, \
'../stripped/7005724.tsv' using 1:2 with lines, \
'../stripped/7005725.tsv' using 1:2 with lines, \
'../stripped/7005726.tsv' using 1:2 with lines, \
'../stripped/7005727.tsv' using 1:2 with lines, \
'../stripped/7005728.tsv' using 1:2 with lines, \
'../stripped/7005729.tsv' using 1:2 with lines, \
'../stripped/7005730.tsv' using 1:2 with lines, \
'../stripped/7005731.tsv' using 1:2 with lines, \
'../stripped/7005732.tsv' using 1:2 with lines, \
'../stripped/7005733.tsv' using 1:2 with lines, \
'../stripped/7005734.tsv' using 1:2 with lines, \
'../stripped/7005735.tsv' using 1:2 with lines, \
'../stripped/7005736.tsv' using 1:2 with lines, \
'../stripped/7005737.tsv' using 1:2 with lines, \
'../stripped/7005738.tsv' using 1:2 with lines, \
'../stripped/7005739.tsv' using 1:2 with lines, \
'../stripped/7005740.tsv' using 1:2 with lines, \
'../stripped/7005741.tsv' using 1:2 with lines, \
'../stripped/7005742.tsv' using 1:2 with lines, \
'../stripped/7005743.tsv' using 1:2 with lines, \
'../stripped/7005744.tsv' using 1:2 with lines, \
'../stripped/7005745.tsv' using 1:2 with lines, \
'../stripped/7005746.tsv' using 1:2 with lines, \
'../stripped/7005747.tsv' using 1:2 with lines, \
'../stripped/7005748.tsv' using 1:2 with lines, \
'../stripped/7005749.tsv' using 1:2 with lines, \
'../stripped/7005750.tsv' using 1:2 with lines, \
'../stripped/7005751.tsv' using 1:2 with lines, \
'../stripped/7005752.tsv' using 1:2 with lines, \
'../stripped/7005753.tsv' using 1:2 with lines, \
'../stripped/7005754.tsv' using 1:2 with lines, \
'../stripped/7005755.tsv' using 1:2 with lines, \
'../stripped/7005756.tsv' using 1:2 with lines, \
'../stripped/7005757.tsv' using 1:2 with lines, \
'../stripped/7005758.tsv' using 1:2 with lines, \
'../stripped/7005759.tsv' using 1:2 with lines, \
'../stripped/7005760.tsv' using 1:2 with lines, \
'../stripped/7005761.tsv' using 1:2 with lines, \
'../stripped/7005762.tsv' using 1:2 with lines, \
'../stripped/7005763.tsv' using 1:2 with lines, \
'../stripped/7005764.tsv' using 1:2 with lines, \
'../stripped/7005765.tsv' using 1:2 with lines, \
'../stripped/7005766.tsv' using 1:2 with lines, \
'../stripped/7005767.tsv' using 1:2 with lines, \
'../stripped/7005768.tsv' using 1:2 with lines, \
'../stripped/7005769.tsv' using 1:2 with lines, \
'../stripped/7005770.tsv' using 1:2 with lines, \
'../stripped/7005771.tsv' using 1:2 with lines, \
'../stripped/7005772.tsv' using 1:2 with lines, \
'../stripped/7005773.tsv' using 1:2 with lines, \
'../stripped/7005774.tsv' using 1:2 with lines, \
'../stripped/7005775.tsv' using 1:2 with lines, \
'../stripped/7005776.tsv' using 1:2 with lines, \
'../stripped/7005777.tsv' using 1:2 with lines, \
'../stripped/7005778.tsv' using 1:2 with lines, \
'../stripped/7005779.tsv' using 1:2 with lines, \
'../stripped/7005780.tsv' using 1:2 with lines, \
'../stripped/7005781.tsv' using 1:2 with lines, \
'../stripped/7005782.tsv' using 1:2 with lines, \
'../stripped/7005783.tsv' using 1:2 with lines, \
'../stripped/7005784.tsv' using 1:2 with lines, \
'../stripped/7005785.tsv' using 1:2 with lines, \
'../stripped/7005786.tsv' using 1:2 with lines, \
'../stripped/7005787.tsv' using 1:2 with lines, \
'../stripped/7005788.tsv' using 1:2 with lines, \
'../stripped/7005789.tsv' using 1:2 with lines, \
'../stripped/7005790.tsv' using 1:2 with lines, \
'../stripped/7005791.tsv' using 1:2 with lines, \
'../stripped/7005792.tsv' using 1:2 with lines, \
'../stripped/7005793.tsv' using 1:2 with lines, \
'../stripped/7005794.tsv' using 1:2 with lines, \
'../stripped/7005795.tsv' using 1:2 with lines, \
'../stripped/7005796.tsv' using 1:2 with lines, \
'../stripped/7005797.tsv' using 1:2 with lines, \
'../stripped/7005798.tsv' using 1:2 with lines, \
'../stripped/7005799.tsv' using 1:2 with lines, \
'../stripped/7005800.tsv' using 1:2 with lines, \
'../stripped/7005801.tsv' using 1:2 with lines, \
'../stripped/7005802.tsv' using 1:2 with lines, \
'../stripped/7005803.tsv' using 1:2 with lines, \
'../stripped/7005804.tsv' using 1:2 with lines, \
'../stripped/7005805.tsv' using 1:2 with lines, \
'../stripped/7005806.tsv' using 1:2 with lines, \
'../stripped/7005807.tsv' using 1:2 with lines, \
'../stripped/7005808.tsv' using 1:2 with lines, \
'../stripped/7005809.tsv' using 1:2 with lines, \
'../stripped/7005810.tsv' using 1:2 with lines, \
'../stripped/7005811.tsv' using 1:2 with lines, \
'../stripped/7005812.tsv' using 1:2 with lines, \
'../stripped/7005813.tsv' using 1:2 with lines, \
'../stripped/7005814.tsv' using 1:2 with lines, \
'../stripped/7005815.tsv' using 1:2 with lines, \
'../stripped/7005816.tsv' using 1:2 with lines, \
'../stripped/7005817.tsv' using 1:2 with lines, \
'../stripped/7005818.tsv' using 1:2 with lines, \
'../stripped/7005819.tsv' using 1:2 with lines, \
'../stripped/7005820.tsv' using 1:2 with lines, \
'../stripped/7005821.tsv' using 1:2 with lines, \
'../stripped/7005822.tsv' using 1:2 with lines, \
'../stripped/7005823.tsv' using 1:2 with lines, \
'../stripped/7005824.tsv' using 1:2 with lines, \
'../stripped/7005825.tsv' using 1:2 with lines, \
'../stripped/7005826.tsv' using 1:2 with lines, \
'../stripped/7005827.tsv' using 1:2 with lines, \
'../stripped/7005828.tsv' using 1:2 with lines, \
'../stripped/7005829.tsv' using 1:2 with lines, \
'../stripped/7005830.tsv' using 1:2 with lines, \
'../stripped/7005831.tsv' using 1:2 with lines, \
'../stripped/7005832.tsv' using 1:2 with lines, \
'../stripped/7005833.tsv' using 1:2 with lines, \
'../stripped/7005834.tsv' using 1:2 with lines, \
'../stripped/7005835.tsv' using 1:2 with lines, \
'../stripped/7005836.tsv' using 1:2 with lines, \
'../stripped/7005837.tsv' using 1:2 with lines, \
'../stripped/7005838.tsv' using 1:2 with lines, \
'../stripped/7005839.tsv' using 1:2 with lines, \
'../stripped/7005840.tsv' using 1:2 with lines, \
'../stripped/7005841.tsv' using 1:2 with lines, \
'../stripped/7005842.tsv' using 1:2 with lines, \
'../stripped/7005843.tsv' using 1:2 with lines, \
'../stripped/7005844.tsv' using 1:2 with lines, \
'../stripped/7005845.tsv' using 1:2 with lines, \
'../stripped/7005846.tsv' using 1:2 with lines, \
'../stripped/7005847.tsv' using 1:2 with lines, \
'../stripped/7005848.tsv' using 1:2 with lines, \
'../stripped/7005849.tsv' using 1:2 with lines, \
'../stripped/7005850.tsv' using 1:2 with lines, \
'../stripped/7005851.tsv' using 1:2 with lines, \
'../stripped/7005852.tsv' using 1:2 with lines, \
'../stripped/7005853.tsv' using 1:2 with lines, \
'../stripped/7005854.tsv' using 1:2 with lines, \
'../stripped/7005855.tsv' using 1:2 with lines, \
'../stripped/7005856.tsv' using 1:2 with lines, \
'../stripped/7005857.tsv' using 1:2 with lines, \
'../stripped/7005858.tsv' using 1:2 with lines, \
'../stripped/7005859.tsv' using 1:2 with lines, \
'../stripped/7005860.tsv' using 1:2 with lines, \
'../stripped/7005861.tsv' using 1:2 with lines, \
'../stripped/7005862.tsv' using 1:2 with lines, \
'../stripped/7005863.tsv' using 1:2 with lines, \
'../stripped/7005864.tsv' using 1:2 with lines, \
'../stripped/7005865.tsv' using 1:2 with lines, \
'../stripped/7005866.tsv' using 1:2 with lines, \
'../stripped/7005867.tsv' using 1:2 with lines, \
'../stripped/7005868.tsv' using 1:2 with lines, \
'../stripped/7005869.tsv' using 1:2 with lines, \
'../stripped/7005870.tsv' using 1:2 with lines, \
'../stripped/7005871.tsv' using 1:2 with lines, \
'../stripped/7005872.tsv' using 1:2 with lines, \
'../stripped/7005873.tsv' using 1:2 with lines, \
'../stripped/7005874.tsv' using 1:2 with lines, \
'../stripped/7005875.tsv' using 1:2 with lines, \
'../stripped/7005876.tsv' using 1:2 with lines, \
'../stripped/7005877.tsv' using 1:2 with lines, \
'../stripped/7005878.tsv' using 1:2 with lines, \
'../stripped/7005879.tsv' using 1:2 with lines, \
'../stripped/7005880.tsv' using 1:2 with lines, \
'../stripped/7005881.tsv' using 1:2 with lines, \
'../stripped/7005882.tsv' using 1:2 with lines, \
'../stripped/7005883.tsv' using 1:2 with lines, \
'../stripped/7005884.tsv' using 1:2 with lines, \
'../stripped/7005885.tsv' using 1:2 with lines, \
'../stripped/7005886.tsv' using 1:2 with lines, \
'../stripped/7005887.tsv' using 1:2 with lines, \
'../stripped/7005888.tsv' using 1:2 with lines, \
'../stripped/7005889.tsv' using 1:2 with lines, \
'../stripped/7005890.tsv' using 1:2 with lines, \
'../stripped/7005891.tsv' using 1:2 with lines, \
'../stripped/7005892.tsv' using 1:2 with lines, \
'../stripped/7005893.tsv' using 1:2 with lines, \
'../stripped/7005894.tsv' using 1:2 with lines, \
'../stripped/7005895.tsv' using 1:2 with lines, \
'../stripped/7005896.tsv' using 1:2 with lines, \
'../stripped/7005897.tsv' using 1:2 with lines, \
'../stripped/7005898.tsv' using 1:2 with lines, \
'../stripped/7005899.tsv' using 1:2 with lines, \
'../stripped/7007100.tsv' using 1:2 with lines, \
'../stripped/7007101.tsv' using 1:2 with lines, \
'../stripped/7007102.tsv' using 1:2 with lines, \
'../stripped/7007103.tsv' using 1:2 with lines, \
'../stripped/7007104.tsv' using 1:2 with lines, \
'../stripped/7007105.tsv' using 1:2 with lines, \
'../stripped/7007106.tsv' using 1:2 with lines, \
'../stripped/7007107.tsv' using 1:2 with lines, \
'../stripped/7007108.tsv' using 1:2 with lines, \
'../stripped/7007109.tsv' using 1:2 with lines, \
'../stripped/7007110.tsv' using 1:2 with lines, \
'../stripped/7007111.tsv' using 1:2 with lines, \
'../stripped/7007112.tsv' using 1:2 with lines, \
'../stripped/7007113.tsv' using 1:2 with lines, \
'../stripped/7007114.tsv' using 1:2 with lines, \
'../stripped/7007115.tsv' using 1:2 with lines, \
'../stripped/7007116.tsv' using 1:2 with lines, \
'../stripped/7007117.tsv' using 1:2 with lines, \
'../stripped/7007118.tsv' using 1:2 with lines, \
'../stripped/7007119.tsv' using 1:2 with lines, \
'../stripped/7007120.tsv' using 1:2 with lines, \
'../stripped/7007121.tsv' using 1:2 with lines, \
'../stripped/7007122.tsv' using 1:2 with lines, \
'../stripped/7007123.tsv' using 1:2 with lines, \
'../stripped/7007124.tsv' using 1:2 with lines, \
'../stripped/7007125.tsv' using 1:2 with lines, \
'../stripped/7007126.tsv' using 1:2 with lines, \
'../stripped/7007127.tsv' using 1:2 with lines, \
'../stripped/7007128.tsv' using 1:2 with lines, \
'../stripped/7007129.tsv' using 1:2 with lines, \
'../stripped/7007130.tsv' using 1:2 with lines, \
'../stripped/7007131.tsv' using 1:2 with lines, \
'../stripped/7007132.tsv' using 1:2 with lines, \
'../stripped/7007133.tsv' using 1:2 with lines, \
'../stripped/7007134.tsv' using 1:2 with lines, \
'../stripped/7007135.tsv' using 1:2 with lines, \
'../stripped/7007136.tsv' using 1:2 with lines, \
'../stripped/7007137.tsv' using 1:2 with lines, \
'../stripped/7007138.tsv' using 1:2 with lines, \
'../stripped/7007139.tsv' using 1:2 with lines, \
'../stripped/7007140.tsv' using 1:2 with lines, \
'../stripped/7007141.tsv' using 1:2 with lines, \
'../stripped/7007142.tsv' using 1:2 with lines, \
'../stripped/7007143.tsv' using 1:2 with lines, \
'../stripped/7007144.tsv' using 1:2 with lines, \
'../stripped/7007145.tsv' using 1:2 with lines, \
'../stripped/7007146.tsv' using 1:2 with lines, \
'../stripped/7007147.tsv' using 1:2 with lines, \
'../stripped/7007148.tsv' using 1:2 with lines, \
'../stripped/7007149.tsv' using 1:2 with lines, \
'../stripped/7007150.tsv' using 1:2 with lines, \
'../stripped/7007151.tsv' using 1:2 with lines, \
'../stripped/7007152.tsv' using 1:2 with lines, \
'../stripped/7007153.tsv' using 1:2 with lines, \
'../stripped/7007154.tsv' using 1:2 with lines, \
'../stripped/7007155.tsv' using 1:2 with lines, \
'../stripped/7007156.tsv' using 1:2 with lines, \
'../stripped/7007157.tsv' using 1:2 with lines, \
'../stripped/7007158.tsv' using 1:2 with lines, \
'../stripped/7007159.tsv' using 1:2 with lines, \
'../stripped/7007160.tsv' using 1:2 with lines, \
'../stripped/7007161.tsv' using 1:2 with lines, \
'../stripped/7007162.tsv' using 1:2 with lines, \
'../stripped/7007163.tsv' using 1:2 with lines, \
'../stripped/7007164.tsv' using 1:2 with lines, \
'../stripped/7007165.tsv' using 1:2 with lines, \
'../stripped/7007166.tsv' using 1:2 with lines, \
'../stripped/7007167.tsv' using 1:2 with lines, \
'../stripped/7007168.tsv' using 1:2 with lines, \
'../stripped/7007169.tsv' using 1:2 with lines, \
'../stripped/7007170.tsv' using 1:2 with lines, \
'../stripped/7007171.tsv' using 1:2 with lines, \
'../stripped/7007172.tsv' using 1:2 with lines, \
'../stripped/7007173.tsv' using 1:2 with lines, \
'../stripped/7007174.tsv' using 1:2 with lines, \
'../stripped/7007175.tsv' using 1:2 with lines, \
'../stripped/7007176.tsv' using 1:2 with lines, \
'../stripped/7007177.tsv' using 1:2 with lines, \
'../stripped/7007178.tsv' using 1:2 with lines, \
'../stripped/7007179.tsv' using 1:2 with lines, \
'../stripped/7007180.tsv' using 1:2 with lines, \
'../stripped/7007181.tsv' using 1:2 with lines, \
'../stripped/7007182.tsv' using 1:2 with lines, \
'../stripped/7007183.tsv' using 1:2 with lines, \
'../stripped/7007184.tsv' using 1:2 with lines, \
'../stripped/7007185.tsv' using 1:2 with lines, \
'../stripped/7007186.tsv' using 1:2 with lines, \
'../stripped/7007187.tsv' using 1:2 with lines, \
'../stripped/7007188.tsv' using 1:2 with lines, \
'../stripped/7007189.tsv' using 1:2 with lines, \
'../stripped/7007190.tsv' using 1:2 with lines, \
'../stripped/7007191.tsv' using 1:2 with lines, \
'../stripped/7007192.tsv' using 1:2 with lines, \
'../stripped/7007193.tsv' using 1:2 with lines, \
'../stripped/7007194.tsv' using 1:2 with lines, \
'../stripped/7007195.tsv' using 1:2 with lines, \
'../stripped/7007196.tsv' using 1:2 with lines, \
'../stripped/7007197.tsv' using 1:2 with lines, \
'../stripped/7007198.tsv' using 1:2 with lines, \
'../stripped/7007199.tsv' using 1:2 with lines, \
'../stripped/7007200.tsv' using 1:2 with lines, \
'../stripped/7009100.tsv' using 1:2 with lines, \
'../stripped/7009101.tsv' using 1:2 with lines, \
'../stripped/7009102.tsv' using 1:2 with lines, \
'../stripped/7009103.tsv' using 1:2 with lines, \
'../stripped/7009104.tsv' using 1:2 with lines, \
'../stripped/7009105.tsv' using 1:2 with lines, \
'../stripped/7009106.tsv' using 1:2 with lines, \
'../stripped/7009107.tsv' using 1:2 with lines, \
'../stripped/7009108.tsv' using 1:2 with lines, \
'../stripped/7009109.tsv' using 1:2 with lines, \
'../stripped/7009110.tsv' using 1:2 with lines, \
'../stripped/7009111.tsv' using 1:2 with lines, \
'../stripped/7009112.tsv' using 1:2 with lines, \
'../stripped/7009113.tsv' using 1:2 with lines, \
'../stripped/7009114.tsv' using 1:2 with lines, \
'../stripped/7009115.tsv' using 1:2 with lines, \
'../stripped/7009116.tsv' using 1:2 with lines, \
'../stripped/7009117.tsv' using 1:2 with lines, \
'../stripped/7009118.tsv' using 1:2 with lines, \
'../stripped/7009119.tsv' using 1:2 with lines, \
'../stripped/7009120.tsv' using 1:2 with lines, \
'../stripped/7009121.tsv' using 1:2 with lines, \
'../stripped/7009122.tsv' using 1:2 with lines, \
'../stripped/7009123.tsv' using 1:2 with lines, \
'../stripped/7009124.tsv' using 1:2 with lines, \
'../stripped/7009125.tsv' using 1:2 with lines, \
'../stripped/7009126.tsv' using 1:2 with lines, \
'../stripped/7009127.tsv' using 1:2 with lines, \
'../stripped/7009128.tsv' using 1:2 with lines, \
'../stripped/7009129.tsv' using 1:2 with lines, \
'../stripped/7009130.tsv' using 1:2 with lines, \
'../stripped/7009131.tsv' using 1:2 with lines, \
'../stripped/7009132.tsv' using 1:2 with lines, \
'../stripped/7009133.tsv' using 1:2 with lines, \
'../stripped/7009134.tsv' using 1:2 with lines, \
'../stripped/7009135.tsv' using 1:2 with lines, \
'../stripped/7009136.tsv' using 1:2 with lines, \
'../stripped/7009137.tsv' using 1:2 with lines, \
'../stripped/7009138.tsv' using 1:2 with lines, \
'../stripped/7009139.tsv' using 1:2 with lines, \
'../stripped/7009140.tsv' using 1:2 with lines, \
'../stripped/7009141.tsv' using 1:2 with lines, \
'../stripped/7009142.tsv' using 1:2 with lines, \
'../stripped/7009143.tsv' using 1:2 with lines, \
'../stripped/7009144.tsv' using 1:2 with lines, \
'../stripped/7009145.tsv' using 1:2 with lines, \
'../stripped/7009146.tsv' using 1:2 with lines, \
'../stripped/7009147.tsv' using 1:2 with lines, \
'../stripped/7009148.tsv' using 1:2 with lines, \
'../stripped/7009149.tsv' using 1:2 with lines, \
'../stripped/7009150.tsv' using 1:2 with lines, \
'../stripped/7009151.tsv' using 1:2 with lines, \
'../stripped/7009152.tsv' using 1:2 with lines, \
'../stripped/7009153.tsv' using 1:2 with lines, \
'../stripped/7009154.tsv' using 1:2 with lines, \
'../stripped/7009155.tsv' using 1:2 with lines, \
'../stripped/7009156.tsv' using 1:2 with lines, \
'../stripped/7009157.tsv' using 1:2 with lines, \
'../stripped/7009158.tsv' using 1:2 with lines, \
'../stripped/7009159.tsv' using 1:2 with lines, \
'../stripped/7009160.tsv' using 1:2 with lines, \
'../stripped/7009161.tsv' using 1:2 with lines, \
'../stripped/7009162.tsv' using 1:2 with lines, \
'../stripped/7009163.tsv' using 1:2 with lines, \
'../stripped/7009164.tsv' using 1:2 with lines, \
'../stripped/7009165.tsv' using 1:2 with lines, \
'../stripped/7009166.tsv' using 1:2 with lines, \
'../stripped/7009167.tsv' using 1:2 with lines, \
'../stripped/7009168.tsv' using 1:2 with lines, \
'../stripped/7009169.tsv' using 1:2 with lines, \
'../stripped/7009170.tsv' using 1:2 with lines, \
'../stripped/7009171.tsv' using 1:2 with lines, \
'../stripped/7009172.tsv' using 1:2 with lines, \
'../stripped/7009173.tsv' using 1:2 with lines, \
'../stripped/7009174.tsv' using 1:2 with lines, \
'../stripped/7009175.tsv' using 1:2 with lines, \
'../stripped/7009176.tsv' using 1:2 with lines, \
'../stripped/7009177.tsv' using 1:2 with lines, \
'../stripped/7009178.tsv' using 1:2 with lines, \
'../stripped/7009179.tsv' using 1:2 with lines, \
'../stripped/7009180.tsv' using 1:2 with lines, \
'../stripped/7009181.tsv' using 1:2 with lines, \
'../stripped/7009182.tsv' using 1:2 with lines, \
'../stripped/7009183.tsv' using 1:2 with lines, \
'../stripped/7009184.tsv' using 1:2 with lines, \
'../stripped/7009185.tsv' using 1:2 with lines, \
'../stripped/7009186.tsv' using 1:2 with lines, \
'../stripped/7009187.tsv' using 1:2 with lines, \
'../stripped/7009188.tsv' using 1:2 with lines, \
'../stripped/7009189.tsv' using 1:2 with lines, \
'../stripped/7009190.tsv' using 1:2 with lines, \
'../stripped/7009191.tsv' using 1:2 with lines, \
'../stripped/7009192.tsv' using 1:2 with lines, \
'../stripped/7009193.tsv' using 1:2 with lines, \
'../stripped/7009194.tsv' using 1:2 with lines, \
'../stripped/7009195.tsv' using 1:2 with lines, \
'../stripped/7009196.tsv' using 1:2 with lines, \
'../stripped/7009197.tsv' using 1:2 with lines, \
'../stripped/7009198.tsv' using 1:2 with lines, \
'../stripped/7009199.tsv' using 1:2 with lines, \
'../stripped/7009200.tsv' using 1:2 with lines, \
'../stripped/7100500.tsv' using 1:2 with lines, \
'../stripped/7100501.tsv' using 1:2 with lines, \
'../stripped/7100502.tsv' using 1:2 with lines, \
'../stripped/7100503.tsv' using 1:2 with lines, \
'../stripped/7100504.tsv' using 1:2 with lines, \
'../stripped/7100505.tsv' using 1:2 with lines, \
'../stripped/7100506.tsv' using 1:2 with lines, \
'../stripped/7100507.tsv' using 1:2 with lines, \
'../stripped/7100508.tsv' using 1:2 with lines, \
'../stripped/7100509.tsv' using 1:2 with lines, \
'../stripped/7100510.tsv' using 1:2 with lines, \
'../stripped/7100511.tsv' using 1:2 with lines, \
'../stripped/7100512.tsv' using 1:2 with lines, \
'../stripped/7100513.tsv' using 1:2 with lines, \
'../stripped/7100514.tsv' using 1:2 with lines, \
'../stripped/7100515.tsv' using 1:2 with lines, \
'../stripped/7100516.tsv' using 1:2 with lines, \
'../stripped/7100517.tsv' using 1:2 with lines, \
'../stripped/7100518.tsv' using 1:2 with lines, \
'../stripped/7100519.tsv' using 1:2 with lines, \
'../stripped/7100520.tsv' using 1:2 with lines, \
'../stripped/7100521.tsv' using 1:2 with lines, \
'../stripped/7100522.tsv' using 1:2 with lines, \
'../stripped/7100523.tsv' using 1:2 with lines, \
'../stripped/7100524.tsv' using 1:2 with lines, \
'../stripped/7100525.tsv' using 1:2 with lines, \
'../stripped/7100526.tsv' using 1:2 with lines, \
'../stripped/7100527.tsv' using 1:2 with lines, \
'../stripped/7100528.tsv' using 1:2 with lines, \
'../stripped/7100529.tsv' using 1:2 with lines, \
'../stripped/7100530.tsv' using 1:2 with lines, \
'../stripped/7100531.tsv' using 1:2 with lines, \
'../stripped/7100532.tsv' using 1:2 with lines, \
'../stripped/7100533.tsv' using 1:2 with lines, \
'../stripped/7100534.tsv' using 1:2 with lines, \
'../stripped/7100535.tsv' using 1:2 with lines, \
'../stripped/7100536.tsv' using 1:2 with lines, \
'../stripped/7100537.tsv' using 1:2 with lines, \
'../stripped/7100538.tsv' using 1:2 with lines, \
'../stripped/7100539.tsv' using 1:2 with lines, \
'../stripped/7100540.tsv' using 1:2 with lines, \
'../stripped/7100541.tsv' using 1:2 with lines, \
'../stripped/7100542.tsv' using 1:2 with lines, \
'../stripped/7100543.tsv' using 1:2 with lines, \
'../stripped/7100544.tsv' using 1:2 with lines, \
'../stripped/7100545.tsv' using 1:2 with lines, \
'../stripped/7100546.tsv' using 1:2 with lines, \
'../stripped/7100547.tsv' using 1:2 with lines, \
'../stripped/7100548.tsv' using 1:2 with lines, \
'../stripped/7100549.tsv' using 1:2 with lines, \
'../stripped/7100550.tsv' using 1:2 with lines, \
'../stripped/7100551.tsv' using 1:2 with lines, \
'../stripped/7100552.tsv' using 1:2 with lines, \
'../stripped/7100553.tsv' using 1:2 with lines, \
'../stripped/7100554.tsv' using 1:2 with lines, \
'../stripped/7100555.tsv' using 1:2 with lines, \
'../stripped/7100556.tsv' using 1:2 with lines, \
'../stripped/7100557.tsv' using 1:2 with lines, \
'../stripped/7100558.tsv' using 1:2 with lines, \
'../stripped/7100559.tsv' using 1:2 with lines, \
'../stripped/7100560.tsv' using 1:2 with lines, \
'../stripped/7100561.tsv' using 1:2 with lines, \
'../stripped/7100562.tsv' using 1:2 with lines, \
'../stripped/7100563.tsv' using 1:2 with lines, \
'../stripped/7100564.tsv' using 1:2 with lines, \
'../stripped/7100565.tsv' using 1:2 with lines, \
'../stripped/7100566.tsv' using 1:2 with lines, \
'../stripped/7100567.tsv' using 1:2 with lines, \
'../stripped/7100568.tsv' using 1:2 with lines, \
'../stripped/7100569.tsv' using 1:2 with lines, \
'../stripped/7100570.tsv' using 1:2 with lines, \
'../stripped/7100571.tsv' using 1:2 with lines, \
'../stripped/7100572.tsv' using 1:2 with lines, \
'../stripped/7100573.tsv' using 1:2 with lines, \
'../stripped/7100574.tsv' using 1:2 with lines, \
'../stripped/7100575.tsv' using 1:2 with lines, \
'../stripped/7100576.tsv' using 1:2 with lines, \
'../stripped/7100577.tsv' using 1:2 with lines, \
'../stripped/7100578.tsv' using 1:2 with lines, \
'../stripped/7100579.tsv' using 1:2 with lines, \
'../stripped/7100580.tsv' using 1:2 with lines, \
'../stripped/7100581.tsv' using 1:2 with lines, \
'../stripped/7100582.tsv' using 1:2 with lines, \
'../stripped/7100583.tsv' using 1:2 with lines, \
'../stripped/7100584.tsv' using 1:2 with lines, \
'../stripped/7100585.tsv' using 1:2 with lines, \
'../stripped/7100586.tsv' using 1:2 with lines, \
'../stripped/7100587.tsv' using 1:2 with lines, \
'../stripped/7100588.tsv' using 1:2 with lines, \
'../stripped/7100589.tsv' using 1:2 with lines, \
'../stripped/7100590.tsv' using 1:2 with lines, \
'../stripped/7100591.tsv' using 1:2 with lines, \
'../stripped/7100592.tsv' using 1:2 with lines, \
'../stripped/7100593.tsv' using 1:2 with lines, \
'../stripped/7100594.tsv' using 1:2 with lines, \
'../stripped/7100595.tsv' using 1:2 with lines, \
'../stripped/7100596.tsv' using 1:2 with lines, \
'../stripped/7100597.tsv' using 1:2 with lines, \
'../stripped/7100598.tsv' using 1:2 with lines, \
'../stripped/7100599.tsv' using 1:2 with lines, \
'../stripped/7100600.tsv' using 1:2 with lines, \
1