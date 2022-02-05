#!/bin/bash 

#Criação da Videoteca
mkdir videoteca
cd videoteca
echo "Bem vindo a tua videoteca" >> videoteca.txt

#Criação da pasta filmes
mkdir filmes

#Criar várias pastas de filmes e fazer um top 5 de cada tipo de filmes com as suas classificações etc
cd filmes 
mkdir Ação
mkdir Comédia
mkdir Thriller 
mkdir Romance 
mkdir FicçãoCientifica 

cd Ação
mkdir top5Ação

cd top5Ação
mkdir top1

cd top1
mkdir TheDarkKnight  

cd TheDarkKnight 
mkdir Resumo 

cd Resumo
echo "Quando a ameaça conhecida como Joker causa estragos e caos no povo de Gotham, Batman deve aceitar um dos maiores testes psicológicos e físicos de sua capacidade de lutar contra a injustiça." >> Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Metascore - 100/100
- Justin Chang
Cativante ... Um épico policial ambicioso e encorpado de sentido gratificante e complexidade moral, este é um entretenimento pop muito inteligente que satisfaz todas as expectativas criadas por seu predecessor de sucesso e mais alguns.." >> Review1.txt

echo "-Metascore - 100/100
- Kirk HonneyCutt
Bale novamente personifica de forma brilhante todos os traumas profundos e dúvidas do alter ego do Batman, Bruce Wayne. Um pouco de Hamlet está neste Batman" >> Review2.txt

echo "-Metascore - 50/100
- David Edelstein
A novidade passa e a falta de imaginação, visual ou não, vira uma chatice. O Cavaleiro das Trevas é barulhento, confuso e sádico." >> Review3.txt

echo "-Metascore - 50/100
- David Denby
O Cavaleiro das Trevas dificilmente é rotineiro, ele tem um sadismo contagiante cena após cena, que o mantém no limite e o manda para a rua com transtorno de stress pós-filme." >> Review4.txt

cd .. 
mkdir Classificação

cd Classificação
echo "Ganhou 2 Oscars e é o 4º melhor filme do mundo com a classificação de 9.0/10 segundo o IMDB." >> Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Christian Bale como Bruce Wayne
Heath Ledger como Joker
Aaron Eckhart como Harvey Dent
Michael Caine como Alfred
Maggie Gyllenhaal como Rachel 
Gary Oldman como Gordon 
Morgan Freeman como Lucian Fox
Monique Gabriela Curnen como Ramirez
Ron Dean como Wuertz
Cillian Murphy como Scarecrow
Chin Han como Lau
Nestor Carbonell como Mayor
Eric Roberts como Maroni 
Ritchie Coster como Chechen
Anthony Michael Hall como Engel
Keith Szarabajka como Stephens
Colin McFarlane como Loeb
Joshua Harto como Reese

Diretor - Christopher Nolan
Escritores - Jonathan Nolan 	
             Christopher Nolan 	
             David S. Goyer 
             Bob Kane " >> TopCast.txt

cd .. 
cd .. 
cd ..
mkdir top2

cd top2 
mkdir TheLordoftheRings.TheReturnoftheKing

cd TheLordoftheRings.TheReturnoftheKing
mkdir Resumo 

cd Resumo 
echo "Gandalf e Aragorn lideram o Mundo dos Homens contra o exército de Sauron para desviar seu olhar de Frodo e Sam enquanto eles se aproximam do Monte da Perdição com o Anel" >> Resumo.txt

cd ..
mkdir reviews 

cd reviews
echo "Metascore - 100/100
- Lisa Schwarzbaum
A conclusão da obra-prima de Peter Jackson é apaixonante e letrada, detalhada e expansiva, e é concebida com um toque de risco para a magia do filme antiquado em seu aspeto mais precioso." >> Review1.txt

echo "Metascore - 100/100
- The Hollywood Reporter
Um sucesso épico e uma produção que faz história que termina com uma versão final magistralmente divertida. " >> Review2.txt

echo "Metascore - 100/100
- David Ansen
A segunda parte foi melhor do que a primeira, e esta é a melhor de todas. Tem cenas de ação espetaculares e criaturas imaginárias, e é de longe o capítulo mais comovente. As performances aprofundaram-se." >> Review3.txt

echo "Metascore - 100/100
- James Berardinelli
Rotular isso como um filme é quase uma injustiça. Esta é uma experiência de amplitude e grandeza épicas, incrível poder emocional e impulso implacável." >> Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Ganhou 11 oscars e é o 7º melhor filme do mundo com pontuação de 8.9/10 segundo o Imdb" >>Classificação.txt

cd .. 
mkdir TopCast

cd TopCast
echo "
Elijah Wood como Frodo
Viggo Mortensen como Aragorn
Ian McKellen como Gandalf
Orlando Bloom como Legolas 
Noel Appleby como Everard Proudfoot
Ali Astin como Elanor Gamgee
Sean Astin como Sam
David Aston como Gondorian Soldier 3
John Bach como Madril
Sean Bean como Boromir
Cate Blanchett como Galadriel
Billy Boyd como Pippin
Sadwyn Brophy como Eldarion
Alistair Browning como Damrod
Marton Csokas como Celeborn
Richard Edge como Gondorian Soldier 1
Jason Fitch como Uruk 2
Bernard Hill como Theoden

Diretor - Peter Jackson
Escritores - J.R.R. Tolkien, Fran Walsh, Philippa Boyens" >> TopCast.txt


cd ..
cd ..
cd ..
mkdir top3

cd top3
mkdir inception

cd inception
mkdir Resumo

cd Resumo
echo "Um ladrão que rouba segredos corporativos por meio do uso de tecnologia de compartilhamento de sonhos recebe a tarefa inversa de plantar uma ideia na mente de um C.E.O., mas o seu passado trágico pode condenar o projeto e sua a equipa ao desastre." >>Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Metascore - 100/100
- Justin Chang
Se Inception é um quebra-cabeças metafísico, também é metafórico: é difícil não fazer conexões entre a trama dos sonhos de Cobb e a produção de filmes de Nolan - uma atividade dedicada a construir um simulacro da realidade, com o objetivo de nos seduzir, confundir as nossas cabeças e ir embora, uma impressão duradoura. Missão cumprida." >>Review1.txt

echo "Metascore - 75/100
- Roger Moore
O início é um passeio elegante e portentoso, embora eu não tenha certeza se Nolan está mais perto de visualizar o negócio real (dos sonhos) do que Hitchcock estava.">>Review2.txt

echo "Metascore - 40/100
- David Edelstein
O início consegue ser desajeitado e confuso em quatro níveis distintos de realidade.">>Review3.txt

echo "Metascore - 90/100
- Kirk Honeycutt
Em um verão de remakes, reboots e sequências, chega o Inception, facilmente a ideia de filme mais original em anos.">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Ganhou 4 Oscars e é o 13º melhor filme do mundo, classificado com uma pontuação de 8.8/10 segundo o IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Leonardo DiCaprio como Cobb
Joseph Gordon-Levitt como Arthur
Elliot Page como Ariadne
Ken Watanabe como Saito
Tom Hardy como Eames
Dileep Rao como Yusuf
Cillian Murphy como Robert Fischer
Tom Berenger como Browning
Marion Cotillard como Mal
Pete Postlethwaite como Maurice Fischer
Michael Caine como Miles
Lukas Haas como Nash
Tai-Li Lee como Tadashi
Claire Geare como Phillipa(3 anos)
Magnus Nolan como James(20 meses)
Taylor Geare como Phillipa (5 anos)
Johnathan Geare como James (3 anos)
Tohoru Masamune como Segurança Japonês

