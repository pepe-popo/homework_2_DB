<h1 align="center">Общая структура базы данных</h1>


![image](https://user-images.githubusercontent.com/104313537/224201910-b5d3e9e4-718f-4dd7-a817-a0c1c5aa2f9d.png)

<h3>Разберу каждую таблицу по отдельности:</h3>
<h3>:yellow_circle: countries:</h3>
<h4>Содержит уникальное название страны, на эту таблицу ссылаются сразу несколько других таблиц, поэтому я решил вынести страну в отдельную таблицу. </h4>

![image](https://user-images.githubusercontent.com/104313537/224197109-9075e0d3-be72-40ad-a6f7-928e0c08120a.png)

<h3>:large_blue_circle: viewers:</h3>
<h4>Таблица для хранения зрителей по странам. Ссылается на film и на countries.</h4>

![image](https://user-images.githubusercontent.com/104313537/224204040-d300c398-ddb7-419a-b24c-113aa6e1b1e2.png)

<h3>:brown_circle: box_office:</h3>
<h4>Таблица для хранения сборов по стране, как и в предыдущей таблице ссылается на film и countries. При такой структуре можно удобно подсчитать как общее количество выручки, так и выручку с определенных стран. Но кинопоиск почему-то не показывает сборы по каждой стране в отдельности, но предположим что у нас есть эта информация, просто пользователю выдается общая сумма со всех стран.</h4>

![image](https://user-images.githubusercontent.com/104313537/224204848-8305810f-527d-43ed-891f-ff53dd51a1cb.png)

<h3>:white_circle: genre:</h3>
<h4>хранит жанры, тут все просто</h4>

![image](https://user-images.githubusercontent.com/104313537/224197005-42246027-4df3-4f74-a012-0aa728271fd4.png)

<h3>:orange_circle: film_genre:</h3>
<h4>Вспомогательная таблица реализующая связь многие ко многим. В ней перечисляются жанры фильма.</h4>

![image](https://user-images.githubusercontent.com/104313537/224205231-74dd07bb-7bfc-4d99-be58-a6d5f677e28f.png)

<h3>:green_circle: role:</h3>
<h4>Хранит профессию участника команды. Каждое значение уникально. Пример заполнения:</h4>

# ![image](https://user-images.githubusercontent.com/104313537/224196802-17916a1b-40e6-4703-ac99-d682d42e8eaa.png)

<h3>:purple_circle: person</h3>
<h4>Хранит конкретного человека с указанием его професии. Ссылается на ранее упомянутую таблицу role. Один человек может занимать несколько профессий, как в примере ниже. В теории можно найти людей с одинаковым именем и родом деятельности, такие случаи я не обработал отдельно, но можно например добавлять фото или дату рождения.</h4>

![image](https://user-images.githubusercontent.com/104313537/224197775-ee5bd870-50cf-4d77-bbbc-256e1849879e.png)

<h3>:black_circle: film_person:</h3>
<h4>таблица реализующая связь многие ко многим между фильмом и конкретным человеком. По условию задачи подразумевается использование данной таблицы для связи главных ролей и актёров дубляжа с фильмом, но как мне кажется, по такому принципу можно и остальных участников съемочной группы связать. Может конечно так не делается и нужно десяток отдельных таблиц создавать, но в контексте данного задания я думаю это уместно</h4>
<h4>Как видно из примера ниже, каждый фильм связан с определенной записью в person, а role показывает профессию человека.
Следовательно мы можем получить всех актеров или всех актеров дубляжа определенного фильма, просто фильтровать нужно будет по роли</h4>


![image](https://user-images.githubusercontent.com/104313537/224202955-fe6a32c1-93f0-4816-8f36-994a1047c8f4.png)


<h3>:red_circle: film:</h3>
<h4>:black_medium_small_square: поля artist_id, composer_id, country_id, director_id, editor_id, operator_id, producer_id, screenwriter_id ссылаются на таблицу person напрямую, реализуя связь один ко многим, актеры и дубляж будут храниться в отдельной таблице для связи многие ко многим.</h4>
<h4>:black_medium_small_square: поля budget, marketing, title и year хранят общий бюджет, затраты на маркетинг, название и год выпуска соответственно</h4>

![image](https://user-images.githubusercontent.com/104313537/224200071-5247f7b2-3829-4c97-b8b8-c69164ea949a.png)

