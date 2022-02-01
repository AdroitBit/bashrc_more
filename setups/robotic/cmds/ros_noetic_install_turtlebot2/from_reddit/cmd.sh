echo "Robot specification : Turtlebot2 yujin Kobuki"
echo "[WARNING] : This installation is quite long"
echo "If you're ready just press [ENTER] or [CTRL-C] if you aren't yet"
read

echo "[Creating turtlebot2 workspace]"
ws_name="turtlebot2_ws"
ros_create_ws $ws_name
cd $ws_name

echo "[Copying Makefile]"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cp "$SCRIPT_DIR/Makefile" .

echo "[Install all of unmentioned dependencies with Makefile]"
make deps
make

echo "[Building workspace]"
catkin_make

echo "[Installation completed]"
cd ..