Diretor - Christopher Nolan
Escritor- Christopher Nolan">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top4

cd top4
mkdir TheLordOfTheRings.TheFellowshipOfTheRing 

cd TheLordOfTheRings.TheFellowshipOfTheRing 
mkdir Resumo

cd Resumo
echo "Um manso Hobbit do Condado e oito companheiros partem em uma jornada para destruir o poderoso Anel e salvar a Terra-média do Lorde das Trevas Sauron.">>Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Metascore - 100/100
-  Stephanie Zacharek
Eu vejo isso como quase perfeito: é uma das melhores fotos de fantasia já feitas.">>review1.txt

echo "Metascore - 100/100
- Michael Wilmington
Uma obra extraordinária, concebida de forma grandiosa, executada de forma brilhante e descontroladamente divertida. É o sonho de um hobbit, o deleite de um mago. E, claro, é apenas o começo.">>review2.txt

echo "Metascore - 75/100
- Rene Rodriguez
A visão deslumbrante de Jackson transforma a história em um verdadeiro filme-filme - um que, ao contrário de muitos filmes de fantasia hoje, é genuinamente transportador.">>review3.txt

echo "Metascore - 90/100
- Gregory Weinkauf
O filme é um entretenimento massivo e surpreendente; na verdade, cativar-nos é o seu objetivo principal.">>review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Ganhou 4 oscars e é o 10º melhor filme do mundo, classificado com uma pontuação de 8.8/10 segundo o IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Elijah Wood como Frodo
Ian McKellen como Gandalf
Orlando Bloom como Legolas
Sean Bean como Boromir
Alan Howard como Voz do anel
Noel Appleby como Everard Proudfoot
Sean Astin como Sam
Sala Baker como Sauron
Cate Blanchett como Galadriel
Billy Boyd como Pippin
Marton Csokas como Celeborn
Megan Edwards como Mrs. Proudfoot
Michael Elsworth como Gondorian Archivist
Mark Ferguson como Gil-galad
Ian Holm como Bilbo
Christopher Lee como Saruman
Lawrence Makoare como Lurtz
Andy Serkis como Gollum(voz)

Diretor - Peter Jackson
Escritores - J.R.R. Tolkien, Fran Walsh, Philippa Boyens">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top5

cd top5
mkdir TheMountainII

cd TheMountainII
mkdir Resumo

cd Resumo
echo "Em uma zona de guerra desolada, onde gritos de inocentes ecoam, sete Boinas Castanhas vão dançar com a morte na linha entre o desastre e a coragem.">>Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Infelizmente o IMDB não disponibilizou as criticas dos criticos neste filme, portamto vou deixar algumas criticas dos users do IMDB.">>Aviso.txt

echo " 1/10
Tudo está tão mau; script, atuação, realismo são tão maus. As forças especiais turcas superestimadas novamente como outras forças do exército do terceiro mundo. Acho que os jovens turcos do livro de cara, organizaram e avaliaram 10. Pior cópia de filmes de vídeo clichê. Merece lixo ... Vá e leia um livro em vez disso ...">>review1.txt

echo " 10/10
Principalmente os filmes de ação têm muitos erros de script, mas devo dizer que é um filme de ação realizado. Os turcos sabem como impressionar o público">>review2.txt

cd ..
mkdir Classificação

cd Classificação
echo "
Ganhou um Golden Palm e foi considerado o melhor filme de 2017.
Tem uma classificação de 8.7/10 segundo o IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Caglar Ertugrul como Primeiro Tenente Oguz Caglar
Ufuk Bayraktar como Especialista Bekir Özbey
Ahu Türkpençe como Ceyda Balaban
Murat Serezli como Tenente-Coronel Veysel Gökmusa
Atilgan Gümüs como Sargento Mestre Mustafa Sahin
Murat Arkin como Sargento Arif Sayar
Armagan Oguz como Sargento Baybars Yucel
Ahmet Pinar como Sargento Mestre Esref Cullu
Açelya Özcan como Nabat
Bedii Akin como Boran
Eylül Arular como Enegül
Buse Varol como Ece 
Ozan Agaç como Ciya
Emir Benderlioglu como Bascavus Batur Altinbilek
Ender Arular como Brigadier Giray Dogan
Gonenc Uyanik como Comandante do tanque inimigo
Ferhat Türker como Inimigo vestido com um colete C4
Mert Özer como Líder de Execução
Diretor - Alper Caglar
Escritor - Alper Caglar">>TopCast.txt

cd .. 
cd .. 
cd ..
cd .. 
cd ..
cd Comédia
mkdir Top5Comedia

cd Top5Comedia 
mkdir top1

cd top1
mkdir HababamSinifi

cd HababamSinifi
mkdir Resumo

cd Resumo
echo "Alunos preguiçosos e sem educação partilham um vínculo muito próximo. Eles moram juntos no dormitório, onde planeiam suas últimas brincadeiras. Quando um novo diretor chega, os alunos naturalmente tentam derrubá-lo. Segue-se uma guerra cômica de estúpidos">>Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "O IMDB não disponibilizou as reviews dos criticos por isso vou postar algumas reviews de users do IMDB.">>Aviso.txt

echo " 
-8/10
Um dos melhores filmes da Turquia. Não envelheceu. Sempre permanecerá nostálgico.">>Review1.txt

echo "
6/10
A comédia não precisa ser engraçada, mas este filme precisava. Aula do caos é divertida, mas não muito engraçada">>Review2.txt

echo "
10/10
Este filme é o mais engraçado que já vi. Deve assistir antes de morrer!">>Review3.txt


echo "
10/10
Filme perfeito. História de bons homens. Kemal sunal é um génio">>Review4.txt

cd .. 
mkdir Classificação

cd Classificação
echo "Este filme tem 9.3/10 de classificação segundo o IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Kemal Sunal como Inek Saban
Münir Özkul como Kel Mahmut
Halit Akçatepe como Güdük Necmi
Tarik Akan como Damat Ferit
Adile Nasit como Hafize Ana
Sitki Akçatepe como Pasa Nuri
Kerem Aridogan comoAsker Hilmi
Ahmet Ariman como Hayta Ismail
Ertugrul Bilda como Kulyutmaz
Kemal Ergüvenç como Kimya hocasi Kemal
Aysen Gruda como Sunucu…
Cem Gürdap como Tulum hayri
Muharrem Gürses como Müdür Muharrem Gür
Bülent Haksever como Killi Sami
Bülent Igdiroglu como Kalem Sakir
Hayri Karabey como Cografya hocasi Riza
Hakki Karadayi como Veysel efendi

Diretor - Ertem Egilmez
Escritores - Umur Bugay, Rifat Ilgaz"

cd ..
cd ..
cd ..
mkdir top2

cd top2
mkdir Parasitas

cd Parasitas
mkdir Resumo

