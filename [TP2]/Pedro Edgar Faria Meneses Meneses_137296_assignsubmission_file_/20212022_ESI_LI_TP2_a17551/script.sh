#!/bin/bash


#Criar a pasta Videoteca
mkdir Videoteca

#Zipar o arquivo Videoteca
sleep 1 | zip Videoteca.zip Videoteca/

#Apagar a pasta vazia e deixar só o zip.
sleep 2 | rmdir Videoteca

# Unzip da pasta da Videoteca
sleep 1 | unzip Videoteca.zip Videoteca/*

# Saltar para a diretoria
cd Videoteca

# Criar categorias e filmes.
mkdir {{Ação,Comédia,Documentário,Terror},{Ação/{Spider-Man\ No\ Way\ Home,The\ Matrix,Resident\ Evil\ Raccoon\ City},Comédia/{TED,Guardians\ of\ the\ Galaxy,Deadpool},Documentário/{Cowspiracy,The\ Last\ Dance,Chef’s\ Table\ BBQ},Terror/{The\ Nun\ -\ A\ Freira\ Maldita,Silent\ Hill,The\ Conjuring}}}

#Criar ficheiros dentro de todas as pastas que contêm filmes.
find ./*/* -type d -exec touch {}/resumo.txt {}/reviews.txt {}/casts.txt  \;


#  Popular os ficheiros do filme Silent Hill [Categoria de Terror]
{ printf "Radha Mitchell\nSean Bean\nLaurie Holden\nDeborah Kara Unger\nKim Coates\nTanya Allen\nAlice Krige\nJodelle Ferland\nColleen Williams\nRon Gabriel\n"; } > Terror/Silent\ Hill/casts.txt & { printf "A woman, Rose, goes in search for her adopted daughter within the confines of a strange, desolate town called Silent Hill."; } > Terror/Silent\ Hill/resumo.txt & { printf "A woman brings her daughter to the ghost town of Silent Hill, and then loses her. The rest of the film involves the woman following clues to find her daughter while she is followed by a police officer and her husband. What she encounters is both shocking and unexpected." ; printf "Este filme retrata uma mãe que perde a filha e tem de ir a cidade de Silent Hill consumida por cinzas de uma mina de carvão que ardeu por uma razão. Quando os sinos tocam a cidade escurece e entra num modo de horror."; } > Terror/Silent\ Hill/reviews.txt

#  Popular os ficheiros do filme The Conjuring [Categoria de Terror]
{ printf "Patrick Wilson\nVera Farmiga\nRon Livingston\nLili Taylor\nKim Coates\nKyla Deaver\nMackenzie Foy\nJodelle Ferland\nAshley White\nRon Gabriel\n"; } > Terror/The\ Conjuring/casts.txt & { printf "The Conjuring is a 2013 American supernatural horror film directed by James Wan and written by Chad Hayes and Carey W. Hayes. It is the inaugural film in the Conjuring Universe franchise.[4] Patrick Wilson and Vera Farmiga star as Ed and Lorraine Warren, paranormal investigators and authors associated with prominent cases of haunting. Their purportedly real-life reports inspired The Amityville Horror story and film franchise.[5] The Warrens come to the assistance of the Perron family, who experienced increasingly disturbing events in their farmhouse in Rhode Island in 1971.[6]"; } > Terror/The\ Conjuring/resumo.txt & { printf "Director James Wan said that he watched loads of 70s haunted house movies before sitting down to direct this, his latest horror movie after the INSIDIOUS flicks. Unfortunately, it appears that the co-writers of the script also watched all the same movies, because this turns out to be yet another entirely predictable exercise in fear-building."; printf "\n" ; printf "It is 1971. Roger (Ron Livingston) and Carolyn Perron (Lili Taylor) with their kids move into a farm house. Strange things start to happen. They call in married paranormal investigators Lorraine (Vera Farmiga) and Ed Warren (Patrick Wilson)."; }> Terror/The\ Conjuring/reviews.txt

