echo "Robot specification : Turtlebot2 yujin Kobuki"
echo "If you're ready to install turtlebot2 packages just hit [ENTER] or [CTRL-C] if you aren't yet"
read

echo "[Copying Makefile]"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cp "$SCRIPT_DIR/Makefile" .
echo "[Install all of unmentioned dependencies]"
make deps
make
echo "[Compile workspace]"
catkin_make

echo "[Installation completed]"