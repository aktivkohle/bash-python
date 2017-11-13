echo -en '\n' >> output.log # (skips a line)

date -u >> output.log

echo now running say_hello.py >> output.log

{  time python say_hello.py >> output.log 2>&1; } 2>> output.log

echo -en '\n' >> output.log # (skips a line)

date -u >> output.log

echo -en '\n' >> output.log

# in the following, 10 are seconds to timeout, 124 is a code for if it times out
# http://www.gnu.org/software/coreutils/manual/html_node/timeout-invocation.html

timeout 10 python take_too_long.py >> output.log 2>&1
if [ $? -eq 124 ]; then
    # Timeout occurred
    echo take_too_long.py has exceeded 10 seconds >> output.log
else
    # No hang
    echo take_too_long.py has run to completion >> output.log
fi

echo -en '\n' >> output.log


echo now running do_something_else.py >> output.log

{  time python do_something_else.py >> output.log 2>&1; } 2>> output.log

echo -en '\n' >> output.log

date -u >> output.log

echo -en '\n' >> output.log