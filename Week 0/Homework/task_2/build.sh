echo "🚩 The program is started! UwU"
# Make sure you run these commands by staying in the root folder (i.e. task_2)

# STEP 1 - Compiles the library files and stores them in build/ folder
c++ -c -Iinclude/ src/subtract.cpp -o build/subtract.o
c++ -c -Iinclude/ src/sum.cpp -o build/sum.o
echo "💽 Compiled library files"

# STEP 2 - Makes the archive of the 2 objects by creating our 1st library
ar rcs results/lib/libipb_arithmetic.a build/sum.o build/subtract.o
echo "🥝 Made the final library"

# STEP 3 - Compiles the main program
# IMPORTANT -> Make sure to pass the -Idir/ to show where the library files are located
c++ -c -Iinclude/ src/main.cpp -o build/main.o
echo "✨ Compiled main file"

# STEP 4 - Link the main application to the libraries and storing the binaries in the results/bin folder
c++ build/main.o -L results/lib -lipb_arithmetic -o results/bin/main
echo "🔗 Linked the main file with the library"

# ------------ OR instead of STEPS 3 & 4 we can do it in one line ------------
# c++ src/main.cpp -I ./include/ -L ./build/ -lipb_arithmetic -o ./results/bin/main


echo "🥵 🥵 🥵 OUTPUT 🥵 🥵 🥵"
# To run the final program use
./results/bin/main