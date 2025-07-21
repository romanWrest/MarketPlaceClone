<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <title>Ошибка</title>
</head>
<body>
<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1>Произошла ошибка</h1>
    <p>Код ошибки: ${status!"Неизвестно"}</p>
    <p>Сообщение: ${error!"Неизвестная ошибка"}</p>
    <p>Подробности: ${message!"Нет дополнительных сведений"}</p>
    <p>Путь: ${path!"Неизвестный путь"}</p>
    <p>Время: ${timestamp!"Неизвестно"}</p>
    <p>К сожалению, что-то пошло не так. Пожалуйста, попробуйте снова.</p>
    <a href="/">Вернуться на главную</a>
</@t.template>
</body>
</html>