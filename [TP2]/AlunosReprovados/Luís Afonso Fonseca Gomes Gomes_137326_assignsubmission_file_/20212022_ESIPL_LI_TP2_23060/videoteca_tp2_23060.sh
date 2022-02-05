#! /bin/bash

#Criação Pastas

mkdir videoteca/

mkdir videoteca/categoria_filmes/

mkdir videoteca/categoria_filmes/acao/

mkdir videoteca/categoria_filmes/romance/

mkdir videoteca/categoria_filmes/aventura/

#End Criação de Pastas
 
#Criação do ficheiro para cada filme

touch videoteca/categoria_filmes/acao/bloodshot.txt

touch videoteca/categoria_filmes/romance/365_days.txt

touch videoteca/categoria_filmes/aventura/jumanji.txt

#End Criação do ficheiro para cada filme

#Escrever Informação dentro dos ficheiros

echo "Avaliação pessoal em %:

85%

Opinião:

Filme quase perfeito, apenas fazia algumas alterações no que toca ao final do filme.

Enredo Filme:

Ray Garrison, an elite soldier who was killed in battle, is brought back to life by an advanced technology that gives him the ability of super human strength and fast healing. With his new abilities, he goes after the man who killed his wife, or at least, who he believes killed his wife. He soon comes to learn that not everything he learns can be trusted.

" > videoteca/categoria_filmes/acao/bloodshot.txt

echo "Avaliação pessoal em %:

70%

Opinião:

Filme bastante diferente dentro da categoria de romance.

Enredo Filme:

Massimo Torricelli, a young and handsome boss of a Sicilian Mafia family, has no other option but to take over after his father has been assassinated. Laura is a sales director in a luxurious hotel in Warsaw. She has a successful career, but her private life lacks passion. She is taking one last shot to save her relationship. Together with her bone-headed boyfriend, Martin and some other friends, she takes a trip to Sicily. She does not expect that Massimo, the most dangerous man on the island, will get in her way, kidnap her, hold her captive and give her 365 days - to fall in love with him.

" > videoteca/categoria_filmes/romance/365_days.txt

echo "Avaliação pessoal em %:

65%

Opinião:

Não gostei muito do final, mas globalmente foi até engraçado.

Enredo Filme:

The gang is back but the game has changed. As they return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored, from the arid deserts to the snowy mountains, in order to escape the world's most dangerous game.


" > videoteca/categoria_filmes/aventura/jumanji.txt

#End Escrever Informação dentro dos ficheiros

