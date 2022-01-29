echo "Robot specification : Turtlebot2 yujin Kobuki"
echo "Please make sure that you're in ros workspace folder(not src)"
echo "If you're already in workspace just hit [ENTER] or [CTRL-C] if you aren't yet"
read

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cp "$SCRIPT_DIR/Makefile" .
make deps
make
catkin_make