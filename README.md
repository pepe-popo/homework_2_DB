<h1 align="center">Общая структура базы данных</h1>


# ![image](https://user-images.githubusercontent.com/104313537/224192326-bc7b0cad-e7df-41c3-9468-3f52f83d6e91.png)

<h3>Разберу каждую таблицу по отдельности:</h3>
<h3>:yellow_circle: countries:</h3>
<h4>Содержит уникальное название страны, на эту таблицу ссылаются сразу несколько других таблиц, поэтому я решил вынести страну в отдельную таблицу. </h4>

![image](https://user-images.githubusercontent.com/104313537/224197109-9075e0d3-be72-40ad-a6f7-928e0c08120a.png)

<h3>:large_blue_circle: viewers:</h3>
<h4>Таблица для хранения зрителей по странам. Ссылается на film и на countries.</h4>
<h3>:brown_circle: box_office:</h3>
<h4>Таблица для хранения сборов по стране, как и в предыдущей таблице ссылается на film и countries. При такой структуре можно удобно подсчитать как общее количество выручки, так и выручку с определенных стран.</h4>
<h3>:white_circle: genre:</h3>
<h4>хранит жанры, тут все просто</h4>

![image](https://user-images.githubusercontent.com/104313537/224197005-42246027-4df3-4f74-a012-0aa728271fd4.png)

<h3>:orange_circle: film_genre:</h3>
<h4>Вспомогательная таблица реализующая связь многие ко многим. В ней перечисляются жанры фильма.</h4>
<h3>:green_circle: role:</h3>
<h4>Хранит роль участника съемочной команды. Каждое значение уникально. Пример заполнения:</h4>

# ![image](https://user-images.githubusercontent.com/104313537/224196802-17916a1b-40e6-4703-ac99-d682d42e8eaa.png)

<h3>:red_circle: film:</h3>
<h4>:black_medium_small_square: поля artist_id, composer_id, country_id, director_id, editor_id, operator_id, producer_id, screenwriter_id ссылаются на таблицу </h4>
