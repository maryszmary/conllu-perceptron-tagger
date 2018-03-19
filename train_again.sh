cat ../UD_Serbian/sr-ud-train.conllu | python3 tagger.py -t sr-ud.dat
cat ../UD_Serbian/sr-ud-test.conllu | python3 tagger.py sr-ud.dat > sr-ud-test.out
python3 ../evaluation_script/conll17_ud_eval.py --verbose ../UD_Serbian/sr-ud-test.conllu sr-ud-test.out