cd Resumo
echo "A ganância e a discriminação de classe ameaçam a relação simbiótica recém-formada entre a rica família Park e o destituído clã Kim.">>Resumo.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme é o 30º melhor filme do mundo com uma classificação de 8.6/10 no IDMB.
Ganhou 4 oscars."

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- John Bleasdale
Uma dissecação magistral da desigualdade social e da psicologia do dinheiro.">>review1.txt

echo "
Metascore - 80/100
- Peter Bradshaw
Um drama de suspense satírico e luxuosamente assistível.">>review2.txt

echo "
Metascore - 80/100
- Robbie Collin
Uma sátira social rouca e manchada de sangue.">>review3.txt

echo "
Metascore - 75/100
- Bradley Warren
Uma sátira demente e frequentemente barulhenta com consciência de classe, Parasitas fica um pouco aquém do melhor trabalho de Bong.">>review4.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Kang-ho Song como Ki Taek
Sun-kyun Lee como Dong Ik
Yeo-jeong Cho como Yeon Kyo
Woo-sik Choi como Ki Woo
So-dam Park como Ki Jung
Lee Jeong-eun como Moon Gwang
Jang Hye-jin como Chung Sook
Park Myeong-hoon como Geun Se
Ji-so Jung como Da Hye
Hyun-jun Jung como Da Song
Keun-rok Park como Condutor Yoon
Yi-Seo Jung como Chefe do sitio da pizza
Jae-myeong Jo como irmão do chefe do sitio da pizza
Ik-han Jung como vizinho
Kyu-baek Kim como Pessoa Bebeda 1
Hwang In Kyung como Internet Cafe Staff
Ahn Seong-Bong como Lutador de Rua 1
Kim Jin Hyung como Lutador de Rua 2

Diretor - Bong Joon Ho
Escritores - Bong Joon Ho, Jin-won Han">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top3

cd top3
mkdir AVidaÉBela

cd AVidaÉBela
mkdir Resumo 

cd Resumo 
echo "Quando um empregado judeu de mente aberta e seu filho se tornam vítimas do Holocausto, ele usa uma mistura perfeita de vontade, humor e imaginação para proteger seu filho dos perigos ao redor do acampamento.">>Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- Elizabeth Weitzman
Benigni, com grande ajuda do jovem Cantarini, elaborou uma obra de tal complexidade que podes descobrir que o teu cérebro e o teu coração estão simplesmente sobrecarregados. O que, claro, é o objetivo raramente alcançado de toda arte.">>Review1.txt

echo "
Metascore - 90/100
- Christopher Brandon
Sua mensagem única sobre rir diante do mal revela claramente que a vida é bela.">>Review2.txt

echo "Metascore -20/100
-Jonathan Rosenbaum
A indiferença dos procedimentos e do comportamento pastelão do herói para as realidades quotidianas dos campos beira o nauseante.">>Review3.txt

echo "
Metascore - 0/100
-
O filme de Benigni me deu vontade de vomitar.">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme é o 23º melhor filme do mundo com uma pontuação de 8.6/10 segundo o IMDB, para além disso ganhou 3 Oscars">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Roberto Benigni como Guido
Nicoletta Braschi como Dora
Giorgio Cantarini como Giosué
Giustino Durano como Zio
Sergio Bini Bustric como Ferruccio
Marisa Paredes como Mãe de Dora
Horst Buchholz como Dottor Lessing
Lidia Alfonsi como Guicciardini
Giuliana Lojodice como Diretor Didático
Amerigo Fontani como Rodolfo
Pietro De Silva como Bartolomeo
Francesco Guzzo como Vittorino
Raffaella Lebboroni como Elena
Claudio Alfonsi como Amico Rodolfo
Gil Baroni como Prefeito
Massimo Bianchi como Homem chave
Jürgen Bohn como Atendente de festa alemão
Verena Buratti como Ausiliaria tedesca  

Diretor - Roberto Benigni
Escritores - Vincenzo Cerami, Roberto Benigni">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top4

cd top4
mkdir AmigosImprováveis

cd AmigosImprováveis
mkdir Resumo

cd Resumo
echo "Depois que ele ficou tetraplégico devido a um acidente de parapente, um aristocrata contrata um jovem dos projetos para ser seu cuidador.">>Resumo.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme tem uma classificação de 8.5/10 segundo o IMDB">>Classificação.txt

cd ..
mkdir reviews

cd reviews
echo "
Metacore - 88/100
- James Berardinelli
Aproveite este filme pelo que ele é - o tipo de filme que pode causar uma vertigem semelhante à de Champaign - e não se preocupe com o quão real é esta obra de ficção.">>Review1.txt

echo "
Metascore - 80/100
- Andrew O'Hehir
Deixe-me confessar agora e dizer que gostei bastante de Amigos Improváveis. Se está procurando uma mudança de ritmo leve para o verão, com apenas um toque do toque continental, aqui está." >>Review2.txt

echo "
Metascore - 60/100
- Stephanie Zacharek
Na verdade, Amigos Improváveis não é mau, é apenas desavergonhado, mas pelo menos é abertamente.">>Review3.txt

echo "
Metascore - 38/100
- Joseph Jon Lanthier
Um atrevido drama onírico sobre a amizade entre um tetraplégico branco rico e um negro avarento à procura de emprego, a premissa de Amigos Improváveis sozinha quase torna a análise redundante.">>Review4.txt

cd ..
mkdir TopCast

cd TopCast

echo "
François Cluzet como Philippe
Omar Sy como Driss
Anne Le Ny como Yvonne
Audrey Fleurot como Magalie
Joséphine de Meaux como HRD racing company
Clotilde Mollet como Marcelle
Alba Gaïa Bellugi como Elisa
Cyril Mendy como Adama
Salimata Kamate como Fatou
Absa Diatou Toure como Mina
Grégoire Oestermann como Antoine
Dominique Daguier como Amigo de Philippe
François Caron como Amigo de Philippe
Christian Ameri como Albert
Thomas Solivérès como Bastien 
Dorothée Brière como Eléonore
Marie-Laure Descoureaux como Camareira
Émilie Caen como Dono de galeria

Diretor - Olivier Nakache, Éric Toledano
Escritores - Olivier Nakache, Philippe Pozzo di Borgo, Éric Toledano">>TopCast.txt


cd ..
cd ..
cd ..

mkdir top5
cd top5

mkdir RegressoAoFuturo

cd RegressoAoFuturo
mkdir Resumo

cd Resumo
echo "Marty McFly, um estudante de ensino médio de 17 anos, é acidentalmente enviado trinta anos no passado em um DeLorean viajante no tempo inventado por seu amigo próximo, o excêntrico cientista Doc Brown.">>Resumo.txt

cd ..
mkdir Classificação

cd Classificação
echo "Ganhou 1 Oscar e é o 36º melhor filme do mundo com uma pontuação de 8.5/10 segundo o IMDB.">>Classificação.txt


cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- Gene Siskel
Então, o que temos no meio de Regresso ao futuro, este filme aparentemente infantil cheio de carros barulhentos, efeitos especiais e tempestades com raios, é nada menos do que um devaneio adulto. E se as famílias pudessem ser persuadidas a ver esse filme juntas, isso poderia desencadear uma longa noite de compartilhamento entre pais e filhos.">>Review1.txt