#  Popular os ficheiros do filme The Nun - A Freira Maldita [Categoria de Terror]
{ printf "Demián Bichir\nTaissa Farmiga\nJonas Bloquet\nBonnie Aarons\nKim Coates\nKyla Deaver\nMackenzie Foy\nPatrick Wilson\nAshley White\nCharlotte Hope\n"; } > Terror/The\ Nun\ -\ A\ Freira\ Maldita/casts.txt & { printf "When a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate. Together they uncover the order's unholy secret. Risking not only their lives but their faith and their very souls, they confront a malevolent force in the form of the same demonic nun that first terrorized audiences in 'The Conjuring 2,' as the abbey becomes a horrific battleground between the living and the damned."; } > Terror/The\ Nun\ -\ A\ Freira\ Maldita/resumo.txt & { printf "It seems like, in The Conjuring 2, the writers just thought: 'a monster in a nun costume - that seems really cool!' Then, when they try to build a story around it, they can't get the square peg to fit in the round hole. It's a nun monastery in Romania. And a demon called Valak."; printf "\n" ; printf "As Romanian, I am very subjective about the fake history of Cartisoara abbey, about blasphemies - the blood of Jesus Christ is the lead one-, about a script so far by Conjuring and about absurde in so many forms. So, the set, the cinematography are good points , in essence. Saving nothing because the thrill and the reasonable acting are not present in this case. And the script, the poor script...."; }> Terror/The\ Nun\ -\ A\ Freira\ Maldita/reviews.txt

# --- #

#  Popular os ficheiros do filme Cowspiracy [Categoria de Documentários]
{ printf "Radha Mitchell\nSean Bean\nLaurie Holden\nDeborah Kara Unger\nKim Coates\nTanya Allen\nAlice Krige\nJodelle Ferland\nColleen Williams\nRon Gabriel\n"; } > Documentário/Cowspiracy/casts.txt & { printf "A woman, Rose, goes in search for her adopted daughter within the confines of a strange, desolate town called Silent Hill."; } > Documentário/Cowspiracy/resumo.txt & { printf "A woman brings her daughter to the ghost town of Silent Hill, and then loses her. The rest of the film involves the woman following clues to find her daughter while she is followed by a police officer and her husband. What she encounters is both shocking and unexpected." ; printf "Este filme retrata uma mãe que perde a filha e tem de ir a cidade de Silent Hill consumida por cinzas de uma mina de carvão que ardeu por uma razão. Quando os sinos tocam a cidade escurece e entra num modo de horror."; } > Documentário/Cowspiracy/reviews.txt


#  Popular os ficheiros do filme The Last Dance [Categoria de Documentários]
{ printf "Michael Jordan\nScottie Pippin\nPhil Jackson\nSteve Kerr\nDavid Aldridge\nMichael Wilbon\nBill Wennington\nDeloris Jordan\nDennis Rodman\nJohn Paxson"; } > Documentário/The\ Last\ Dance/casts.txt & { printf "Charting the rise of the 1990's Chicago Bulls, led by Michael Jordan, one of the most notable dynasties in sports history."; } > Documentário/The\ Last\ Dance/resumo.txt & { printf "According to director Jason Hehir, the homes that Michael Jordan was interviewed in for the documentary were not actually his. Jordan did not want to film in his own home for privacy reasons, so producers scouted other homes in the Malibu, California area that they felt would fit Jordan's taste and style."; printf "\n" ; printf "Dennis Rodman playing pickup games at the Jordan Dome with MJ during the filming of Space Jam sealed the deal of Rodman joining the Bulls."; }> Documentário/The\ Last\ Dance/reviews.txt

#  Popular os ficheiros do filme Chef's Table BBQ [Categoria de Documentários]
{ printf "Tootsie Tomantez\nLennox Hastie\nJRodney Scott\nRosalia Chay Chuc\nKim Coates\nKyla Deaver\nMackenzie Foy\nPatrick Wilson\nAshley White\nCharlotte Hope\n"; } > Documentário/Chef’s\ Table\ BBQ/casts.txt & { printf "The critically-acclaimed series returns for its latest iteration, delving into the smoky, juicy world of barbecue. Featured chefs and pitmasters include Tootsie Tomantez, Lennox Hastie, Rodney Scott, and Rosalia Chay Chuc."; } > Documentário/Chef’s\ Table\ BBQ/resumo.txt & { printf "An absolutely beautiful tale of Americana. The most delicious food, mixed with beautiful stories. There is a reason there food is so delicious. Tradition and hard work meet to make a wonderful dish. This is the show to watch if you care anything about cooking. And if you don't, the stories will make you tear up."; } > Documentário/Chef’s\ Table\ BBQ/reviews.txt

