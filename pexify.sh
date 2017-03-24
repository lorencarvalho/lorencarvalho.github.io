echo ""
echo ""
echo \~ installing pex \~
echo ""
echo Make sure your add the following to your .bashrc!
echo ""
echo PATH+=":$HOME/bin"
echo ""

cd `mktemp -d`
virtualenv . -q
source bin/activate
pip install pex -q
mkdir -p ~/bin
pex pex -c pex -o ~/bin/pex
deactivate
cd ~

echo ""
echo done! check it out: ~/bin/pex
echo ""
