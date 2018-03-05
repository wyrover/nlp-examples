import nltk
from nltk.corpus import sinica_treebank
 
sinica_text=nltk.Text(sinica_treebank.words())
print(sinica_text.concordance('我'))