echo "
Metascore - 100/100
- Orlando Sentinel
Essa brilhante engenhoca de filme pode se tornar o hit do verão. É uma máquina Rube Goldberg cinematográfica cujas peças se conectam de maneiras audaciosas e espirituosas">>Review2.txr

echo "
Metascore - 40/100
- Sheila Benson
É grande, caricatural e vazio, com uma premissa interessante que é subdesenvolvida e superproduzida.">>Review3.txt

echo "
Metascore - 90/100
- Variety
Apresentações da fervorosa Fox, do lunático Lloyd, da enganosamente apaixonada Lea Thompson e, em particular, do desajeitado e confiante Glover, que foge com a imagem, alegremente mantêm o navio navegando.">>Review4.txt

cd ..
mkdir TopCast

cd TopCast
echo "Michael J. Fox como Marty McFly
Christopher Lloyd como Dr. Emmett Brown
Lea Thompson como Lorraine Baines
Crispin Glover como George McFly
Thomas F. Wilson como Biff Tannen
Claudia Wells como Jennifer Parker
Marc McClure como Dave McFly
Wendie Jo Sperber como Linda McFly
George DiCenzo como Sam Baines
Frances Lee McCain como Stella Baines
James Tolkan como Mr. Strickland
J.J. Cohen como Careca
Casey Siemaszko como 3-D
Billy Zane como Match
Harry Waters Jr. como Marvin Berry
Donald Fullilove como Goldie Wilson
Harry Waters Jr. como Marvin Berry
Donald Fullilove como Goldie Wilson
Lisa Freeman como Babs
Cristen Kauffman como Betty 

Diretor - Robert Zemeckis
Escritores - Robert Zemeckis, Bob Gale">>TopCast.txt

cd ..
cd ..
cd ..
cd ..
cd ..
cd Thriller 
mkdir Top5Thriller 

cd Top5Thriller 
mkdir top1

cd top1
mkdir Aynabaji

cd Aynabaji
mkdir Resumo

cd Resumo
echo "Ayna é um ator e a prisão é seu palco. Ele desliza para os personagens dos poderosos condenados em troca de dinheiro e toma seu lugar na prisão. Essa estranha profissão nasce de uma sociedade que não lhe dá a chance de seguir sua paixão de atuar, mas o obriga a agir na vida real. Apaixonar-se pela rapariga da porta ao lado muda a equação de sua vida e ele decide encerrar a carreira com uma última apresentação. Mas este leva-o muito fundo na toca do coelho. A história se desenrola sobre como um azarão sobrevive em uma sociedade que é impiedosa e luta para sair das garras do jogo do crime do qual ele também faz parte.">>Resumo.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme tem uma pontuação de 9.1/10 no IMDB">>Classificação.txt

cd ..
mkdir reviews

cd reviews

echo "O IMDB não disponibiliza as criticas dos criticos deste filme, então vou postar algumas criticas dos users do IMDB">>Aviso.txt

echo "
-3/10 
A história e o conceito do filme são bons, mas não merecem ser avaliados tão bem no IMDB. Um filme mediano com bom desempenho.">> Review1.txt

echo "
-10/10
Esta é certamente uma obra-prima .. uma referência para a indústria do cinema .. Não sei depois disso quando teremos um filme excepcional como este. Estou muito esperando .. Ayanabaji a história do cinema Bangla ..">>Review2.txt

echo "
-9/10
Não é como os filmes bengali do costume. Excelente guião, atuação alucinante de Chanchal Chowdhury. Definitivamente, levou um filme de bengali a uma altura diferente.">>Review3.txt

echo "
-10/10
Que filme! Que história! Que atuação! Um dos melhores filmes de BangladeshI de todos os tempos. Tem que assitir.">>Review3.txt

echo "
-10/10
O único bengali que devo recomendar para assistir. É um filme de suspense incrível.">>Review4.txt


cd ..
mkdir TopCast

cd TopCast
echo "
Chanchal Chowdhury como Sharafat Karim Ayna
Masuma Rahman Nabila como Hridi
Partha Barua como Saber Hossain
Lutfur Rahman George como Mr. Kuddus
Gousul Alam Shaon como Aparência de Gousuluest
Brindabon Das como Labu Mia
Tahsin Arafat como Presença de convidado
Bijori Barkatullah como G
Amitabh Reza Chowdhury como Presença de convidado
Raihan Chowdhury como Raihan Chowdhury
Mohammed Faysal como Policia
Samiul Hafiz como Samiul Hafiz
Md Mahedi Hasan como Ator
Shovon Jaman como Departamento de Maquilhagem
Shovon Jaman como Presença de convidado
Shohel Mondol como Mastan
Md Abdullah Al Noman
Heera Chowdhury

Diretor - Amitabh Reza Chowdhury
Escritores - Syed Gaosul Alam Shaon, Anam Biswas, Adnan Adib Khan">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top2

cd top2
mkdir theDarkKnight  

cd theDarkKnight 
mkdir Resumo 

cd Resumo
echo "Quando a ameaça conhecida como Joker causa estragos e caos no povo de Gotham, Batman deve aceitar um dos maiores testes psicológicos e físicos de sua capacidade de lutar contra a injustiça." >> Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Metascore - 100/100
- Justin Chang
Cativante ... Um épico policial ambicioso e encorpado de sentido gratificante e complexidade moral, este é um entretenimento pop muito inteligente que satisfaz todas as expectativas criadas por seu predecessor de sucesso e mais alguns.." >> Review1.txt

echo "-Metascore - 100/100
- Kirk HonneyCutt
Bale novamente personifica de forma brilhante todos os traumas profundos e dúvidas do alter ego do Batman, Bruce Wayne. Um pouco de Hamlet está neste Batman" >> Review2.txt

echo "-Metascore - 50/100
- David Edelstein
A novidade passa e a falta de imaginação, visual ou não, vira uma chatice. O Cavaleiro das Trevas é barulhento, confuso e sádico." >> Review3.txt

echo "-Metascore - 50/100
- David Denby
O Cavaleiro das Trevas dificilmente é rotineiro, ele tem um sadismo contagiante cena após cena, que o mantém no limite e o manda para a rua com transtorno de stress pós-filme." >> Review4.txt

cd .. 
mkdir Classificação

cd Classificação
echo "Ganhou 2 Oscars e é o 4º melhor filme do mundo com a classificação de 9.0/10 segundo o IMDB." >> Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Christian Bale como Bruce Wayne
Heath Ledger como Joker
Aaron Eckhart como Harvey Dent
Michael Caine como Alfred
Maggie Gyllenhaal como Rachel 
Gary Oldman como Gordon 
Morgan Freeman como Lucian Fox
Monique Gabriela Curnen como Ramirez
Ron Dean como Wuertz
Cillian Murphy como Scarecrow
Chin Han como Lau
Nestor Carbonell como Mayor
Eric Roberts como Maroni 
Ritchie Coster como Chechen
Anthony Michael Hall como Engel
Keith Szarabajka como Stephens
Colin McFarlane como Loeb
Joshua Harto como Reese

Diretor - Christopher Nolan
Escritores - Jonathan Nolan 	
             Christopher Nolan 	
             David S. Goyer 
             Bob Kane " >> TopCast.txt

cd ..
cd ..
cd ..
mkdir top3
cd top3
mkdir inception

