#!/bin/bash

#成功した時の動作確認

#test1(gcdの計算)
result1=$(./gcd.sh 2 4)
if [ $result1 -eq 2 ];then
	echo "test1問題なし"
else
	echo "test1失敗"
fi

#test2(引数が一つ)
result2=$(./gcd.sh 3)
if [ $result2 = "引数を2個入れてください" ]; then
	echo "test2問題なし"
else
	echo "test2失敗"
fi	

#test3(文字列が含まれる)
result3=$(./gcd.sh a 5)
if [ $result3 = "数値を入力してください" ]; then
	echo "test3問題なし"
else
	echo "test3失敗"
fi

#test4(負の数が含まれる)
result4=$(./gcd.sh -1 5)
if [ $result4 = "正の値を入力してください" ]; then
	echo "test4問題なし"
else
	echo "test4失敗"
fi

#test5（両方に0が含まれる)
result5=$(./gcd.sh 0 0)
if [ $result5 = "引数に両方0を入力できません" ]; then
	echo "test5問題なし"
else
	echo "test5失敗"
fi

#=============ローカルの仮想マシン上でのtest===============================================
#============サーバー上では動かず==========================================================
#ERROR_EXIT(){
#	echo $1
#	rm /kadai4/tmp/$$-*
#	exit
#}
#成功した時の動作確認
#両方数値
#./gcd.sh 2 4 > /kadai4/tmp/$$-result
#echo 2 > /tmp/$$-ans
#diff /kadai4/tmp/$$-result /kadai4/tmp/$$-ans || ERROR_EXIT "テスト失敗"

#引数が一つ
#./gcd.sh 3 > /kadai4/tmp/$$-result
#echo "引数を2個入れてください" > /tmp/$$-ans
#diff /kadai4/tmp/$$-result /kadai4/tmp/$$-ans || ERROR_EXIT "テスト失敗"
                                 
#文字列が含まれる
#./gcd.sh a 5 > /tmp/$$-result
#echo "数値を入力してください" > /tmp/$$-ans
#diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"

#負の数がまれる
#./gcd.sh -1 5 > /tmp/$$-result
#echo "正の値を入力してください" > /tmp/$$-ans                                             
#diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"

#負の数がまれる"
#./gcd.sh 0 0 > /tmp/$$-result
#echo "引数に両方0を入力できません" > /tmp/$$-ans
#diff /tmp/$$-result /tmp/$$-ans || ERROR_EXIT "テスト失敗"
