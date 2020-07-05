#!/bin/bash

#入力チェック
if [ ! $# -eq 2 ]; then
	echo "引数を2個入れてください"
        exit
fi

#引数１の数値判定
expr "$1" + 1 > /dev/null 2>&1
if [ ! $? -lt 2 ]; then
	echo "数値を入力してください"
      	exit
fi

#引数２の数値判定
expr "$2" + 1  >/dev/null 2>&1
if [ ! $? -lt 2 ]; then
	echo "数値を入力してください"
	exit
fi

#正負の判定
if [ $1 -lt 0 ];then
	echo "正の値を入力してください"
	exit
fi

if [ $2 -lt 0 ]; then
	echo "正の値を入力してください"	
	exit
fi
if [ $1 -eq 0 -a $2 -eq 0 ]; then
	echo "引数に両方0を入力できません"
	exit
fi

#動作の本体
gcd() (
if (( $1 % $2 == 0)); then
	echo $2
else
	gcd $2 $(( $1 % $2 ))
fi
)

gcd $1 $2
