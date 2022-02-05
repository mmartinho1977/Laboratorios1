# Diogo Gomes Silva 23893

#!/bin/bash
cd ~/Documentos/  #Navega até à pasta onde o utilizador pretende criar a Videoteca
mkdir Videoteca  #Cria a Diretoria Videoteca
cd Videoteca      #Entra na pasta Videoteca 
sleep 2           #Faz o terminal esperar 2 segundos até executar o proximo comando
mkdir Comédia Ação Drama FicçãoCientifica  #Cria 4 subpastas com as categorias dos filmes
cd Ação        #Entra na pasta ação
sleep 5

mkdir Pasta1  #criaa pasta que vai conter o conteudo do filme
cd Pasta1  
sleep 2
touch cast.txt Review.txt Summary.txt Trailer.sh   #cria os arquivos que vão conter o conteudo do filme
cd ..   #Volta para a pasta anterior
sleep 2
cp -r Pasta1 Pasta2    #Cria clones da Pasta1 mantendo o seu conteudo através do comando "-r"
cp -r Pasta1 Pasta3 
cp -r Pasta1 Pasta4
cp -r Pasta1 Pasta5
cp -r Pasta1 Pasta6

#Fazer o mesmo para o resto das pastas das Categorias:
cd ..
cd Drama
sleep 5

mkdir Pasta1 
cd Pasta1
sleep 2
touch Cast.txt Review.txt Summary.txt Trailer.sh
cd ..
sleep 2
cp -r Pasta1 Pasta2 
cp -r Pasta1 Pasta3 


cd ..
cd Comédia
sleep 5

mkdir Pasta1 
cd Pasta1
sleep 2
touch Cast.txt Review.txt Summary.txt Trailer.sh
cd ..
sleep 2
cp -r Pasta1 Pasta2 
cp -r Pasta1 Pasta3 

cd ..
cd FicçãoCientifica 
sleep 5

mkdir Pasta1 
cd Pasta1
sleep 2
touch Cast.txt Review.txt Summary.txt Trailer.sh
cd ..
sleep 2
cp -r Pasta1 Pasta2 
cp -r Pasta1 Pasta3 

#Mudar os nomes das respetivas pastas para ficarem com os nomes dos filmes:

cd ..
cd Ação 
mv Pasta1 Fury
mv Pasta2 Chappie 
mv Pasta3 2Fast2Furious
mv Pasta4 BayWatch

sleep 2

cd ..
cd Drama
mv Pasta1 Dunkirk
mv Pasta2 AmericanSniper
mv Pasta3 1917

sleep 2

cd ..
cd Comédia  
mv Pasta1 JumanjiWelcomeToTheJungle
mv Pasta2 JojoRabbit
mv Pasta3 BadBoys

sleep 2

cd ..
cd FicçãoCientifica
mv Pasta1 Elysium
mv Pasta2 TheHUngerGames
mv Pasta3 Irobot
sleep 5

#Colocar conteudo dentro dos arquivos que se encontram dentro das Pastas dos FIlmes em cada Categoria:

cd .. 
cd Ação 
cd Fury 
echo "    Brad Pitt as First Sergeant Donald “Don” "Wardaddy" Collier, tank commander
    Shia LaBeouf as Technician fifth grade Boyd "Bible" Swan, tank gunner
    Logan Lerman as Private First Class Norman "Machine" Ellison, tank assistant driver/bow gunner
    Michael Peña as Corporal Trinidad “Trini” "Gordo" García, tank driver
    Jon Bernthal as Private First Class Grady "Coon-Ass" Travis, tank loader
    Jason Isaacs as Captain Waggoner
    Brad Henke as Staff Sergeant Davis
    Jim Parrack as Staff Sergeant Binkowski
    Xavier Samuel as 1st Lieutenant Parker
    Scott Eastwood as Sergeant Miles
    Kevin Vance as Staff Sergeant Peterson
    Anamaria Marinca as Irma
    Alicia von Rittberg as Emma
    Chris Wilson as Chaplain
    David Rae as Tiger I Commander
    Laurence Spellman as Master Sergeant Dillard
    Zach Avery as SS Medic (uncredited)
    Adam Ganne as an Obersturmführer
    Daniel Dorr as Obersturmführer Schmidt
    Berhard Forscher as Sturmbannführer Muller
    Edin Gali as Hauptscharführer Wolfe" > cast.txt  #Comando "echo" escreve texto dentro de um arquivo txt indicado através de ">"
    
