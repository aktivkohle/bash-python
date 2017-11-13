# bash-scripting

Often terminal commands are called from Python with `os.system` or `subroutine` libraries. This complements Python's abilities, and there is some functionality to be achieved by doing it the other way around - calling Python programs from the terminal. This is going beyond entering just one or two commands like `ls` or `grep` to having a short script. 

There are two Python scripts in this repo which simulate a time-consuming process. One of the two contains a line which deliberately crashes it shortly before the end. Then there is a bash script which can be run by typing:

`bash run_programs.sh`

That runs these programs one after the other and diverts their outputs `stderr` and `stdout` to a logfile instead of displaying them on the screen. Maybe it should do both, but for now it is going into the file. Also, there is a `time` command whose output also goes into that file.

The remaining functionality it needs at the moment is:
* put the computer to sleep without the need for `sudo` if possible once the programs are finished.
* something which watches how long a program is been running, and if it has been going longer than it should, perhaps thirty minutes rather than ten minutes, try to shut it down or otherwise kill it, so that the rest of the script can continue to run. Of course the if that is carried out by the bash script it needs to be noted in the logfile.