# --- #

#  Popular os ficheiros do filme Guardians of the Galaxy [Categoria de Comédia]
{ printf "Radha Mitchell\nSean Bean\nLaurie Holden\nDeborah Kara Unger\nKim Coates\nTanya Allen\nAlice Krige\nJodelle Ferland\nColleen Williams\nRon Gabriel\n"; } > Comédia/Deadpool/casts.txt & { printf "A woman, Rose, goes in search for her adopted daughter within the confines of a strange, desolate town called Silent Hill."; } > Comédia/Deadpool/resumo.txt & { printf "A woman brings her daughter to the ghost town of Silent Hill, and then loses her. The rest of the film involves the woman following clues to find her daughter while she is followed by a police officer and her husband. What she encounters is both shocking and unexpected." ; printf "Este filme retrata uma mãe que perde a filha e tem de ir a cidade de Silent Hill consumida por cinzas de uma mina de carvão que ardeu por uma razão. Quando os sinos tocam a cidade escurece e entra num modo de horror."; } > Comédia/Deadpool/reviews.txt

#  Popular os ficheiros do filme Deadpool [Categoria de Comédia]
{ printf "Michael Jordan\nScottie Pippin\nPhil Jackson\nSteve Kerr\nDavid Aldridge\nMichael Wilbon\nBill Wennington\nDeloris Jordan\nDennis Rodman\nJohn Paxson"; } > Comédia/Guardians\ of\ the\ Galaxy/casts.txt & { printf "Charting the rise of the 1990's Chicago Bulls, led by Michael Jordan, one of the most notable dynasties in sports history."; } > Comédia/Guardians\ of\ the\ Galaxy/resumo.txt & { printf "According to director Jason Hehir, the homes that Michael Jordan was interviewed in for the documentary were not actually his. Jordan did not want to film in his own home for privacy reasons, so producers scouted other homes in the Malibu, California area that they felt would fit Jordan's taste and style."; printf "\n" ; printf "Dennis Rodman playing pickup games at the Jordan Dome with MJ during the filming of Space Jam sealed the deal of Rodman joining the Bulls."; } > Comédia/Guardians\ of\ the\ Galaxy/reviews.txt

#  Popular os ficheiros do filme TED [Categoria de Comédia]
{ printf "Mark Wahlberg\nMila Kunis\nSeth MacFarlane\nJoel McHale\nGiovanni Ribisi\nPatrick Warburg\nMatt Walsh\nAedin Mincks\nBill Smitrovich\nJessica Barth"; } > Comédia/TED/casts.txt & { printf "John makes a Christmas miracle happen by bringing his one and only friend to life, his teddy bear. The two grow up together and John must then choose to stay with his girlfriend or keep his friendship with his crude and extremely inappropriate teddy bear, Ted."; } > Comédia/TED/resumo.txt & { printf "Enjoyable comedy coming-of-age story with a novel character, a boozy talking teddy bear. Mark Wahlberg is an underrated comedian. He does commit. Mila Kunis is average actress but plays believable role."; } > Comédia/TED/reviews.txt

#  Popular os ficheiros do filme Spider-Man\ No\ Way\ Home[Categoria de Comédia]
{ printf "Radha Mitchell\nSean Bean\nLaurie Holden\nDeborah Kara Unger\nKim Coates\nTanya Allen\nAlice Krige\nJodelle Ferland\nColleen Williams\nRon Gabriel\n"; } > Ação/Spider-Man\ No\ Way\ Home/casts.txt & { printf "A woman, Rose, goes in search for her adopted daughter within the confines of a strange, desolate town called Silent Hill."; } > Ação/Spider-Man\ No\ Way\ Home/resumo.txt & { printf "A woman brings her daughter to the ghost town of Silent Hill, and then loses her. The rest of the film involves the woman following clues to find her daughter while she is followed by a police officer and her husband. What she encounters is both shocking and unexpected." ; printf "Este filme retrata uma mãe que perde a filha e tem de ir a cidade de Silent Hill consumida por cinzas de uma mina de carvão que ardeu por uma razão. Quando os sinos tocam a cidade escurece e entra num modo de horror."; } > Ação/Spider-Man\ No\ Way\ Home/reviews.txt