echo "Durante o final da Primeira Guerra Mundial, o sargento Don "Wardaddy" lidera um grupo de apenas cinco soldados americanos encarregado de aniquilar os nazistas. Em um tanque de guerra Sherman, os homens enfrentam uma missão mortal. Apesar da desvantagem numérica, falta de armas e um soldado inexperiente, "Wardaddy" e seus homens se movem em um ataque espetacular no coração da Alemanha nazista." > Summary.txt

echo "Gruelling tank action in this war epic
Leofwine_draca21 May 2016
David Ayer is an up-and-down director for me. For every film of his I love (STREET KINGS, SABOTAGE) there seems to be one I equally hate (END OF WATCH). Thankfully, FURY is at the top end of his scale, a straightforward war epic centred around the crew of a single tank as they trundle through the German countryside and encounter Nazis at every turn.

This is a war film as it should be: gruelling, violent, and dehumanising. The attention to detail is remarkable and the action scenes are expertly staged, as you'd expect from the experienced Ayer; you really feel like you're on the ground with these soldiers and taking part in the combat. The first tank assault is my favourite scene, as it's an example of blistering, never-seen-before action, although the extended powerhouse climax is almost as good.

Yes, the story is predictable and the clear-cut characters a little too simplistic. But Ayer counters this by incorporating interesting actors into the tale. A weary Brad Pitt plays virtually the same character as he did in INGLOURIOUS BASTERDS and is fine for it, while Shia LaBeouf gets to play a character support role for a change. Jon Bernthal (THE WALKING DEAD) remains a scene-stealer, and Logan Lerman shows a little more experience in his acting than in previous years. FURY is a dark and depressing film, but the vibrancy of the cinematography and all-out action makes it one to watch." > Review.txt

#Fazer uma script através do Terminal e tornar essa script executável:

echo "firefox https://www.youtube.com/watch?v=DNHuK1rteF4" > Trailer.sh  #Comando para abrir o Firefox com o link do Trailer do filme através do terminal
chmod u+x Trailer.sh  #Comando do terminal para tornar a script executável
cd .. 

#Repetição para as restantes pastas dos filmes:

sleep 5
cd Chappie 
echo "    Sharlto Copley as Chappie, a robot. Copley acted out the scenes in front of the camera interacting with the rest of the cast and lent his voice. Contrary to a 2014 story by Entertainment Weekly,[5] Visual Effects Supervisor Chris Harvey explained that the production did not use motion capture, and Copley's performance was used only as a reference by the animators who replaced him with the CGI for Chappie.[6]
        Copley also makes a cameo at the ending as a police officer.
    Dev Patel as Deon Wilson,[5] a programmer at Tetravaal.
    Hugh Jackman[7] as Vincent Moore, a former soldier turned Tetravaal engineer.
    Ninja as Ninja,[5] a gang leader and metafictional version of himself from the South African zef rap-rave group Die Antwoord.
    Yolandi Visser as Yolandi,[5] a gang member and metafictional version of herself from the South African zef rap-rave group Die Antwoord.
    Jose Pablo Cantillo as Amerika, a gang member.
    Sigourney Weaver[8] as Michelle Bradley, the CEO of Tetravaal.
    Brandon Auret as Hippo, a powerful gangster that Ninja's group owe money to.
    Anderson Cooper as himself
    Eugene Wanangwa Khumbanyiwa as King" > cast.txt

