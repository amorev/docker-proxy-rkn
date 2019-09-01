DOCKER-READY Telegram proxy

Чтобы запустить этот прокси необходимо ввести следующую команду

```bash
docker run -p 8012:80 8013:81 zvinger/docker-proxy-rkn
```

Вместо 8012 и 8013 (для метода [GetFile](https://core.telegram.org/bots/api#getfile) вы можете указать любой удобный вам порт.
Тогда в коде вашего приложения вместо

`https://api.telegram.org/bot`
или 
`https://api.telegram.org/file/bot`

Вы указываете
`http://<<АДРЕС_ВАШЕГО_СЕРВЕРА>>:выбранный порт/`

Например, если сервер лежит по адресу s331.your-company.com

В конфигурации приложения Вы указываете

`http://s331.your-company.com:8012/`
`http://s331.your-company.com:8013/` для getFile соответственно

По-умолчанию, демон слушает 80 и 81 порты.

Любые пожелания можете писать в issues
