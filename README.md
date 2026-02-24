# Test 2 - Disk simulation and repair 

## Modifications made

Reconstructed "disk.h" and "system.h" using the code provided in the refman documentation making sure to include header guards.
Modified all .cpp files so that they contained the required headers. 
Completed the code for both disk.cpp and system.cpp \
    - For disk this involved finishing the code to calculate the distance between disk and disk other, this was done by calculating the euclidean distance between them \
    - For system this included providing a definition for the uniform function in which a random number is generated between two points \

At this point the code had been fixed and could be compiled 

## Compilation 

The code was, and can be compiled by inputting " g++ main.cpp disk.cpp system.cpp -o simulation" into the terminal followed by ./simulation to run

### Introduction of a Makefile

To simplify compilation, a Makefile was constructed \
    In the terminal the following commands can be ran  \
        - make clean : removes the old simulation as well as old object files \
        - make : compiles the files and produces "simulation" \
        - make run : creates "simulation" if needed and runs "simulation" 

## Visualisation 

### How to view 
The model can be viewed by typing "python3 view.py" in the terminal after "simulation" has run, this should create a popout window that shows the simulation 

### Comments on the output
    - The model visualises without any crashes 
    - The model successfully visualises 10,000 simulations with the disks starting on the left hand side of the box and slowly dispersing out 
    - The model does not allow the disks to overlap and this can clearly be seen in the visualisation 
    - Originally upon creation of the animation the animation would run for a few frames before buffering and then continuing a few seconds later, i do not kno why this is, however modifying the animation function to have a 200 millisecond interval seems to make the animation better, it still occasionally buffers but it is far more viewable and better shows the disk movement

## Comments on Git
Commits to git were often done incremently after a "task" was complete,
they can be viewed using "git log --oneline", this provides the commit as well as a hash.
Using "git show "HASH"" will allow you to see exactly what changes were made during each 
commit while "git diff "HASH1" "HASH2" " shows the difference between two commits.