echo "Em um futuro próximo, policiais humanos são substituídos por robôs ultrarresistentes, dotados de inteligência artificial. Deon, o cientista criador das máquinas, rouba um modelo defeituoso e consegue fazer com que ele tenha a capacidade de sentir e pensar por si próprio. Porém, as autoridades começam a ver Chappie como um perigo para a humanidade e ordem e vão fazer de tudo para garantir que ele seja o último de sua espécie." > Summary.txt

echo "The lack of originality and occasional stupidity of some of the characters hinder your overall enjoyment of the film--though it IS entertaining
MartinHafer21 June 2015
No matter what anyone tells you, "Chappie" is basically a South African re-working of the RoboCop franchise. So, when you see it, while you might enjoy it, you cannot help but compare the film to the others. Because of this, the film certainly is not original. But, despite this, it is modestly entertaining. There are tons of explosions and shooting and the way that the new police android, Chappie, learns and grows is interesting to watch. But, the film also has a serious problem--the writing. While there are some really interesting parts to the movie, it also occasionally has HUGE lapses of intelligence. For instance, Chappie is stolen by criminals--really, really bad criminals. They also kidnap Chappie's maker and force him to activate the droid. And then, they just let the guy go!!! Later, this devoted programmer returns to see and work on his creation AFTER the baddies threatened to kill him if they ever saw him again...but they don't!! Late in the film, one of these same super-evil villains even tries to save some lives by trying to sacrifice his own!!! Where is the consistency and believability?! There are other examples of these unevenness...but frankly it's a film you best watch by just turning off your brain and enjoying it if you can. If you can't, it's going to be a long, long viewing experience.

By the way, although I love South Africa and would love to visit it again, Johannesburg really IS this scary in real life and setting the film there is appropriate. Visit this lovely country-- especially Cape Town or the countryside. Just be careful when entering Johannesburg." > Review.txt

echo "firefox https://www.youtube.com/watch?v=lyy7y0QOK-0" > Trailer.sh
chmod u+x Trailer.sh 
cd .. 

sleep 5
cd 2Fast2Furious
echo "Main article: List of Fast & Furious characters

    Paul Walker as Brian O'Conner, a former Los Angeles Cop who became a fugitive after letting Dominic Toretto escape in the previous film who has now settled in Miami. He drives a 1999 Nissan Skyline GTR R34 and a 2002 Mitsubishi Lancer Evolution VII.
    Tyrese Gibson as Roman Pearce, Brian's childhood friend who is on house arrest after serving time in prison for which he still blames Brian. He drives a 2003 Mitsubishi Eclipse Spyder GTS.
    Eva Mendes as Monica Fuentes, a U.S. Customs agent working undercover as Carter Verone's aide and Brian's love interest.
    Cole Hauser as Carter Verone, a ruthless Argentinian drug lord whose organization the Custom Service sent Monica and later Brian and Roman to infiltrate.
    Chris "Ludacris" Bridges as Tej Parker, a race host and a friend of Brian's. He arranges high stakes street racing events in which Brian often races and wins.
    Devon Aoki as Suki, a friend of Brian, Tej, and Jimmy. She is the only named female racer in the movie, and her crew is made up entirely of women. She normally drives a hot pink custom Honda S2000.
    James Remar as Agent Markham, a U.S. customs agent in charge of the operation against Verone and Monica's superior.
    Thom Barry as Agent Bilkins, who Brian first met during his undercover work in the first movie, who has come to Miami to oversee the situation. As before, he holds a grudging respect for O'Conner's driving and street racing skills.
    Edward Finlay as Agent Dunn, a U.S. Customs agent who is Markham's number two in the operation.
    Mark Boone Junior as Detective Whitworth, a Miami detective who is forced by Verone to give Pearce and O'Conner a window to deliver his package.
    Mo Gallini as Enrique, Verone's bald henchman.
    Roberto Sanchez as Roberto, Verone's henchman and Enrique's partner.
    MC Jin as Jimmy, a mechanic who works for Tej and is a close friend of Brian.
    Amaury Nolasco as Orange Julius, a street racer who drives an orange Mazda RX-7.
    Michael Ealy as Slap Jack, a street racer who drives a gold Toyota Supra.
    John Cenatiempo as Korpi, a street racer who drives a 1969 Chevrolet Camaro Yenko S/C.
    Eric Etebari as Darden, Korpi's friend who drives a 1970 Dodge Challenger.

