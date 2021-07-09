export SCRIPTS_URL='https://gist.githubusercontent.com/IndianBoy42/21e3b8fcd00863095a4d0d78cf4747ff/raw/26afe8bd7c6defe2678c298140679c8e7d764a1d'
echo $SCRIPTS_URL
curl "$SCRIPTS_URL/rplidar_hector.launch" > rplidar_hector.launch
curl "$SCRIPTS_URL/view_rplidar_a3.launch" > view_rplidar_a3.launch