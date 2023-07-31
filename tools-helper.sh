

echo "1. build_runner"

while :
do 
	read -p "Run with: " input
	case $input in
		1)
		flutter packages pub run build_runner build -d
		break
		;;
        *)
		;;
	esac
done