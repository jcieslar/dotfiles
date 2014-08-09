echo -e "give me plugin name: \c "
read name

rm -rf .git/modules/vim/bundle/$name
rm -rf vim/bundle/$name
git rm --cached vim/bundle/$name
echo 'done.'
