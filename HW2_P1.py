ranks = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
suits = ['\u2663', '\u2662', '\u2660','\u2661']
for i in range(4):
    for j in range(13):
        print(ranks[j]+suits[i])
print("With lists")
for i in suits:
    for j in ranks:
        print(j+i)