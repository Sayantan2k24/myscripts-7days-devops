# grep "failed" /var/log/secure  | grep "password check" | grep -w root

grep "failed" /var/log/secure | grep "password check" | grep -E '\broot\b'
