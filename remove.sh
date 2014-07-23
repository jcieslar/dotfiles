echo -e "give me plugin name: \c "
read name

git rm --cached vim/bundle/$name
rm -rf .git/modules/vim/bundle/$name
rm -rf vim/bundle/$name
echo 'done.'