cd inception
mkdir resumo 

cd resumo
echo "Um ladrão que rouba segredos corporativos por meio do uso de tecnologia de compartilhamento de sonhos recebe a tarefa inversa de plantar uma ideia na mente de um C.E.O., mas seu passado trágico pode condenar o projeto e a sua equipa ao desastre.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Metascore - 100/100
- Justin Chang
Se Inception é um quebra-cabeças metafísico, também é metafórico: é difícil não fazer conexões entre a trama dos sonhos de Cobb e a produção de filmes de Nolan - uma atividade dedicada a construir um simulacro da realidade, com o objetivo de nos seduzir, confundir as nossas cabeças e ir embora, uma impressão duradoura. Missão cumprida." >>Review1.txt

echo "Metascore - 75/100
- Roger Moore
O início é um passeio elegante e portentoso, embora eu não tenha certeza se Nolan está mais perto de visualizar o negócio real (dos sonhos) do que Hitchcock estava.">>Review2.txt

echo "Metascore - 40/100
- David Edelstein
O início consegue ser desajeitado e confuso em quatro níveis distintos de realidade.">>Review3.txt

echo "Metascore - 90/100
- Kirk Honeycutt
Em um verão de remakes, reboots e sequências, chega o Inception, facilmente a ideia de filme mais original em anos.">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Ganhou 4 Oscars e é o 13º melhor filme do mundo, classificado com uma pontuação de 8.8/10 segundo o IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Leonardo DiCaprio como Cobb
Joseph Gordon-Levitt como Arthur
Elliot Page como Ariadne
Ken Watanabe como Saito
Tom Hardy como Eames
Dileep Rao como Yusuf
Cillian Murphy como Robert Fischer
Tom Berenger como Browning
Marion Cotillard como Mal
Pete Postlethwaite como Maurice Fischer
Michael Caine como Miles
Lukas Haas como Nash
Tai-Li Lee como Tadashi
Claire Geare como Phillipa(3 anos)
Magnus Nolan como James(20 meses)
Taylor Geare como Phillipa (5 anos)
Johnathan Geare como James (3 anos)
Tohoru Masamune como Segurança Japonês

Diretor - Christopher Nolan
Escritor- Christopher Nolan">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top4

cd top4
mkdir parasitas

cd parasitas
mkdir Resumo

cd Resumo
echo "A ganância e a discriminação de classe ameaçam a relação simbiótica recém-formada entre a rica família Park e o destituído clã Kim.">>Resumo.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme é o 30º melhor filme do mundo com uma classificação de 8.6/10 no IDMB.
Ganhou 4 oscars.">>Classificação.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- John Bleasdale
Uma dissecação magistral da desigualdade social e da psicologia do dinheiro.">>review1.txt

echo "
Metascore - 80/100
- Peter Bradshaw
Um drama de suspense satírico e luxuosamente assistível.">>review2.txt

echo "
Metascore - 80/100
- Robbie Collin
Uma sátira social rouca e manchada de sangue.">>review3.txt

echo "
Metascore - 75/100
- Bradley Warren
Uma sátira demente e frequentemente barulhenta com consciência de classe, Parasitas fica um pouco aquém do melhor trabalho de Bong.">>review4.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Kang-ho Song como Ki Taek
Sun-kyun Lee como Dong Ik
Yeo-jeong Cho como Yeon Kyo
Woo-sik Choi como Ki Woo
So-dam Park como Ki Jung
Lee Jeong-eun como Moon Gwang
Jang Hye-jin como Chung Sook
Park Myeong-hoon como Geun Se
Ji-so Jung como Da Hye
Hyun-jun Jung como Da Song
Keun-rok Park como Condutor Yoon
Yi-Seo Jung como Chefe do sitio da pizza
Jae-myeong Jo como irmão do chefe do sitio da pizza
Ik-han Jung como vizinho
Kyu-baek Kim como Pessoa Bebeda 1
Hwang In Kyung como Internet Cafe Staff
Ahn Seong-Bong como Lutador de Rua 1
Kim Jin Hyung como Lutador de Rua 2

Diretor - Bong Joon Ho
Escritores - Bong Joon Ho, Jin-won Han">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top5

cd top5
mkdir Drishyam2 

cd Drishyam2
mkdir resumo 

cd resumo 
echo "Uma história emocionante de uma investigação e de uma família ameaçada por ela. Georgekutty conseguirá proteger sua família desta vez?">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Infelizmente o Imdb não disponibiliza as criticas dos criticos neste filme, vou então postar algumas criticas dos users do IDMB.">>Aviso.txt

echo 
"- 5/10
O melhor é passar a primeira metade e passar diretamente para a segunda e é o clímax do filme onde o filme fica um pouco interessante a partir daí.">>Review1.txt

echo 
"-8/10
É um filme maravilhoso com uma história tortuosa e misteriosa.">>Review2.txt

echo
"- 7/10
Alguns momentos forçados e desnecessários, mas há uma atuação sólida de Mohanlal e uma ótima direção de Jeethu Joseph.">>Review3.txt

echo 
"-7/10
Drishyam 2 foi um thriller muito bom e agradável que tem um grande clímax. Mohanlal era fabuloso. Meu único problema é a primeira metade lenta que poderia ter sido aparada.">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme tem 8.6 de pontuação no IMDB.">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Mohanlal como Georgekutty
Meena como Rani
Ansiba como Anju
Esther Anil como Anu
Siddique como Prabhakar
Asha Sharath como Geetha Prabhakar
Saikumar como Vinayachandran
Murali Gopy como IG Thomas Bastin
Ganesh Kumar como CI Philip Mathew
Anjali Nair como Saritha
Sumesh Chandran como Sabu
Antony Perumbavoor como SI Antony Joseph
Dinesh Prabhakar como Rajan
Ajith Koothattukulam como Jose
Narayanan Nair como Sulaiman
Santhi Priya como Adv. Renuka
Aneesh Menon como Rajesh
Boban Samuel como Dy. SP Reghuram

Diretor - Jeethu Joseph
Escritor - Jeethu Joseph">>TopCast.txt

cd ..
cd ..
cd ..
cd ..
cd ..
cd Romance
mkdir Top5Romance

cd Top5Romance
mkdir top1

cd top1
mkdir ForrestGump

cd ForrestGump
mkdir resumo

cd resumo 
echo "As presidências de Kennedy e Johnson, a Guerra do Vietnam, o escândalo de Watergate e outros eventos históricos se desenrolam da perspectiva de um homem do Alabama com um QI de 75, cujo único desejo é se reunir com sua namorada de infância.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo 
"Metascore - 100/100
- James Berardinelli
Apaixonado e mágico, Forrest Gump é um tônico para os cansados de espírito.">>review1.txt

echo 
"Metascore - 90/100
- Todd McCarthy
Gerencia a difícil façanha de ser um conto íntimo, até mesmo delicado, interpretado com um toque leve e atraente em um cenário épico.">>review2.txt

echo 
"Metascore - 90/100
- Jonathan Rosenbaum
Os resultados são habilidosos, altamente comoventes e, em última análise, mais do que um pouco perniciosos.">>review3.txt

