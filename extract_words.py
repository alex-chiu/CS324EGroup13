import re 	#imports regular expression functions
from collections import Counter

all_words = []
unique_words = []
totalCount = {}
maxFrequency = 1682
#uniqueCount = 0

with open('alice.txt','r') as f1, open("allwords.txt", 'w') as f2, open("uniquewords.txt", 'w') as f3, open("wordfrequency.txt", 'w') as f4: #open files to read from and write to
#ALLWORDS.TXT
	for line in f1:							#read each line from file
		for word in line.split():			#iterate through each word in our list
			s = word.lower()				#make each word lowercase
			s = re.sub('\'', '', s)			#replace each apostrophe with nothing so "can't" becomes "cant"
			s = re.findall('[a-z]+', s)		#each word only becomes alphabetic characters (specifically a-z because they're all lowercase already)
			for i in s: 
				all_words.append(i)			#loop through and add words to all_words list
				f2.write(i + '\n')			#write each word into allwords.txt
	print(all_words)
	#all_words.sort() #for testing purposes

#UNIQUEWORDS.TXT
	#print(Counter(all_words).most_common()) #for testing purposes
	for item, count in Counter(all_words).most_common():	#looks at items and counts in all_words list, repeated items will have count incremented
		if count == 1:										#if the list item has a count of 1 (meaning it is unique),
			unique_words.append(item)						#add it to unique_words list
			#uniqueCount += 1 #for testing purposes
	print(unique_words)
	for u in unique_words:									#iterate through the list to print each item
		f3.write(u + '\n')									#write each unique word to unique_words.txt
	#print(uniqueCount) #for testing purposes


#WORDFREQUENCY.TXT
	for i in range(maxFrequency + 1):						#iterate through the set with maxFrequency being the most # of times a word(s) appear(s) in text
		totalCount[i] = 0									#initialize all elements to 0 
	#print(totalCount) #for testing purposes
	for item, freq in Counter(all_words).most_common():		#looks at items and frequencies in all_words list, this time we will use our Counter to look at all frequencies, rather than just unique items (freq = 1)
		if freq < maxFrequency + 1:							#makes sure we don't go out of bounds
			totalCount[freq] += 1 							#updates all the frequencies for each word in all_words list
	for i in range(maxFrequency + 1):							#iterate through loop again
		if totalCount[i] != 0:									#start at 1, iterate to maxFrequency + 1 to include maxFrequency
			print(str(i) + ": " + str(totalCount[i]))			
			f4.write(str(i) + ": " + str(totalCount[i]) + "\n")	#writes frequency and # words with that frequency to wordfrequency.txt