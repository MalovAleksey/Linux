#Git

*git init .*

*git status*

*git add file or "*"*

*git commit -m "meseg"*

*git commit -am "meseg"* - добавить все файлы и сделать commit.

*git commit --amend* - изменить messege в последнем commit.

Untrackd, Staged, Copi in Local Repository, Copy in Remote Repository

##Git log

*git log* - посмотреть все комиты.

*git log --oneline* - без воды.

*git log --pretty=oneline* - без воды.

*git log --oneline --graph* - визуализация.

*git log -1* - посмотреть последний commit.

*git log -1 -p* - посмотреть изменения в последнем commit. + добавилось - удалилось

*git checkout -- путьк файлу* - отменить все изменения.Если еще не сделан commit.

*git reset --hard b2bbd68* - переместится на нужный commit и и стереть все что после этого  commit. 

*git diff --staged* - посмотреть какие изменеия были внесены после последнего commit перед commit

*git push origin* -закинуть в GitHub

*git push --set-upstream origin clon* - залить на GitHub и создать там новую ветку.

*git remote -v* - Посмотреть ссылку на репозиторий.

*git remote set-url origin* - поменять ссылку.

*git branch* - посмотреть ветки.

*git branch name-branch* - создать ветку.

*git checkout name-branch* - переключиться на ветку.

*git branch -d name-branch* - удалить ветку.

*git branch -D name-branch* - удалить ветку без слияния.

*git push origin --delete name-branch* - удалить ветку в GitHub.

*git checkout -b name-branch* - создать ветку и переключиться на неё.

*git checkaut 7b315f5b4ae7278260e6304ada099649eb413fa5* - перейти на commit.

*git checkaut name branch* - вернуться на исходную ветку.

*git reset --hard HEAD~2* - вернуться на 2 commit назад.

*git reset --soft HEAD~6* - удалить предыдущие commit, стереть историю.

*git tag* - посмотреть tag.

*git tag v1.0.0* - создать tag в текущем commit

*git push origin v1.0.0* - залить tag in GitHub.

*git tag -d v1.0.0* - стереть tag.

*git push origin --delete v1.0.0* - сртереть в GitHub.

*git checkaut v1.0.0* - перейти на commit с соответствующим teg.

*git push origin main --forse* - стереть, перезаписать историю в GinHub.

*git switch -c name-branch* - сделать новую ветку от старого commit.

*git merge name-branch* - слияние с соответствующей веткой.
















	