echo 
"Metascore - 70/100
- Kenneth Turan
É mais bem-sucedido quando está fora do centro, um estado de graça que não tem coragem de manter">>review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme ganhou 6 oscars, é o 13º melhor filme do mundo e tem uma pontuação de 8.8/10 segundo o IMDB.">>Classificação.txt

cd ..
mkdir TopCast 

cd TopCast
echo "
Tom Hanks como Forrest Gump
Robin Wright como Jenny Curran
Gary Sinise como Tenente Dan Taylor
Sally Field como Mrs. Gump
Rebecca Williams como Enfermeira do Park Bench
Michael Conner Humphreys como Young Forrest
Harold G. Herthum como Doutor
George Kelly como Barbeiro
Bob Penny como Crony
John Randall como Crony
Sam Anderson como Principal
Margo Moorer como Louise
Ione M. Telech como Elderly Woman
Christine Seabrook como Filha da mulher idosa
John Worsham como Cavalheiro do Sul
Peter Dobson como Elvis Presley novo
Siobhan Fallon Hogan como autocarro da escola
Alexander Zemeckis como homem do autocarro da escola

Diretor - Robert Zemeckis
Escritores - Winston Groom, Eric Roth">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top2

cd top2
mkdir AVidaÉBela

cd AVidaÉBela
mkdir Resumo 

cd Resumo 
echo "Quando um empregado judeu de mente aberta e seu filho se tornam vítimas do Holocausto, ele usa uma mistura perfeita de vontade, humor e imaginação para proteger seu filho dos perigos ao redor do acampamento.">>Resumo.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- Elizabeth Weitzman
Benigni, com grande ajuda do jovem Cantarini, elaborou uma obra de tal complexidade que podes descobrir que o teu cérebro e o teu coração estão simplesmente sobrecarregados. O que, claro, é o objetivo raramente alcançado de toda arte.">>Review1.txt

echo "
Metascore - 90/100
- Christopher Brandon
Sua mensagem única sobre rir diante do mal revela claramente que a vida é bela.">>Review2.txt

echo "Metascore -20/100
-Jonathan Rosenbaum
A indiferença dos procedimentos e do comportamento pastelão do herói para as realidades quotidianas dos campos beira o nauseante.">>Review3.txt

echo "
Metascore - 0/100
-
O filme de Benigni me deu vontade de vomitar.">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme é o 23º melhor filme do mundo com uma pontuação de 8.6/10 segundo o IMDB, para além disso ganhou 3 Oscars">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Roberto Benigni como Guido
Nicoletta Braschi como Dora
Giorgio Cantarini como Giosué
Giustino Durano como Zio
Sergio Bini Bustric como Ferruccio
Marisa Paredes como Mãe de Dora
Horst Buchholz como Dottor Lessing
Lidia Alfonsi como Guicciardini
Giuliana Lojodice como Diretor Didático
Amerigo Fontani como Rodolfo
Pietro De Silva como Bartolomeo
Francesco Guzzo como Vittorino
Raffaella Lebboroni como Elena
Claudio Alfonsi como Amico Rodolfo
Gil Baroni como Prefeito
Massimo Bianchi como Homem chave
Jürgen Bohn como Atendente de festa alemão
Verena Buratti como Ausiliaria tedesca  

Diretor - Roberto Benigni
Escritores - Vincenzo Cerami, Roberto Benigni">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top3

cd top3
mkdir 96

cd 96
mkdir resumo

cd resumo
echo "Dois namorados do colégio se encontram em uma reunião após 22 anos e relembram seu passado.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Infelizmente o IDMB não disponibiliza as criticas dos criticos neste filme, vou então postar algumas criticas dos users do IMDB">>Aviso.txt

echo " -10/10
Eu vi tantos filmes românticos, mas este provou ser diferente e único - mostrando como algumas histórias de amor podem ser verdadeiras, mas não destinadas a ser.">>Review1.txt

echo " -10/10
Vijay Sethupathi no seu melhor, um bom retorno para Trisha tinha semelhanças com antes do pôr do sol ou depois do pôr do sol. Não me lembro o nome, mas isso é retratado de uma maneira muito boa, os jovens selfs de Vijay e Trisha eram igualmente bons em atuação">>Review2.txt

echo " -10/10
Este filme literalmente faz-te chorar, nunca vais esquecer este filme, que filme para todos, peço que vejam.">>Review3.txt

echo "Acabei de ver este filme, A história reflete ... Desculpem, era como se minha vida brilhasse diante dos meus olhos. Alguém, quero dizer, qualquer um vai-se sentir tão triste que nem consegue mover um dedo, rapazes, por favor, vejam. Minhas palavras não fazem justiça ao filme, é uma experiência envolvente">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Este filme tem uma classificação de 8.5/10 no IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Vijay Sethupathi como Ramachandran 'Ram' Krishnamoorthy
Adithya Bhaskar como Young Ramachandran 'Ram' Krishnamoorthy
Trisha Krishnan como Janaki 'Janu' Devi Sugumar
Gouri Kishan como Young Janaki 'Janu' Devi Sugumar
Devadarshini Chetan como Subhashini 'Subha'
Niyathi Kadambi como Young Subhashini 'Subha'
Janakaraj como 'Kaval Deivam', O segurança da escola
Bagavathi Perumal como Murali
Surya como Young Murali
Rajkumar como Surya
Murugadass como Sathiesh
Gowthamraj como Young Sathish
Varsha Bollamma como Prabha
Kavithalaya Krishnan como Kalai Selvan, barbeiro
Shyam Prasad como Rececionista do hotel

Diretor- C. Prem Kumar
Escritor- C. Prem Kumar">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top4

cd top4
mkdir CinemaParaíso

cd CinemaParaíso
mkdir resumo

cd resumo
echo "Um cineasta relembra sua infância ao se apaixonar pelas imagens do cinema de sua aldeia natal e faz amizade com o projecionista do cinema.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- Jay Scott
O Cinema Paraíso converte-te ao credo de que a arte pode realmente ser sagrada.">>review1.txt

echo "
Metascore - 88/100
- Roger Ebert
Qualquer pessoa que adore filmes provavelmente vai adorar Cinema Paraíso.">>review2.txt

echo "
Metascore - 80/100
- Desson Thomson
Quase tudo que amou (ou odiou) nos filmes italianos pode ser encontrado.">>review3.txt

echo "
Metascore - 50/100
- TV Guide Magazine
Eles não fazem filmes como antes, e essa coprodução ítalo-francesa vencedora do Oscar passa quase três horas provando isso.">>review4.txt

cd ..
mkdir classificação

cd classificação
echo "Este filme ganhou 1 Oscar, é o 52º melhor filme do mundo e tem uma pontuação de 8.5 segundo o IMDB">>classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Philippe Noiret como Alfredo
Enzo Cannavale como Spaccafico
Antonella Attili como Maria Di Vita - Younger
Isa Danieli como Anna
Leo Gullotta como Usher
Marco Leonardi como Salvatore 'Totò' Di Vita - Adolescente
Pupella Maggio como Maria Di Vita - Older
Agnese Nano como Elena Mendola
Leopoldo Trieste como Father Adelfio
Salvatore Cascio como Salvatore 'Totò' Di Vita - criança
Tano Cimarosa como Blacksmith
Nicola Di Pinto como Village Idiot
Roberta Lena como Lia
Nino Terzo como Peppino's Father
Jacques Perrin como Salvatore 'Totò' Di Vita - Adulto
Nellina Laganà
Turi Giuffrida
Mariella Lo Giudice

