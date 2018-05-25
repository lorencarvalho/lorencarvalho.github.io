echo ""
echo ""
echo \~ installing hiss \~
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
shiv hiss-repl hiss-themes -c hiss -o ~/bin/hiss -p "$py -sE" -q
deactivate
cd ~

echo ""
echo done! check it out: ~/bin/hiss
echo ""
