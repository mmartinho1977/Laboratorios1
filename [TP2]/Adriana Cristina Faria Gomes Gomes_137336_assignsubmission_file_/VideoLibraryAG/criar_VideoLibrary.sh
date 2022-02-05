#!/bin/bash


# Criar pastas da Videoteca para séries, organizadas por categorias
mkdir -p VideoLibrary/TV_Shows/Type

# Dentro da diretoria anterior criar pastas de categorias
cd VideoLibrary/TV_Shows/Type
mkdir Christopher_Nolan Animation Crime Drama

# Incluir ficheiro na pasta Animation e fazer cópia desse ficheiro
printf "Tittle: Big Mouth \nYear:2017-present \nCreator: Jennifer Flackett, Andrew Goldberg, Nick Kroll \nResume: Teenage friends find their lives upended by the wonders and horrors of puberty. \nStars: Nick Kroll, John Mulaney, Jessi Klein \nRating: 7.9" > Animation/Big_Mouth.txt
cd Animation
cat Big_Mouth.txt >> Big_Mouth_copy.txt

cd ..

# Criação de ficheiros com informação sobre séries/filmes nas diferentes pastas (comandos printf e echo)
printf "Tittle:Peaky_Blinders \nYear:2013-present \nCreator: Steven Knight \nResume: A gangster family epic set in 1900s England, centering on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby. \nStars:Cillian Murphy, Paul Anderson, Helen McCrory \nRating: 8.8" > Crime/Peaky_Blinders.txt

printf "Title: Supernatural \nYear: 2005-2020 \nCreator: Eric Kripke \nResume: Two brothers follow their father's footsteps as HUNTER, fighting evil supernatural beings of many kinds, including monsters, demons and gods that roam the earth. \nStars:  Jared Padalecki, Jensen Ackles, Jim Beaver \nRating: 8.4" > Drama/Supernatural.txt

printf "Title: Tenet \nYear: 2020 \nType: Action, Sci-Fi, Thriller \nResume: Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time. \nStars: John David Washington, Robert Pattinson, Elizabeth Debicki \nRating: 7.4 \n" >> Christopher_Nolan/Tenet.txt

printf "Title: Inception \nYear: 2010 \nType: Action, Adventure, Sci-Fi \nResume: A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster." > Christopher_Nolan/Inception.txt
 
printf "Stars: Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page \nRating: 8.8" > Christopher_Nolan/Inception2.txt 

 
echo "Title: Interstellar
Year: 2014 
Type: Adventure, Drama, Sci-Fi
Resume: A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.
Stars: Matthew McConaughey, Anne Hathaway, Jessica Chastain
Rating: 9.6" > Christopher_Nolan/Interstellar.txt

cd ..

# Criação de novas pastas
mkdir Director
cd Director
mkdir Christopher_Nolan Davide_Yates Steven_Spielberg

# Criação de ficheiros 
printf "Title: Tenet \nYear: 2020 \nType: Action, Sci-Fi, Thriller \nResume: Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time. \nStars: John David Washington, Robert Pattinson, Elizabeth Debicki \nRating: 7.4 \n" >> Christopher_Nolan/Tenet.txt

printf "Title: Inception \nYear: 2010 \nType: Action, Adventure, Sci-Fi \nResume: A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.\n" > Christopher_Nolan/Inception.txt
 
printf "Stars: Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page \nRating: 8.8" > Christopher_Nolan/Inception2.txt 

 
echo "Title: Interstellar
Year: 2014 
Type: Adventure, Drama, Sci-Fi
Resume: A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.
Stars: Matthew McConaughey, Anne Hathaway, Jessica Chastain
Rating: 9.6" > Christopher_Nolan/Interstellar.txt

echo "Title: Fantastic Beasts: The Crimes of Grindelwald
Year: 2018
Type: Adventure, Family, Fantasy
Resume: The second installment of the Fantastic Beasts series featuring the adventures of Magizoologist Newt Scamander.
Stars: Eddie Redmayne, Johnny Depp, Ezra Mille, 
Rating: 6.5" > Christopher_Nolan/Fantastic_Beasts2.txt

echo "Title: Fantastic Beasts and Where to Find Them
Year: 2016
Type: Adventure, Family, Fantasy
Resume: The adventures of writer Newt Scamander in New York's secret community of witches and wizards seventy years before Harry Potter reads his book in school.
Stars: Eddie Redmayne, Katherine Waterston, Alison Sudol
Rating: 7.3" > Davide_Yates/Fantastic_Beasts1.txt

echo "Title: Bridge of Spies
Year: 2015
Type: Drama, History, Thriller
Resume: During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.
Stars: Tom Hanks, Mark Rylance, Alan Alda
Rating: 7.6" > Steven_Spielberg/Bridge_Spies.txt

echo "Title: Bridge of Spies
Year: 2015
Type: Drama, History, Thriller
Resume: During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.
Stars: Tom Hanks, Mark Rylance, Alan Alda
Rating: 7.6" > Steven_Spielberg/Bridge_Spies.txt

echo "Type: Drama
Resume: A cover-up spanning four U.S. Presidents pushes the country's first female newspaper publisher and her editor to join an unprecedented battle between press and government.
Stars: Meryl Streep, Tom Hanks, Sarah Paulson" > Steven_Spielberg/The_Post_TRS.txt

echo "Title: The Post
Year: 2017" > Steven_Spielberg/The_Post_Year.txt

echo "Rating: 7.2" > Steven_Spielberg/The_Post_Rating.txt 

echo "Title: Westworld
Year: 2016-present
Creator: Lisa Joy, Jonathan Nolan
Resume: Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence.
Stars: Evan Rachel Wood, Ed Harris, Jeffrey Wright, Thandiwe Newton,  Anthony Hopkins  
Rating: 8.6" > Steven_Spielberg/West.txt

cd ../..
mkdir Movies

cd ..

# Compactar a pasta VideoLibrary
zip -r VideoLibrary.zip VideoLibrary 

# Remover a pasta VideoLibrary
rm -r VideoLibrary

