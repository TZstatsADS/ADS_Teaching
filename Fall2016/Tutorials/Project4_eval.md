### Project 4 Words for Music
#### -- Association mining for music and text

### Project evaluation 

+ On 11/16, we will provide you with the **music features** of 100 songs in the same format as the training data.
+ You will also be provided with a voculary ranking sheet for these 100 songs. 
	+ The vocabulary is the same as the training data. 

		|   |song1|song 2| ...   |song 100|
		|---|---|---|---|---|
		|word 1| 5  |321|...|112|
		|word 2| 2304|986|...|3|
		|...   |   | ...  |...|...|

+ You will have 30 minuets to submit rankings of lyrics words with 1 being most likely and 5000 being least likely. 
	+ Let the dictionary be $$$\mathbf{D}=[d_1, ..., d_K]$$$, where $$$K=5000$$$.
	+ For a song with words $$$w_1, ..., w_m$$$ and $$$w_i \in \mathbf{D}$$$, let your predictive ranks be $$$r_1, ..., r_K$$$.
	+ We will compute predictive rank sum as follows:
	
		$$ \frac{1}{m} \sum\_{i=1}^m r_{w_i}.$$