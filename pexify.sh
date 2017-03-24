echo ""
echo ""
echo ~ installing pex ~
echo ""
echo Make sure your add the following to your .bashrc!
echo ""
echo PATH+=":$HOME/bin"
echo ""

cd `mktemp -d`
virtualenv .
source bin/activate
pip install pex
mkdir -p ~/bin
pex pex -c pex -o ~/bin/pex
deactivate
cd ~
