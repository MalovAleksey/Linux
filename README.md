# Linux ерунда заметки.

**wall** —  отображает сообщение на терминалах всех вошедших в систему пользователей. wall "message"

**write** - отображает сообщение на терминале конкретного пользователя.  echo "ughiug" | write test1

**w** - посмотреть пользователей в системе. или **who**

**/etc/nologin** - наличие данного файла запрещает вход всем пользователям кроме root

**gpart** - пытается угадать, какие разделы находятся на жестком диске. Если основная таблица разделов 
 была утеряна, перезаписана или уничтожена, разделы все еще существуют на диске, но 
 операционная система не может получить к ним доступ.

**/user/lib/systemd/system** - config file service

**arping** -c 1 -I eth1 192.168.1.10 - отправляет arp запрос.

**tcpdump** -i any arp -nn -v -A -e - перехватывает сетевой трафик проходящий через интерфейс.

**ls -l**

**/etc/passwd**

**/etc/group**

**/etc/sudoers** 

**visudo** - редактировать файл **/etc/sudoers**

sudo visudo -cf /etc/sudoers - проверить файл на соответствие синтаксиса.

**pam _ ssh _ agent_auth** - пакет PAM 

**Пример sudoers**

%wheel ALL = (ALL) ALL - член группы wheel может запустить любую программу с паролем.

MYSQL_ADMINS ALL = (mysql) NOPASSWD: ALL - администраторы mysql могут запускать любую команду под пользователем mysql без пароля.

ADMINS ALL =  (ALL) NOPASSWD: /usr/sbin/logrotate - администраторы могут запускать команду logrotate как обычный пользователь без пароля.


**sudo systemctl set-default multi-user.target** - изменить цель загрузки по умолчанию.

**sudo systemctl isolate multi-user.tarqet/rescue** - изменить текущую цель загрузки.

**systemctl list-units --type = target** - посмотреть доступные цели загрузки.

**passwd** - изменение пароля пользователя.

passwd -l - блокирует учетную запись добавляя знак ! к зашифрованному паролю.

sudo passwd -u root - разблокировать учетную запись пользователя root.

**SCP**

scp /home/user/file root@timeweb:/root/ - копирование туда.

scp -r /home/user/photos root@timeweb:/root/ - копирование директории.

scp -r /home/user/photos root@timeweb:/root/ - копирование директории.

scp root@timeweb:/root/file /home/user/ - копирование обратно


## Управление процессами

kill pid

kilall nano

**PS**

ps aux

ps lax

ps aux | grep -v grep | grep sshd - удалить из вывода сам grep

**pidof nano** - выведет PID всех процессов nano

**pgrep nano** - выведет PID всех процессов nano




