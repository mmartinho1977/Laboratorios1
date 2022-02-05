#!/bin/bash

clear
cd
cd Desktop/


dir="/home/jmorais/Desktop/Videoteca" #Caminho da pasta Videoteca.

if [ -d $dir ] #Verifica se a pasta Videoteca existe.
then

	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2021-12-15/Minamata/
	
	#O comando echo introduz texto numa pasta que serve de Output atraves do comando echo, o -e serve para se poder usar o /n para mudar de linha na inserção de texto

	echo -e "Nova York, 1971. Após seus dias comemorados como um dos fotojornalistas mais reverenciados da \nSegunda Guerra Mundial, W. Eugene Smith (Johnny Depp) tornou-se um recluso, desconectado da \nsociedade e de sua carreira. Mas uma comissão secreta do editor da revista Life, Robert Hayes (Bill Nighy)\n, o envia para a cidade costeira japonesa de Minamata, que foi devastada por envenenamento por mercúrio; \no resultado de décadas de negligência industrial grosseira por parte da Chisso Corporation do país. Lá, \nSmith mergulha na comunidade, documentando seus esforços para viver com a doença de Minamata e sua \ncampanha apaixonada para obter o reconhecimento da Chisso e do governo japonês. Armado apenas com \nsua câmera confiável, as imagens de Smith da aldeia tóxica dão ao desastre uma dimensão humana de \npartir o coração, e sua missão inicial se transforma em uma experiência de mudança de vida." > Resumo.txt # > Resumo.txt serve para conseguir-mos passar a informação contida no comando echo para o ficheiro txt
	
	echo -e "Diretor - Andrew Levitas ;\nEscritores - David Kessler, Stephen Deuters e Andrew Levitas;\nEstrelas - Akiko Iwase, Kogarashi Wakasugi e Johnny Depp;\n\nRating - 7,6;" > Info.txt


	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2021-12-17/"Spider-Man: No Way Home"/

	echo -e "Com a identidade do Homem-Aranha agora revelada, Peter pede ajuda ao Doutor Strange. Quando um \nfeitiço dá errado, inimigos perigosos de outros mundos começam a aparecer, forçando Peter a descobrir o \nque realmente significa ser o Homem-Aranha." > Resumo.txt

	echo -e "Diretor - Jon Watts ;\nEscritores - Chris McKenna, Erik Sommers, Stan Lee;\nEstrelas - Tom Holland, Benedict Cumberbatch e Willem Dafoe;\n\nRating - 9,2;" > Info.txt


	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2021-12-22/"The Matrix Resurrections"

	echo -e "Retorne a um mundo de duas realidades: uma, a vida cotidiana; o outro, o que está por trás disso. Para \ndescobrir se sua realidade é uma construção, para se conhecer de verdade, o Sr. Anderson terá que optar \npor seguir o coelho branco mais uma vez." > Resumo.txt

	echo -e "Diretor - Lana Wachowski ;\nEscritores - Lana Wachowski, David Mitchell, Aleksandar Hemon;\nEstrelas - Keanu Reeves, Yahya Abdul-Mateen II e Neil Patrick Harris;\nGénero - Ação e Ficção Cientifica \nRating - Por Avaliar;" > Info.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2022-01-7/"The 355"
	
	echo -e "Quando uma arma ultrassecreta cai nas mãos de mercenários, o agente curinga da CIA Mason \nBrown precisará unir forças com a malvada agente alemã Marie, ex-aliada do MI6 e especialista em \ncomputação de ponta Khadijah, e a habilidosa psicóloga colombiana Graciela em um missão letal e \nalucinante de recuperá-lo, ao mesmo tempo em que fica um passo à frente de uma mulher misteriosa, \nLin Mi Sheng, que acompanha todos os seus movimentos. Enquanto a ação se espalha pelo mundo, dos cafés \nde Paris aos mercados do Marrocos e à riqueza e glamour de Xangai, o quarteto de mulheres forjará \numa lealdade tênue que poderá proteger o mundo - ou matá-las." > Resumo.txt

	echo -e "Diretor - Simon Kinberg ;\nEscritores - Theresa Rebeck, Simon Kinberg, Bek Smith;\nEstrelas - Jessica Chastain, Diane Kruger e Sebastian stan;\nGénero - Açao, Crime, Filme de ação \nRating - Por Avaliar;" > Info.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2022-01-14/"Scream"
	
	echo -e "Vinte e cinco anos após a série original de assassinatos em Woodsboro, um novo assassino emerge, e \nSidney Prescott deve retornar para descobrir a verdade." > Resumo.txt

	echo -e "Diretor - Matt Bettinelli-Olpin, Tyler Gillett ;\nEscritores - Theresa Rebeck, Simon Kinberg, Bek Smith;\nEstrelas - Neve Campbell, Courteney Cox e David Arquette;\nGénero - Horror, Mistério, Filme de ação \nRating - Por Avaliar;" > Info.txt
	
	echo -e "Diretor - Matt Bettinelli-Olpin Matt Bettinelli-Olpin, Tyler Gillett Tyler Gillett;\nEscritores - Theresa Rebeck, Simon Kinberg, Bek Smith;\nEstrelas - Neve Campbell, Courteney Cox e David Arquette;\nGénero - Horror, Mistério, Filme de ação \nRating - Por Avaliar;" > Info2.txt
	
	echo -e "Diretor - Matt Bettinelli-Olpin Matt Bettinelli-Olpin, Tyler Gillett Tyler Gillett;\nEscritores - Theresa Rebeck, Simon Kinberg, Bek Smith;\nEstrelas - Neve Campbell, Courteney Cox e David Arquette;\nGénero - Horror, Mistério, Filme de ação \nRating - Por Avaliar;" > Info3.txt
	echo "Texto Inserido"
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"Os Condenados de Shawshank"
	
	echo -e "Relata as experiências de um ex-banqueiro bem-sucedido como prisioneiro na penosa prisão de \nShawshank, após ser considerado culpado de um crime que não cometeu. O filme retrata a maneira única \ndo homem de lidar com sua nova vida torturante; ao longo do caminho, ele faz amizade com vários outros \nprisioneiros, mais notavelmente um sábio prisioneiro de longa data chamado Red." > Resumo.txt # > Resumo.txt serve para conseguir-mos passar a informação contida no comando echo para o ficheiro txt
	
	echo -e "Diretor - Frank Darabont ;\nEscritores - Stephen King e Frank Darabont;\nEstrelas- Tim Robbins, Morgan Freeman e Bob Gunton;\nGénero - Drama \nRating - 9,2;" > Info.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"O Padrinho"
	
	echo -e "O padrinho Vito Corleone é o chefe da família mafiosa Corleone em Nova York. Ele está no evento do \ncasamento de sua filha. Michael, o filho mais novo de Vito e um fuzileiro naval condecorado da Segunda \nGuerra Mundial, também está presente no casamento. Michael parece desinteressado em fazer parte dos \nnegócios da família. Vito é um homem poderoso e gentil com todos aqueles que o respeitam, mas é \nimplacável com aqueles que não o respeitam. Mas quando um rival poderoso e traiçoeiro quer vender \ndrogas e precisa da influência de Don Corleone para isso, Vito se recusa a fazê-lo. O que se segue é um \nchoque entre os velhos valores de Vito e as novas maneiras que podem levar Michael a fazer o que ele \nestava mais relutante em fazer e travar uma guerra de turba contra todas as outras famílias da máfia que \npoderia separar a família Corleone." > Resumo.txt # > Resumo.txt serve para conseguir-mos passar a informação contida no comando echo para o ficheiro txt
	
	echo -e "Diretor - Francis Ford Coppola ;\nEscritores - Mario Puzo e Francis Ford Coppola;\nEstrelas - Marlon Brando, Al Pacino e James Caan;\nGénero - Crime,Drama\nRating - 9,1;" > Info.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"O Padrinho: Parte II"
	
	echo -e "A saga contínua da família do crime Corleone conta a história de um jovem Vito Corleone crescendo na \nSicília e em 1910 em Nova York; e segue Michael Corleone na década de 1950, enquanto ele tenta expandir \nos negócios da família em Las Vegas, Hollywood e Cuba." > Resumo.txt # > Resumo.txt serve para conseguir-mos passar a informação contida no comando echo para o ficheiro txt
	
	echo -e "Diretor - Francis Ford Coppola ;\nEscritores - Mario Puzo e Francis Ford Coppola;\nEstrelas - Al Pacino, Robert De Niro e Robert Duwall;\nGénero - Crime, Drama\nRating - 9,0;" > Info.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"O Cavaleiro das Trevas"
	
	echo -e "Passado um ano após os eventos de Batman Begins (2005), Batman, o tenente James Gordon e o novo \npromotor Harvey Dent começaram a prender os criminosos que assolam Gotham City, até que um \nmisterioso e sádico gênio do crime conhecido apenas como Joker aparece em Gotham, criando uma \nnova onda de caos. A luta do Batman contra o Coringa torna-se profundamente pessoal, forçando-o a \nconfrontar tudo em que ele acredita e melhorar sua tecnologia para detê-lo. Um triângulo amoroso se \ndesenvolve entre Bruce Wayne, Dent e Rachel Dawes." > Resumo.txt # > Resumo.txt serve para conseguir-mos passar a informação contida no comando echo para o ficheiro txt
	
	echo -e "Diretor - Christopher Nolan ;\nEscritores - Jonathan Nolan, Christopher Nolan e David S. Goyer;\nEstrelas - Christian Bale, Heath Ledger e Aaron Eckhart;\nGénero - Ação, Crime, Drama, Filme de Ação\nRating - 9,0;" > Info.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"Doze Homens em Fúria"
	
	echo -e "A defesa e a acusação descansaram, e o júri está entrando na sala do júri para decidir se um jovem é \nculpado ou inocente do assassinato de seu pai. O que começa como um caso aberto e fechado de \nassassinato logo se torna uma história de detetive que apresenta uma sucessão de pistas que criam \ndúvidas e um mini-drama de cada um dos preconceitos e preconceitos dos jurados sobre o julgamento, o \nacusado e uns aos outros . Com base na peça, toda a ação se passa no palco da sala do júri." > Resumo.txt # > Resumo.txt serve para conseguir-mos passar a informação contida no comando echo para o ficheiro txt
	
	echo -e "Diretor - Sidney Lumet ;\nEscritores - Reginald Rose;\nEstrelas - Henry Fonda, Lee J. Cobb e Martin Balsam;\nGénero - Crime, Drama\nRating - 9,0;" > Info.txt
	

else
	echo "Videoteca não criada, necessita executar o script script.sh"

fi






