Diretor - Giuseppe Tornatore
Escritores - Giuseppe Tornatore, Vanna Paoli">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top5

cd top5
mkdir casablanca

cd casablanca
mkdir resumo

cd resumo 
echo "Um cínico proprietário de um café americano expatriado luta para decidir se deve ou não ajudar sua ex-amante e seu marido fugitivo a escapar dos nazistas no Marrocos francês.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- Jeremiah Kipp
O filme tem uma magia peculiar e por causa do seu ritmo, a riqueza do seu senso de detalhe muitas vezes passa despercebida.">>review1.txt

echo "
Metascore - 100/100
- Peter Bradshaw
Setenta anos depois, esse grande noir romântico ainda é extremamente poderoso: um filme feito em uma época em que não estava claro que os nazistas iriam perder.">>review2.txt

echo "
Metascore - 100/100
- David Denby
O filme mais familiar do mundo ainda está fresco; tem tantos cantinhos agitados para se aninhar ... Casablanca é o filme mais sociável e mais companheiro de todos os tempos. A vida como uma festa sem fim.">>review3.txt

echo "
Metascore - 100/100
- The Hollywood Reporter
Aqui está um drama que o levanta da cadeira.">>review4.txt

cd ..
mkdir Classificação 

cd Classificação
echo "Este filme ganhou 3 Oscars, é o 49º melhor filme do mundo e tem uma pontuação de 8.5 no IMDB">>classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Humphrey Bogart como Rick Blaine
Ingrid Bergman como Ilsa Lund
Paul Henreid como Victor Laszlo
Claude Rains como Captain Louis Renault
Conrad Veidt como Major Heinrich Strasser
Sydney Greenstreet como Signor Ferrari
Peter Lorre como Ugarte
S.Z. Sakall como Carl
Madeleine Lebeau como Yvonne
Dooley Wilson como Sam
Joy Page como Annina Brandel
John Qualen como Berger
Leonid Kinskey como Sascha
Curt Bois como Pickpocket
Abdullah Abbas como Arab
Enrique Acosta como Guest at Rick's
Ed Agresti como Bar Patron
Arnet Amos como French Soldier

Diretor - Michael Curtiz
Escritores - Julius J. Epstein, Philip G. Epstein, Howard Koch">>TopCast.txt

cd ..
cd ..
cd ..
cd ..
cd ..
cd FicçãoCientifica
mkdir top5FicçãoCientifica

cd top5FicçãoCientifica
mkdir top1

cd top1
mkdir HomemAranhaSemVoltaACasa

cd HomemAranhaSemVoltaACasa
mkdir resumo

cd resumo
echo "Com a identidade do Homem-Aranha agora revelada, Peter pede ajuda ao Doutor Estranho. Quando um feitiço dá errado, inimigos perigosos de outros mundos começam a aparecer, forçando Peter a descobrir o que realmente significa ser o Homem-Aranha.">>resumo.txt

cd ..
mkdir reviews 

cd reviews
echo "
Metascore - 80/100
- Amelia Emberwing
Homem-Aranha: No Way Home salta de hilário para machucado com facilidade como a entrada mais sombria e divertida do Homem-Aranha MCU até hoje.">>review1.txt

echo "
Metascore - 70/100
- Mae Abdulbaki
No Way Home é a história mais intrigante e divertida do Homem-Aranha até hoje. Embora o multiverso pareça grande, o filme é cuidadoso em seu foco na jornada de Peter.">>review2.txt

echo "
Metascore - 70/100
- Alonso Duralde
O feito mais super-heróico em exibição pode ser a capacidade do filme de manter as emoções e os relacionamentos do tamanho humano à frente e no centro, mesmo quando o próprio tecido do tempo e do espaço se enreda em nós.">>review3.txt

echo "
Metascore - 70/100
- John DeFore
Esta é a menos divertida das fotos de Watts / Holland por uma ampla margem (intencionalmente, até certo ponto), mas é muito melhor do que o último threequel do Spidey, o superestufado e mal-concebido Homem-Aranha 3 de Sam Raimi.">>review4.txt

cd ..
mkdir classificação

cd classificação
echo "Este filme é o 11º melhor filme do mundo atualmente e tem uma pontuação de 8.9 no IMDB">>classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Tom Holland como Peter Parker
Zendaya como MJ
Benedict Cumberbatch como Doctor Strange
Jacob Batalon como Ned Leeds
Jon Favreau como Happy Hogan
Jamie Foxx como Max Dillo
Willem Dafoe como Norman Osborn
Alfred Molina como Dr. Otto Octavius
Benedict Wong como Wong
Tony Revolori como Flash Thompson
Marisa Tomei como May Parker
Andrew Garfield como Peter Parker
Tobey Maguire como Peter Parker
Angourie Rice como Betty Brant
Arian Moayed como Agent Cleary
Paula Newsome como MIT Assistant Vice Chancellor
Hannibal Buress como Coach Wilson
Martin Starr como Mr. Harrington

Diretor - Jon Watts
Escritor - Chris McKenna, Erik Sommers, Stan Lee">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top2

cd top2 
mkdir Inception

cd Inception
mkdir resumo 

cd resumo
echo "Um ladrão que rouba segredos corporativos por meio do uso de tecnologia de compartilhamento de sonhos recebe a tarefa inversa de plantar uma ideia na mente de um C.E.O., mas seu passado trágico pode condenar o projeto e a sua equipa ao desastre.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "Metascore - 100/100
- Justin Chang
Se Inception é um quebra-cabeças metafísico, também é metafórico: é difícil não fazer conexões entre a trama dos sonhos de Cobb e a produção de filmes de Nolan - uma atividade dedicada a construir um simulacro da realidade, com o objetivo de nos seduzir, confundir as nossas cabeças e ir embora, uma impressão duradoura. Missão cumprida." >>Review1.txt

echo "Metascore - 75/100
- Roger Moore
O início é um passeio elegante e portentoso, embora eu não tenha certeza se Nolan está mais perto de visualizar o negócio real (dos sonhos) do que Hitchcock estava.">>Review2.txt

echo "Metascore - 40/100
- David Edelstein
O início consegue ser desajeitado e confuso em quatro níveis distintos de realidade.">>Review3.txt

echo "Metascore - 90/100
- Kirk Honeycutt
Em um verão de remakes, reboots e sequências, chega o Inception, facilmente a ideia de filme mais original em anos.">>Review4.txt

cd ..
mkdir Classificação

cd Classificação
echo "Ganhou 4 Oscars e é o 13º melhor filme do mundo, classificado com uma pontuação de 8.8/10 segundo o IMDB">>Classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Leonardo DiCaprio como Cobb
Joseph Gordon-Levitt como Arthur
Elliot Page como Ariadne
Ken Watanabe como Saito
Tom Hardy como Eames
Dileep Rao como Yusuf
Cillian Murphy como Robert Fischer
Tom Berenger como Browning
Marion Cotillard como Mal
Pete Postlethwaite como Maurice Fischer
Michael Caine como Miles
Lukas Haas como Nash
Tai-Li Lee como Tadashi
Claire Geare como Phillipa(3 anos)
Magnus Nolan como James(20 meses)
Taylor Geare como Phillipa (5 anos)
Johnathan Geare como James (3 anos)
Tohoru Masamune como Segurança Japonês

