#!/bin/bash

urls=(
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_1-3.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_4-6.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_7-9.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_10-12.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_13-15.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_16-18.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_19-21.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_22-24.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_25-27.ayt"
    "http://quran.ksu.edu.sa/ayat/download/English_Walk/English_Walk_28-30.ayt"
)

for url in "${urls[@]}"; do
    wget "$url"
    
    file_name=$(basename "$url")
    
    unzip "$file_name"
    rm "$file_name"
done