Producer Neal H. Moritz makes a cameo appearance as a police officer during a chase scene. " > cast.txt

echo "O ex-policial Brian O'Conner se muda de Los Angeles para Miami para recomeçar sua vida. Ele acaba se envolvendo em rachas na sua nova cidade com seu amigo Tej e Suki. Suas aventuras terminam quando ele é preso e faz um acordo com agentes do FBI. Brian tem a missão muito perigosa de prender um poderoso chefe do cartel das drogas." > Summary.txt

echo "
Strangely enough, the derivative and dull car-chase flick THE FAST AND THE FURIOUS was popular enough to warrant a sequel, yet this time around action-man Vin Diesel doesn't return to the fray. I can't say that I really miss him, as his bone-headed knuckleness did get rather tiresome, but as a result the film lacks the friendship/camaraderie that was about the most appealing thing in the first.

This time, wooden-but-handsome leading man Paul Walker teams up with Tyrese, who I've never heard of. Tyrese is a hulking chap, with huge muscles, but he's an even worse actor than Vin Diesel. The threadbare plot doesn't make much sense, but it recalls BAD BOYS II unfavourably at every opportunity. Our terrible twosome infiltrate a crime gang to take out a drug lord, so cue plenty of car-chase action and lots of souped-up wheels on the road. I'm not particularly interested in cars, so this does nothing for me, but there are lots of police cars being smashed up, and one fine scene where somebody comes off the worse in his battle with a truck.

The stunts in this film rely far more on CGI than before, especially the climatic jump-onto-a-boat stunt, which is so unrealistic that it seems pathetic to watch. The violence is kept to a minimum and, while the action is passable, it's nothing we haven't seen before. There's one delightful recreation of that old torture favourite – the gnawing rat through the stomach routine – but otherwise, 'original' elements are bare and there's a paucity of imagination in the script. Cole Hauser is the nonthreatening bad guy, Eva Mendes is the Jennifer Lopez-wannabe glamour interest. Add in lots of sun-drenched locales, bikini-clad babes and big muscles, and you have a dumb-as-nails thriller with plenty of drive but no real entertainment." > Review.txt

echo "firefox https://www.youtube.com/watch?v=F_VIM03DXWI" > Trailer.sh
chmod u+x Trailer.sh 
cd .. 


sleep 5
cd .. 
cd Comédia
cd JojoRabbit
echo "    Roman Griffin Davis as Jojo, a young German boy who is a member of the Deutsches Jungvolk
    Thomasin McKenzie as Elsa, a Jewish girl whom Rosie hides in her home
    Scarlett Johansson as Rosie, Jojo's mother who is secretly anti-Nazi
    Taika Waititi as Adolf Hitler, Jojo's imaginary friend
    Sam Rockwell as Klenzendorf, an army officer who runs a Jungvolk camp
    Rebel Wilson as Fräulein Rahm, an instructor of the League of German Girls in the Jungvolk camp
    Alfie Allen as Freddy Finkel, the second-in-command to Captain Klenzendorf
    Stephen Merchant as Herman Deertz, a Gestapo agent
    Archie Yates as Yorki, Jojo's best friend and a fellow member of the Jungvolk" > cast.txt

echo "Jojo é um garoto alemão solitário que descobre que sua mãe está escondendo uma garota judia no sótão. Ajudado apenas por seu amigo imaginário, Adolf Hitler, Jojo deve enfrentar seu nacionalismo cego enquanto a Segunda Guerra Mundial prossegue." > Summary.txt