Diretor - Christopher Nolan
Escritor- Christopher Nolan">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top3

cd top3
mkdir Matrix

cd Matrix
mkdir resumo

cd resumo
echo "Quando um belo estranho leva o hacker de computador Neo a um submundo proibitivo, ele descobre a verdade chocante - a vida que ele conhece é o engano elaborado de uma inteligência cibernética do mal.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 91/100
- Shawn Levy
Matrix atira-te de volta para a  cadeira, abre-te os olhos e deixa o teu queixo caído de espanto.">>review1.txt

echo "
Metascore - 90/100
- Keith Phipps
Os Wachowski fazem isso de forma tão divertida, mantendo o enredo potencialmente confuso de Matrix inteligível, inteligente e cheio de suspense, que não importa.">>review2.txt

echo "
Metascore - 78/100
- Marc Savlov
Não se limita a elevar o nível dos filmes de ficção científica e de ação, ele arranca esse otário e o envia para o sol em uma espiral.">>review3.txt

echo "
Metascore - 50/100
- Jonathan Rosenbaum
Não há muito humor para mantê-lo em tamanho natural e, na reta final, ele se tornou inchado, mecânico e cansativo.">>review4.txt

cd ..
mkdir classificação

cd classificação
echo "Este filme ganhou 4 Oscars, é o 17º melhor filme do mundo e tem uma pontuação de 8.7 no IMDB">>classificação.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Keanu Reeves como Neo
Laurence Fishburne como Morpheus
Carrie-Anne Moss como Trinity
Hugo Weaving como Agent Smith
Gloria Foster como Oracle
Joe Pantoliano como Cypher
Marcus Chong como Tank
Julian Arahanga como Apoc
Matt Doran como Mouse
Belinda McClory como Switch
Anthony Ray Parker como Dozer
Paul Goddard como Agent Brown
Robert Taylor como Agent Jones
David Aston como Rhineheart
Marc Aden Gray como Choi
Ada Nicodemou como Dujour 
Deni Gordon como Priestess
Rowan Witt como Spoon Boy

Diretores - Lana Wachowski, Lilly Wachowski
Escritores - Lana Wachowski, Lilly Wachowski">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top4

cd top4
mkdir StarWarsEpisódioVOImpérioContraAtaca

cd StarWarsEpisódioVOImpérioContraAtaca
mkdir resumo

cd resumo
echo "Depois de os rebeldes serem brutalmente dominados pelo Império no planeta de gelo Hoth, Luke Skywalker começa o treno Jedi com Yoda, enquanto seus amigos são perseguidos pela galáxia por Darth Vader e o caçador de recompensas Boba Fett.">>resumo.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- David Sterritt
Virtuosismo técnico e engenhosidade de entretenimento.">>review1.txt

echo "
Metascore - 90/100
- Chris Gore
Foi incrível ver o que é indiscutivelmente o melhor dos filmes de Guerra nas Estrelas, na tela grande novamente. No entanto, não acredito que qualquer uma das pequenas mudanças tenha tornado o filme melhor.">>review2.txt

echo "
Metascore - 100/100
- Gene Siskel
Equilibra derramamento de sangue com encanto, espetáculo com alegria infantil. É um filme quase perfeito desse tipo.">>review3.txt

echo "
Metascore - 40/100
- Dave Kehr
Principalmente, está marcando o passo: os personagens definitivamente ficam em segundo plano em relação aos efeitos especiais, e grande parte da ação parece gratuita, levando a lugar nenhum.">>review4.txt

cd ..
mkdir classificação

cd classificação
echo "Este filme ganhou 2 oscars, é o 16º melhor filme do mundo e tem uma pontuação de 8.7 no IMDB">>classificação.txt

cd ..
mkdir TopCast 

cd TopCast
echo "
Mark Hamill como Luke Skywalker
Harrison Ford como Han Solo
Carrie Fisher como Princess Leia
Billy Dee Williams como Lando Calrissian
Anthony Daniels como C-3PO
David Prowse como Darth Vader
Peter Mayhew como Chewbacca
Kenny Baker como R2-D2
Frank Oz como Yoda(voz)
Alec Guinness como Ben (Obi-Wan) Kenobi
Jeremy Bulloch como Boba Fett
John Hollis como Lobot, Lando's Aide
Jack Purvis como Chief Ugnaught
Des Webb como Snow Creature
Clive Revill como Emperor(voz)
Kenneth Colley como Admiral Piett
Julian Glover como General Veers
Michael Sheard como Admiral Ozzel

Diretor - Irvin Kershner
Escritores - Leigh Brackett, Lawrence Kasdan, George Lucas">>TopCast.txt

cd ..
cd ..
cd ..
mkdir top5

cd top5
mkdir Interstellar 

cd Interstellar
mkdir resumo

cd resumo
echo "Uma equipa de exploradores viaja por um buraco de minhoca no espaço na tentativa de garantir a sobrevivência da humanidade.">>resumo.txt

cd ..
mkdir TopCast

cd TopCast
echo "
Matthew McConaughey como Cooper
Anne Hathaway como Brand
Jessica Chastain como Murph
Mackenzie Foy como Murph (10 anos)
Ellen Burstyn como Murph (mais velho)
John Lithgow como Donald
Timothée Chalamet como Tom (15 anos)
David Oyelowo como School Principal
Collette Wolfe como Ms. Hanley
Francis X. McCarthy como Boots(como Francis Xavier McCarthy)
Bill Irwin como TARS(voz)
Andrew Borba como Smith
Wes Bentley como Doyle
William Devane como Williams
Michael Caine como Professor Brand
David Gyasi como Romilly
Josh Stewart como CASE(voz)
Casey Affleck como Tom

Diretor - Christopher Nolan
Escritores - Jonathan Nolan, Christopher Nolan">>TopCast.txt

cd ..
mkdir reviews

cd reviews
echo "
Metascore - 100/100
- Scott Foundas
Um slalom emocionante através dos buracos de minhoca da vasta imaginação de Christopher Nolan que é ao mesmo tempo um sonho febril dos geeks da ciência e uma consideração formidável sobre o que nos torna humanos.">>review1.txt

echo "
Metascore - 100
- Dave Calhoun
É uma bela e ousada história de aventura cósmica com um toque de surreal e onírico, e ainda assim, sempre parece fundamentada em sua própria realidade mortalmente séria.">>review2.txt

echo "
Metascore - 100/100
- Robiie Collin
Interstellar é o melhor e mais descaradamente ambicioso filme de Nolan até hoje.">>review3.txt

echo "
Metascore - 80/100
- Todd McCarthy
Este épico grandiosamente concebido e executado tenta dar peso igual às emoções humanas íntimas e especulações sobre o cosmos, com resultados mistos, mas nunca é menos do que cativante, e às vezes mais do que isso.">>review4.txt

cd ..
mkdir classificação

cd classificação
echo "Este filme ganhou um oscar, é o 28º melhor filme do mundo e tem uma pontuação de 8.6/10 no IMDB">>classificação.txt
 



















