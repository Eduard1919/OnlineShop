#This file should contain all the record creation needed to seed the database ...

new_producers = [
    {
        name: 'ООО Волшебный мир',
        ogrn: 1027700047100,
        inn: 772935502900
    },
    {
        name: 'ООО ЗООМИР',
        ogrn: 1207700374210,
        inn: 972402420311
    }
]

new_categories = [
    {
        name: 'Товары для детей. Раздел 1.',
        full_name: 'ДТ: игрушки и др. товары.'
    },
    {
        name: 'Товары для детей. Раздел 2.',
        full_name: 'ДТ: гигиена, медицина.'
    },
    {
        name: 'Товары для детей. Раздел 3.',
        full_name: 'ДТ: питание'
    },
    {
        name: 'Зоотовары. Раздел 1.',
        full_name: 'Зоотовары: животные'
    },
    {
        name: 'Зоотовары. Раздел 2.',
        full_name: 'Зоотовары: товары для животных'
    }
]

new_products = [
    {
        name: 'Товар 1. Головоломка.',
        full_name: 'Игрушка для детей. Головоломка.',
        price: 2500,
        description: 'Подходит для детей возраста 3-18 месяцев.',
        production_date: '01.06.2021',
        guarantee: true
    },
    {
        name: 'Товар 2. Пирамидка 1.',
        full_name: 'Игрушка для детей. Пирамидка. 8 звеньев.',
        price: 1250,
        description: 'Подходт для детей возраста 12-24 месяцев.',
        production_date: '01.05.2020',
        guarantee: true
    },
    {
        name: 'Товар 3. Пирамидка 3.',
        full_name: 'Игрушка для детей. Пирамидка. 12 звеньев.',
        price: 1750,
        description: 'Подходит для детей возраста 18-30 месяцев.',
        production_date: '01.07.2021',
        guarantee: true
    },
    {
        name: 'Товар 4. Прорезыватель зубов 1.',
        full_name: 'Прорезыватель зубов в форме клубнички',
        price: 800,
        description: 'Товар для детей в возрасте 3-12 месяцев',
        production_date: '01.05.2020',
        guarantee: true
    },
    {
        name: 'Товар 5. Подгузники Zuubers 1-3.',
        full_name: 'Подгузники Zuubers 1-3 мес. (3-6 кг.)',
        price: 2200,
        description: 'Товар для детей в возрасте 1-3 месяцев',
        production_date: '10.03.2022',
        guarantee: false
    },
    {
        name: 'Товар 6. Прорезыватель зубов 2.',
        full_name: 'Прорезыватель зубов в форме сосульки',
        price: 850,
        description: 'Товар для детей в возрасте 3-12 месяцев',
        production_date: '10.05.2020',
        guarantee: true
    },
    {
        name: 'Товар 7. Подгузники Zuubers 4-6.',
        full_name: 'Подгузники Zuubers 4-6 мес. (6-8 кг.)',
        price: 2500,
        description: 'Товар для детей в возрасте 4-6 месяцев',
        production_date: '10.10.2021',
        guarantee: false
    },
    {
        name: 'Товар 8. Подгузники Zuubers 6-8.',
        full_name: 'Подгузники Zuubers 6-8 мес. (8-9 кг.)',
        price: 3000,
        description: 'Товар для детей в возрасте 6-8 месяцев',
        production_date: '01.01.2023',
        guarantee: false
    },
    {
        name: 'Товар 9. Молочная смесь 1.',
        full_name: 'МС Курносики для детей от 3 до 6 месяцев',
        price: 500,
        description: 'С недостатком магниево-кальевого состава',
        production_date: '01.01.2023',
        guarantee: true
    },
    {
        name: 'Товар 10. Молочная смесь 2.',
        full_name: 'МС Курносики для детей от 4 до 7 месяцев',
        price: 500,
        description: 'С недостатком йодо-магниевого состава',
        production_date: '01.12.2022',
        guarantee: true
    },
    {
        name: 'Товар 11. Рыбка золотая',
        full_name: 'Рыбка золотая (окрас осенний)',
        price: 200,
        description: 'Уживается в одиночестве',
        production_date: '01.12.2022',
        guarantee: true
    },
    {
        name: 'Товар 12. Рыбка альбинос',
        full_name: 'Рыбка альбинос',
        price: 400,
        description: 'Редкий вид. Предпочетает жить в комьютити.',
        production_date: '01.03.2023',
        guarantee: true
    },
    {
        name: 'Товар 13. Канарейка Московская',
        full_name: 'Канарейка Московская. Окрас желто-зеленый.',
        price: 400,
        description: 'Особые условия содержания',
        production_date: '01.03.2023',
        guarantee: true
    },
    {
        name: 'Товар 14. Корм для канареек 1.',
        full_name: 'Корм для канареек (0.5 кг)',
        price: 200,
        description: 'Корм для канареек со вкусом пшена',
        production_date: '01.03.2023',
        guarantee: false
    },
    {
        name: 'Товар 15. Корм для канареек 2.',
        full_name: 'Корм для канареек (1 кг)',
        price: 350,
        description: 'Корм для канареек со вкусом пшена',
        production_date: '01.03.2023',
        guarantee: false
    }
]
Product.destroy_all
Producer.destroy_all
Category.destroy_all
my_producers = []
new_producers.each do |x|
    t = Producer.new(x) 
    t.save
    my_producers << t
end
new_categories.each do |x|
    t = Category.new(x) 
    t.save
end
new_products.each_with_index do |x, i|
    t = Product.new(x)
    t.producer = (i < 10 ? my_producers[0] : my_producers[1])
    t.save
end