echo "I love Taika Waititi's work...so it's not too surprising that I'd want to see "Jojo Rabbit"...his latest and strangest film project. His previous work, such as "Hunt for the Wilderpeople" and "What We Do in the Shadows", really impressed me. In light of this, it's very sad that I wasn't particularly impressed with "Jojo"....though I must admit it was well crafted.

The problem for me is that the film really ISN'T a drama nor a comedy. A few things, such as Sam Rockwell's outfit near the end of the film, simply are surreal and senseless. If you're looking for a hilarious movie, well, with all the death and Hitler in it, it's not the least bit funny. If you want a serious drama about the final months of the Third Reich, well, the film is often too light and carefree....an unusual case where the movie fails on both accounts with me. This being said, the reviews for this film are incredibly positive and you may well enjoy it....but for me, it's STILL too soon to be making Hitler-fied films like this one...especially since, unlike "The Producers", it really isn't funny." > Review.txt

echo "firefox https://www.youtube.com/watch?v=tL4McUzXfFI" > Trailer.sh
chmod u+x Trailer.sh 
cd .. 


sleep 5
cd .. 
cd Drama
cd AmericanSniper
echo "
    Bradley Cooper as Chris Kyle[7]
    Sienna Miller as Taya Kyle[8]
    Luke Grimes as Marc Lee[9]
    Jake McDorman as Ryan "Biggles" Job[10]
    Cory Hardrict as "D" / Dandridge[11]
    Kevin "Dauber" Lacz as himself[12]
    Navid Negahban as Sheikh Al-Obodi[13]
    Keir O'Donnell as Jeff Kyle
    Kyle Gallner as Goat-Winston[14]
    Sam Jaeger as Captain Martens[15]
    Sammy Sheik as Mustafa, a character partially based on Iraqi sniper Juba[16]
    Mido Hamada as "The Butcher", a character possibly based on Abu Deraa[17]
    Eric Close as DIA Agent Snead[13]
    Eric Ladin as Squirrel[13]
    Ben Reed as Wayne Kyle
    Brian Hallisay as Captain Gillespie
    Tim Griffin as Colonel Gronski
    Chance Kelly as Lt. Colonel Jones
    Elise Robertson as Deby Kyle
    Marnette Patterson as Sara
    Cole Konis as Young Chris Kyle
    Leonard Roberts as Instructor Rolle
    Luke Sunshine as Young Jeff Kyle
    Max Charles as Colton Kyle[18]
    Troy Vincent as Pastor
    Vincent Selhorst-Jones as Eddie Ray Routh" > cast.txt

echo "Chris Kyle é um atirador de elite das forças especiais da marinha dos Estados Unidos. Durante a Guerra do Iraque, sua missão é proteger seus companheiros e seu dever faz dele um dos maiores atiradores da história norte-americana. Sua precisão salva inúmeras vidas, mas também o torna um alvo preferencial. Quando Kyle finalmente volta para casa, ele descobre que não tem como deixar a guerra para trás." > Summary.txt

echo "Although American Sniper did take one Oscar home for Best Sound Editing, it is Bradley Cooper's performance as Chris Kyle, the Audie Murphy of the Iraq War.

I say that because after reading Tony Curtis's memoirs where he tells of working with Murphy when they were both young contract players at Universal-International, Cooper's performance really resonated with me. To say the Iraq war of intervention is controversial is putting it mildly. Murphy's war by the history written was a 'good' war where all who served were somehow heroes. Murphy the most decorated soldier in our history was described by Curtis as suffering post traumatic stress similar to what Cooper shows us in Kyle. Curtis recalls that he and others gave Audie a wide berth at Universal, never knowing when a hair trigger temper would go off.

Still Murphy left the war behind other than doing a war picture or three in Hollywood. By contrast Kyle never left his war behind with four different duties in Iraq. His skills were essential, the most lethally effective sniper our Armed Forces ever produced.

