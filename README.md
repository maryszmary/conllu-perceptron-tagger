# Data

[Serbian](https://github.com/UniversalDependencies/UD_Serbian)

# Results

## Before (default features; best of 5)

Metrics    | Precision |    Recall |  F1 Score | AligndAcc
-----------|-----------|-----------|-----------|-----------
Tokens     |    100.00 |    100.00 |    100.00 |
Sentences  |    100.00 |    100.00 |    100.00 |
Words      |    100.00 |    100.00 |    100.00 |
UPOS       |     95.73 |     95.73 |     95.73 |     95.73
XPOS       |    100.00 |    100.00 |    100.00 |    100.00
Feats      |    100.00 |    100.00 |    100.00 |    100.00
AllTags    |     95.73 |     95.73 |     95.73 |     95.73
Lemmas     |    100.00 |    100.00 |    100.00 |    100.00
UAS        |    100.00 |    100.00 |    100.00 |    100.00
LAS        |    100.00 |    100.00 |    100.00 |    100.00

## After (see feachers below; best of 5)

Metrics    | Precision |    Recall |  F1 Score | AligndAcc
-----------|-----------|-----------|-----------|-----------
Tokens     |    100.00 |    100.00 |    100.00 |
Sentences  |    100.00 |    100.00 |    100.00 |
Words      |    100.00 |    100.00 |    100.00 |
UPOS       |     96.12 |     96.12 |     96.12 |     96.12
XPOS       |    100.00 |    100.00 |    100.00 |    100.00
Feats      |    100.00 |    100.00 |    100.00 |    100.00
AllTags    |     96.12 |     96.12 |     96.12 |     96.12
Lemmas     |    100.00 |    100.00 |    100.00 |    100.00
UAS        |    100.00 |    100.00 |    100.00 |    100.00
LAS        |    100.00 |    100.00 |    100.00 |    100.00


# Changes

## What I tried

* changing the size of the context analysed, from 1 to 3
* changing the size of prefix, from 0 to 0:3
* changing the size of suffix, from last 4 to last 2
* adding a feature: lengh of token (didn't help)
* adding a new feature: the last letter in the token
* adding a new feature: containsNumber (helped a lot!)

## What I used

* changing the context: -3 +1 words as opposed to -2 +2
* changing the size of prefix: 0 → 0:3
* adding a new feature: the last letter in the token

## Overall improvement

From 95.73% to 96.12%.

# conllu-perceptron-tagger

A (very) simple perceptron tagger for CoNLL-U files, intended for use as a teaching
aid.

This is wholely based on the following code:

* https://explosion.ai/blog/part-of-speech-pos-tagger-in-python
* https://github.com/sloria/textblob-aptagger

I've basically taken the code and wrapped it for parsing CoNLL-U format files. 

# Usage

Like UDpipe:

Train:

```
cat kk-ud-train.conllu | python3 tagger.py -t model.dat
```

Predict:

```
cat kk-ud-test.conllu | python3 tagger.py model.dat > output
```
