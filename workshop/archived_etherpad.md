Welcome to MoPad!
This pad text is synchronized as you type, so that everyone viewing this page sees the same text.  This allows you to collaborate seamlessly on documents!
Please be cognizant of whether you are using a public pad or private/team pad, and take appropriate precautions with data you post here!
Class website: <http://naupaka.github.io/2015-04-18-UT-Arlington/>     
\#swcuta :  twitter hashtag    
Add your name to the top right so we know who you are    
**Class notes below:**    
**Helpful, general tips:**    

-   avoid spaces in file names
-   typos matter, including case sensitivity
-   use tab to complete unique file names
-   use your sticky notes (post red if you need help, green if you're done with exercise)

**Saturday Morning (Introduction to R):**    

-   data for morning: <http://npk.io/1jbY3+>
    -   Ted talks from Hans Rosling: <http://www.gapminder.org/videos/>
    -   Make a copy of the original data to modify (correct errors and otherwise clean up)\\
-   misspellings
-   are all dates consistent?
-   consistency in missing data ("not available," we'll use NA because it will work well in R later), best practice is to have every cell filled to be clear that you are missing data (and not just a mistake of empty data)
-   O (letter) vs 0 (number)
-   remove notes below dataset
-   save file as .csv file (.xlsx is a binary file, so you can't open in a text editor)
-   make sure you have RStudio installed for after the coffee break!
-   orientation to RStudio
    -   assign variables using \<-
    -   perform basic arithmetic
    -   find information for plot: ??plot, ?plot, or help(plot)
-   create R project: File/New Project
    -   existing directory: select the directory with your workshop folder (containing data you cleaned earlier)
    -   note: it's not good practice to save your workspace every time you exit. Just make sure you save your commands (scripts) and data files!
-   create a new script: File/New File/R script
    -   this is where you'll save commands you enter
    -   save with a name that ends in .R, which indicates it's an R script
-   code comments: put \# in front of any lines in script file that include notes about code
    -   not read or interpreted by R, just for human reading/understanding
    -   RStudio text editor will color code script for you: comments in green
-   first line of a script should be a comment that includes purpose of script, your name, contact information, and date

Ctrl+S save

-   read.csv("NameOfCleanFile")
-   to send commands to console from script in RStudio: Ctrl+Enter 
-   save data from file to variable: gap \<- read.csv("Afghanistan.csv")
-   quotes show you are looking for a file named "Afghanistan.csv" not a variable named that
-   head(object) to view top of object
-   tail(object) to view end of object
-   nrow(object) number of rows
-   ncol(object) number of columns
-   summary(object) general info about entire object (each column, NAs, etc)
-   class(object) what type of data structure for object
-   expand blue arrow in environment window to look at details for an object
-   names(object) what are headers in each columns
-   mean gap\<-mean(gap$lifeExp, na.rm=TRUE) average for life expectancy column where missing values are NA
-   plot(gap$year, gap$lifeExp) plot year vs life expectancy
-   can split code onto different lines (auto-indent)
-   if your prompt changes to + (instead of \>), you need to complete a command
-   counting R starts at 1 (rather than 0, like in Python)

R script from morning exercises:    
<https://www.dropbox.com/s/lau1vhr4bka4ewd/monday.R?dl=0>    
FIXED PLOTS SCRIPT    
<https://www.dropbox.com/s/hs9gxwkcy31mptd/Plot_pop_year.R?dl=0>    
and more fun with R and statistics (creative commons licensed)    
<https://wikis.utexas.edu/display/CCBB/Introduction+to+Biological+Statistics+Course>    
**Saturday afternoon - shell**    
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#    
gapminder data for saturday afternoon     
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#    
<http://npk.io/1cgDK+>    
Here are two Unix Cheatsheets! <https://www.dropbox.com/s/htd00a15opeauee/unix_cheatsheet.pdf?dl=0>    
<https://www.dropbox.com/s/b79o6ew2nh0t232/unix_handout.pdf?dl=0>    
Software Carpentry lessons for working with Unix shell are located here: <http://swcarpentry.github.io/shell-novice/>    
These use different data, but the commands are the same or similar and follow a very similar flow    

-   whoami :to find out username
-   pwd :print working directory, to find out where in the computer you are
-   ls :list, shows what is in current directories
-   cd : change directory, to move amend folders
-   mkdir : make directory
-   touch FILENAME : creates empty file called FILENAME
-   nano : text editor, opens a window that allows you to enter and save text
    -   nano FILENAME : open file called FILENAME and edit
    -   use Ctrl+X to exit (will give option to save changes)
-   rm FILENAME : remove a file
-   cd .. : move up one level in the file hierarchy
-   wc : counts number of lines, words, and characters in file
-   COMMAND \> FILENAME :redirects output of a command to a filename
-   cat FILENAME :print the contents of a file to the screen
-   sort FILENAME :sort a file by character
-   use a pipe | to connect two commands together in a series
-   history :print commands previously entered on command line, can save to file (ie., history \> history.txt)
-   echo :print following stuff (like a variable) to screen
-   an asterisk (\*) is a wildcard, which represents any number of characters
-   use for loops to repeat commands many times, like for a whole series of files
    -   example for loop that prints all filenames for files ending in .txt: for filename in \*.txt; do echo $filename; done
-   save shell scripts to files that end in .sh
    -   bash script.sh :to execute scripts
-   VARIABLE=$(COMMAND) :specifies the output of the command as a variable
-   most tasks in the shell can be accomplished in various ways, using different commands
-   webpage on formatting dates in bash <http://www.cyberciti.biz/faq/linux-unix-formatting-dates-for-display/>
-   for future reference: powerful things in bash to play around with later: grep, sed, awk, regular expressions

\#!/bin/bash    
DATE=(date +"%Y-%m-%d")    
\#\# here, the $ and \> are what you should see on your computer screen, don't type them    
$  for filename in \*.cc.\*    
\>  do    
\>  echo mv $filename ${filename/.cc/.$DATE.cc.}    
\> done    
\# R and shell plotting in a loop    
<http://npk.io/pIbu+>    
**Sunday morning: git**    
Link to updating commands from Kate's shell: <https://www.dropbox.com/s/sdcqxgei4z4imiu/history.txt?dl=0>    
Be sure to hit refresh to see all the commands Kate is typing    
Below, I pasted lines of code after a "$" and typed notes after the "\#\#"    
**Motivation ** <http://swcarpentry.github.io/git-novice/01-setup.html>    

-   Version control allows tracking changes to files, directories, and code!!
-   Being able to revert to earlier versions of code is crucial, especially when changes to code are faulty
-   Allows multiple people to work on the save file and keep track of all the history
-   **Git** is a distributed version control system
-   **Github** is a public interface for sharing repositories

**Setting up Git**    
\*\* only do this if this is the first time you are using Git on your machine    
$    
**Exercise - creating a repository & tracking changes**    
$ mkdir demo\_repo    
$ cd demo\_repo/    
$ git init  \#\# use this to initialize the "demo\_repo" directory as a Git repository    
$ nano morning.txt \#\# Now create a new file using either touch or nano    
$ git status \#\# Now, check the status of our repository    
$ git add morning.txt \#\# use this command to begin tracking this file    
$ git status  \#\# shows that you have one file to committ    
$ git commit -m "saying good morning"  \#\# commit and make comments    
$ git status \#\#shows now that everything is up to date or "clean"    
$ nano morning.txt  \#\# edit your morning file and save the changes    
$ git status  \#\# now shows that you have changes to be committed    
$ git add morning.txt  \#\# track the file that has been changed    
$ git commit -m "commentary on coffee" \#\# committing an saving a record of changes    
$ git log \#\# this command shows a summary of all of your changes    
$ git diff \#\# a command that you can use to see if everything has been committed or if there are any un-committed changes    
$ nano addedfile.txt \#now making a new file. must have text    
$ nano morning.txt  \#\# make some changes to this file    
$ git status \#\# shows the new untracked file and changes to a tracked file. Let's add them    
$ git add addedfile.txt    
$ git add morning.txt    
$ git commit     \#\#this will open nano window and give you the change to comment    
**Exercise - playing with gapminder data**    
Link to download gap minder scripts: <http://bit.ly/1HkUwFS>    
Download scripts and cd into that directory    
$ git init \#\# initialize this directory as a repository    
$ git add \* \#\# this will track all three files in the directory    
$ git commit -m "initial commit of scripts"     
**We've downloaded three scripts to 1) download the gapminder data 2) clean the bad files (aka, the script that you wrote yesterday) and 3) and combine all the files into a single, combined file with all the data from all the countries**    
**1. Download gapminder data**    
$ bash setupProject.sh  \#\# run the first script to download the data. check to make sure you see that 100% of the files were download    
Side note.  Need to fix the setupProject.sh script    
We've noticed an error in the script. So let's fix it. Open setupProject.sh and add "-k"  after "curl" but before "-L". This says that you trust the website this file is coming from. then add and committ.    

-   $ nano setupProject.sh 
-   $ git add setupProject.sh 
-   $ git commit -m "adding -k to curl"

Back to the exercise    
$ git status \# this shows us that we created a directory with files inside it (data/)    
$ git add data/  \#\# add all the files in data    
$ git commit -m "intermediate output"    
**2. Clean the data**    
$ bash cleanData.sh    
$ git add \*    
$ git commit -m "cleaned country files"    
**3. Concatenate the data**    
Here, we initialize a file with a header row and append all the data from all the files with  "\>\>"    
$ bash combine.sh    
$ git status    
$ ls output    
$ head output/combined\_gapMinder.tsv     
$ git a    
$ git status    
$ git commit -m "adding gapminder output"    
**4. Archiving Scripts**    
Since we are done with our scripts, we can store them in a folder called "code". Beware, that if we run the scripts again later, they won't work because the scripts are sensitive to the relative location    
$ git mv \*.sh code/    
$ git status    
$  git commit -m "archiving scripts"    
$  git status    
**GitHub ** (See also <http://swcarpentry.github.io/git-novice/06-collab.html)>    
Now, lets go on the internet to GitHub. An awesome "social media - like" place where we can share our code with collaborators or the public via remote repositories    
<https://github.com/>    
Setup    

-   Setup or create a new public repository to match the one on our local machine. Use the same name (Sunday\_scripts) and give it a descriptions
-   Copy the URL on the quick setup page (such as <https://github.com/raynamharris/Sunday_scripts.git)> \#\# besure this is your username
-   $ git remote add origin <https://github.com/raynamharris/Sunday_scripts.git> \#\# this links our Git folder "Sunday\_scripts" to our repository on GitHub, but notthing has been shared yet.  "origin" is the default nickname of our online github repository. on origin, there is a branch called "master", which is the default name for the main branch on github
-   $ git push origin master  \#\# you will have to type in your username and password
-   In GitHub, create a read me file 
-   $ git pull origin master  \#\# this will pull README.md to your computer. 
-   $ ls \#\# now you can see that you have the README.md file

Collaborating on Git hub: Pull Requests

-   If someone other than you wants to, they can edit these files in GitHub.
-   Go to <https://github.com/k8hertweck/Sunday_scripts> to see Kate's repository
-   Matt has made some changes to the read me file. In order for Matt to tell Kate that the repository that a change has been suggested, Matt must create a pull request
    -   To see pull requests, click the tab on the right hand side
-   Kate can accept pull requests using "merge" 
-   Now, lets see the process of Kate editing Matt's files. See <https://github.com/mdorranc/sunday_scripts>

This is a really powerful tool.  When you put your code on GitHub, other people can fix bugs for you!! Its a great way to can collaborate on code for manuscripts.      
Public GitHub repositories are free. Sometimes you have to pay for private repositories, but they are free for educators to use in their classroom. You also get 5 free private repositories when you sign up with .edu    
Exercise. Suggest a change to <https://github.com/k8hertweck/Sunday_scripts> and create a pull request    

**Sunday afternoon session: workflows in R**    

Rstudio cheatsheets:    
<http://www.rstudio.com/resources/cheatsheets/>    

Could you add UTAustin NGS workshop info here?    

Summer School May 26-29    
<http://www.ccbb.utexas.edu/summerschool.html>    

Big Data Sympsoium May 15    
<http://www.ccbb.utexas.edu/dataconference.html>    

Create new R project from an existing directory "Sunday\_scripts" (the same we worked with this morning)    

-   For mac users, Git is automatically enabled.
-   For windows users, you must set it. Go to Tools, Global options, Git/SVN. Then set Git exectuable to C:/Program Files (x86)/Git/bin/git.exe. Click Apply, the okay. Restart RStudio.

Git History gives you a visual interface for viewing all the commands entered, push and pull requests, etc.     
Clicking "Sunday\_scripts.Rscripts" allows you to set preferences for this project    
commit and add changes in RStudio (.gitignore and .Rproj files)    
in shell: git branch --set-upstream-to=origin/master    
Then back to RStudio and use button to push to remote repo    
You should see .gitignore and .Rproj in your remote (GitHub) repo    
SSH key at github    

gap.in \<- read.table("output//combined\_gapMinder.tsv", sep="\\t", header=TRUE)    
head(gap.in)    

**\#For loops in R**    
for (number in 1:10){        
  number + 10    
} \# this give value of length 10    
for (number in 1:10){    
  print(number + 10)    
} \# this will print it to the screen    
for (number in 1:10){    
  number.out \<- number + 10    
} \# number.out will equal 20, because save was inside the loop    
Nesting for loops:    
for (row.number in 1:10){    
    for  (col.number in 1:5){    
        print(gap.in[row.number, col.number]}    
    }    
}    

**\# Creating Functions  aka "modular code"    **      
\#creating a function called add.me    
add.me \<- function(x,y){    
  x+y    
}    
\#calling the function, giving it x and y    
add.me(3,4)    

**See Final script here** <https://github.com/naupaka/Sunday_scripts/blob/master/Sunday_pm_gapminder.R>    

**Installing Packages (which contain really useful functions**    

-   Bioconductor is a powerful array of packages that can be loaded into  R <http://bioconductor.org/>
-   CRAN is another source of R packages
-   Dependencies are packages that a given package requires
-   To use packages, you must first install them on your hard drive with the "install.packages" command. Then use the command "library" to load the package into R
-   For dplyr, here are the commands
    -   install.packages("dplyr", dependencies=TRUE)
    -   library("dplyr")
-   After installing a package, add a hashtag infront of install, so that you don't install it again unneccessarily
-   CLick the "package" tab to view all the packages you have installed on your computer
-   commands in dplyr
    -   %\>% is the equivalent of the pipe in R (using this package)
    -   can use to filter and summarize output using a variety of criteria

**\#making a pipe to read, filter, select, group, summarize**    
gap.in %\>%    
  filter(pop \> 15000000) %\>%    
  select(country, year, pop) %\>%    
  group\_by(country)%\>%    
  summarize(min=min(pop))    

**\# Calculate mean population per continent per year for all years prior to 1990.**    
gap.in %\>%    
  filter(year \< 1990) %\>%     \# get all rows with pop less than 90    
  select(country, year, pop, continent) %\>%     \# just get these 4 columns    
  group\_by(continent, year)%\>%    \# group by continent and year    
  summarize(mean=mean(pop))%\>%    \# summarize by taking the mean    
  as.data.frame() -\> data.out    \# this stores it as a dataframe    

**\# Working with the iris dataset and "tidy" package to clean it up**    
\#\# goal is to convert the data frame from wide to long by collapsing columns 1-4 into a single column    
install.packages("tidyr", dependencies=TRUE)  \# install on hard drive    
library("tidyr") \# load into R    
data(iris)    
attach(iris) \# get a dataset from the package    
iris.long\<-gather(iris, "Measurement", "Value", 1:4)  \#gather all the data from 4 column into 1    

**R markdown in RStudio:**    
File/New File/R Markdown to get a new file    
can replace chunks of the example file to prepare reports    
click the knitr button to create html file to share with collaborators    
output can be presentation, html, shiny interactive browser etc (select other options under File/New File/R Markdown)    

**Final exercise:**    
<https://github.com/naupaka/2015-04-18-UT-Arlington/blob/gh-pages/workshop/02_Sunday/02_Sunday_pm/Readme_exercise.md>    

**Example solution:** <https://github.com/naupaka/Sunday_scripts/blob/master/Final_challenge_solution.Rmd>    

**knitr references:**    
<http://yihui.name/knitr/demo/engines/>    
<http://yihui.name/knitr/options/>    

