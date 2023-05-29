Для начала работы необходимо собрать образ из докер файла `Dockerfile` с помощью команды `docker build --no-cache -t deepdoc_proj:1.0 .`  
Запустим контейнер командой `docker run -p 5000:5000 deepdoc_proj:1.0`, после чего нужно перейти по ссылке `http://127.0.0.1:5000`, где вставить картинку `приказ.jpg` и нажать кнопку действия `upload`  

`главная`
![главная](https://github.com/sheka00/ml_container/blob/main/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F.jpg)  

`детектирование элементов`
![детектирование элементов](https://github.com/sheka00/ml_container/blob/main/%D0%B4%D0%B5%D1%82%D0%B5%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2.jpg)  

`граф`
![граф](https://github.com/sheka00/ml_container/blob/main/%D0%B3%D1%80%D0%B0%D1%84.jpg)
