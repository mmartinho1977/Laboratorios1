****************************************
TP2 LI ESI 
Author: Alexandre Pereira 13725
Date: 26 December 2021
****************************************

Summary:
This project consisted in creating 1 bash script for Linux Terminal, that automatically creates a set of directories for a local video library named "Videoteca".

How-To:

* Creating the main directories
 - Run the script (videoteca.sh) with option -i or init so that the base directories are created (./videoteca.sh -i or ./videoteca.sh -init);

* Adding new movies
 - Run the script (videoteca.sh) with option -a or -add (./videoteca.sh -a or ./videoteca.sh -add);
 - Follow the indicated steps (Insert movie title, category, description and rating);
   NOTE: If the inserted category doesn't exist, you'll have the option to create it.

* List Movies
 - Run the script (videoteca.sh) with option -l or -list (./videoteca.sh -l or ./videoteca.sh -list) this will display all the movies, inside each category (only displays categories that has movies in it);

* Compress library
 - Run the script (videoteca.sh) with option -c or -comp (./videoteca.sh -c or ./videoteca.sh -comp) this will generate a new .tar.gz file;

* Decompress library
 - Run the script (videoteca.sh) with option -d or -decomp (./videoteca.sh -d or ./videoteca.sh -decomp) this will extract "Videoteca" and all subfolders and files, into the current directory.

Notes:
The main directories, using the init option, are created in the same folder from where the script is being run.