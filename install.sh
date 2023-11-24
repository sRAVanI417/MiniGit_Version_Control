#! /bin/sh



if [ -d ~/bin ] 
then
    echo "Directory exists." 
else
    mkdir ~/bin
fi
string2="/home/$USER/bin:$PATH"
#echo $string2
string1="export PATH=\"/home/$USER/bin:$PATH"

if  grep $string2 ~/.bashrc ;
then
   echo "Found it"
else
   echo $string1\" >> ~/.bashrc
fi


g++ main.cpp -o minigit

echo compiled successfully

mv minigit ~/bin/minigit

echo minigit installed successfully in your Machine!!!
