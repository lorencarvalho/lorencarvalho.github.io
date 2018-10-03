echo ""
echo ""
echo \~ installing shiv \~
echo ""
echo Make sure your add the following to your .bashrc!
echo ""
echo PATH+=":$HOME/bin"
echo ""

py=`which python3`
cd `mktemp -d`
$py -m venv .
source bin/activate
pip install shiv -q
mkdir -p ~/bin
shiv shiv -c shiv -o ~/bin/shiv -p "$py -sE" -q
echo installed using $py
deactivate
cd ~

echo ""
echo done! check it out: ~/bin/shiv --version
echo ""
