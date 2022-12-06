# bird-config for central management

## Initialize git directory

```cd; mkdir bird-config; cd bird-config```

```git remote add origin https://TOKEN@github.com/nagaeki/bird-config.git```

```git pull origin main```

## Add Crontab

```(crontab -l 2>/dev/null; echo "*/2 * * * * cd /root/bird-config; chmod +x update.sh; bash update.sh") | crontab -```

## To check
```crontab -l | grep update.sh; ls /root/bird-config | grep md```