#  Popular os ficheiros do filme Deadpool [Categoria de Comédia]
{ printf "Michael Jordan\nScottie Pippin\nPhil Jackson\nSteve Kerr\nDavid Aldridge\nMichael Wilbon\nBill Wennington\nDeloris Jordan\nDennis Rodman\nJohn Paxson"; } > Ação/The\ Matrix/casts.txt & { printf "Charting the rise of the 1990's Chicago Bulls, led by Michael Jordan, one of the most notable dynasties in sports history."; } > Ação/The\ Matrix/resumo.txt & { printf "According to director Jason Hehir, the homes that Michael Jordan was interviewed in for the documentary were not actually his. Jordan did not want to film in his own home for privacy reasons, so producers scouted other homes in the Malibu, California area that they felt would fit Jordan's taste and style."; printf "\n" ; printf "Dennis Rodman playing pickup games at the Jordan Dome with MJ during the filming of Space Jam sealed the deal of Rodman joining the Bulls."; } > Ação/The\ Matrix/reviews.txt

#  Popular os ficheiros do filme TED [Categoria de Comédia]
{ printf "Mark Wahlberg\nMila Kunis\nSeth MacFarlane\nJoel McHale\nGiovanni Ribisi\nPatrick Warburg\nMatt Walsh\nAedin Mincks\nBill Smitrovich\nJessica Barth"; } > Ação/Resident\ Evil\ Raccoon\ City/casts.txt & { printf "John makes a Christmas miracle happen by bringing his one and only friend to life, his teddy bear. The two grow up together and John must then choose to stay with his girlfriend or keep his friendship with his crude and extremely inappropriate teddy bear, Ted."; } > Ação/Resident\ Evil\ Raccoon\ City/resumo.txt & { printf "Enjoyable comedy coming-of-age story with a novel character, a boozy talking teddy bear. Mark Wahlberg is an underrated comedian. He does commit. Mila Kunis is average actress but plays believable role."; } > Ação/Resident\ Evil\ Raccoon\ City/reviews.txt


#Trocar todos os [A] por [Z] no filme The Conjuring , ficheiro casts e guardar no mesmo ficheiro

cat Terror/The\ Conjuring/casts.txt  | Tr “a” “Z” < Terror/The\ Conjuring/casts.txt >> Terror/The\ Conjuring/casts.txt

#Trocar todas as letras lowercase para Uppercase e guardar no mesmo ficheiro.
cat Terror/The\ Conjuring/casts.txt  | Tr a-z A-Z < Terror/The\ Conjuring/casts.txt >> Terror/The\ Conjuring/casts.txt

#limpar consola
clear

#Visualizar os primeiros 3 nomes do cast do filme Silent Hill
cat Terror/Silent\ Hill/casts.txt  | Head -n 3 

#Quantas linhas e carateres tem o resumo de Silent Hill?
cat Terror/Silent\ Hill/casts.txt | wc -l -m 

#Apagar carateres  (es) (isto poderia ser qualquer carater)
cat Terror/Silent\ Hill/resumo.txt | tr -d 'es' < Terror/Silent\ Hill/resumo.txt >> Terror/Silent\ Hill/resumo.txt 

#Mover a pasta Ação para Dentro de Documentário
mv Ação Documentário

#Remover a Categoria de Comédia
rm -rf Comédia

#Juntar os casts do filme Conjuring com a série/filme Chef's Table BBQ e imprimir a lista ordenada
cat Terror/The\ Conjuring/casts.txt > Documentário/Chef’s\ Table\ BBQ/casts.txt 

sort Documentário/Chef’s\ Table\ BBQ/casts.txt 