Seeing what we see in American Sniper will make no one a cheerleader for the Iraq War. It certainly unnerved Chris Kyle. His lifeline to a normal existence turns out to be his wife Sienna Miller and his family. Far more than in a marriage to a civilian or even with most military marriages. Without Taya Kyle, Chris Kyle would truly have been a lost soul.

The war is realistically depicted by director Clint Eastwood. Eastwood unlike John Wayne with The Green Berets had the good sense not to make a World War II film for this conflict. Which with Isis now on the scene may still not be over.

I recommend seeing American Sniper for the strength of Bradley Cooper's performance and the overall ensemble performances of the cast. It is so far the best depiction of the Iraq War on screen." > Review.txt

echo "firefox https://www.youtube.com/watch?v=AqcthD64Srs" > Trailer.sh
chmod u+x Trailer.sh 
cd .. 


sleep 5
cd .. 
cd FicçãoCientifica
cd TheHungerGames
echo "

    Jennifer Lawrence as Katniss Everdeen
    Josh Hutcherson as Peeta Mellark
    Liam Hemsworth as Gale Hawthorne
    Woody Harrelson as Haymitch Abernathy
    Elizabeth Banks as Effie Trinket
    Lenny Kravitz as Cinna
    Stanley Tucci as Caesar Flickerman
    Donald Sutherland as President Coriolanus Snow
    Wes Bentley as Seneca Crane
    Toby Jones as Claudius Templesmith
    Alexander Ludwig as Cato
    Isabelle Fuhrman as Clove
    Amandla Stenberg as Rue
    Jacqueline Emerson as Foxface
    Jack Quaid as Marvel
    Leven Rambin as Glimmer
    Dayo Okeniyi as Thresh
    Willow Shields as Primrose Everdeen
    Paula Malcomson as Mrs. Everdeen" > cast.txt

echo "Na região antigamente conhecida como América do Norte, a Capital de Panem controla 12 distritos e os força a escolher um garoto e uma garota, conhecidos como tributos, para competir em um evento anual televisionado. Todos os cidadãos assistem aos temidos jogos, no qual os jovens lutam até a morte, de modo que apenas um saia vitorioso. A jovem Katniss Everdeen, do Distrito 12, confia na habilidade de caça e na destreza com o arco, além dos instintos aguçados, nesta competição mortal." > Summary.txt

echo ""
I should tell you right up front that I have never read "The Hunter Games"--so this review is more for this group of folks than the die-hard book lovers. In many cases, I have no idea where the book and film differ and my expectations were quite different from my daughter--who has read the series. However, one this that DID bother me is that despite the film's title, no one appeared to be all that hungry in the film and the way food was used to manipulate and control the masses was not explained well. The only way I knew this was that my daughter sat next to me and explained this (and it helps that we both know sign language). But apart from that and the god-awful 'shaky cam" (one of the WORST inventions in the history of filmmaking), the film was enjoyable and engrossing throughout. As I said, though, the shakiness of the film (especially at the beginning) was a problem--and I felt motion sick just watching the movie! The plot and movie have already been discussed in a bazillion reviews. The film has already been out about 45 days when I saw it tonight, so I don't want to give a lengthy review. Instead, I'll talk about what I liked. Foremost, the acting was really, really nice. I cared about the characters I was supposed to care about and it tore my guts out when one of them was killed in the film--showing what a nice job they did and how well the director elicited the performances. I liked the story a lot--especially since I love dystopian sci-fi films. In many ways it was like combining the original "Rollerball" and, perhaps, "Gladiator"! It was truly original and kept me riveted. All in all, a terrific film--well worth your time provided you don't mind the violence necessary to convey the story. However, despite the books being very popular with kids, I would think twice about bringing any kids younger than about 12 or 13.]" > Review.txt

echo "firefox https://www.youtube.com/watch?v=mfmrPu43DF8" > Trailer.sh
chmod u+x Trailer.sh 
cd .. 
cd ..

#FIM, DIRETORIA CRIADA.
