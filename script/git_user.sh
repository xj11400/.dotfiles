#
# git config user
# 
GIT_USER_NAME="XJ Hsu"
GIT_USER_EMAIL="xj11400@gmail.com"

# global or local
GIT_CONFIG_SCOPE=""
read -p "global config?[y]n: " gitGlobal
if [ "$gitGlobal" == "n" ];then
	echo " >>> use local config"
else
	echo " >>> use global config"
	GIT_CONFIG_SCOPE="--global"
fi


echo ""
# set user name
read -p "enter user name($GIT_USER_NAME): " gitUserName

if [ -z $gitUserName ];then
	echo " >>> user.name = $GIT_USER_NAME"
else
	echo " >>> user.name = $gitUserName"
	GIT_USER_NAME=$gitUserName
fi

git config $GIT_CONFIG_SCOPE user.name "$GIT_USER_NAME"

echo ""
# set user email
read -p "enter user email($GIT_USER_EMAIL): " gitUserEmail

if [ -z $gitUserEmail ];then
	echo " >>> user.email = $GIT_USER_EMAIL"
else
	echo " >>> user.email = $gitUserEmail"
	GIT_USER_EMAIL=$gitUserEmail
fi

git config $GIT_CONFIG_SCOPE user.email "$GIT_USER_EMAIL"

