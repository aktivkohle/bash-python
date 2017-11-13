echo -en '\n' >> output.log # (skips a line)

date -u >> output.log

echo now running say_hello.py >> output.log

{  time python say_hello.py >> output.log 2>&1; } 2>> output.log

echo -en '\n' >> output.log # (skips a line)

date -u >> output.log

echo -en '\n' >> output.log # (skips a line)

echo now running do_something_else.py >> output.log

{  time python do_something_else.py >> output.log 2>&1; } 2>> output.log

echo -en '\n' >> output.log # (skips a line)

date -u >> output.log

echo -en '\n' >> output.log # (skips a line)