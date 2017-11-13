# no spacese around the equals sign when defining variables in bash!
logfile='output.log'

echo -en '\n' >> $logfile # (skips a line)

date -u >> $logfile

echo now running say_hello.py >> $logfile

{  time python say_hello.py >> $logfile 2>&1; } 2>> $logfile
echo That process exited with status $? >> $logfile

echo -en '\n' >> $logfile # (skips a line)

date -u >> $logfile

echo -en '\n' >> $logfile

# in the following, 10 are seconds to timeout, 124 is a code for if it times out
# http://www.gnu.org/software/coreutils/manual/html_node/timeout-invocation.html

timeout 10 python take_too_long.py >> $logfile 2>&1
if [ $? -eq 124 ]; then
    # Timeout occurred
    echo take_too_long.py has exceeded 10 seconds >> $logfile
    echo That process exited with status $? >> $logfile
else
    # No hang
    echo take_too_long.py has run to completion >> $logfile
    echo That process exited with status $? >> $logfile
fi

echo -en '\n' >> $logfile


echo now running do_something_else.py >> $logfile

{  time python do_something_else.py >> $logfile 2>&1; } 2>> $logfile
echo That process exited with status $? >> $logfile

echo -en '\n' >> $logfile

date -u >> $logfile

echo -en '\n' >> $logfile