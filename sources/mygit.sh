#/bin/bash
if [[ $1 -eq 0 ]]; then
    echo "No git found"
	exit 1
fi
echo 'Cloning ' $1
git clone $1 ../icantthinkofarandomfoldername
cp -R ../icantthinkofarandomfoldername/.git ./.github
rm -rf ../icantthinkofarandomfoldername
rm -f ./mygit.sh
echo 'All done'
