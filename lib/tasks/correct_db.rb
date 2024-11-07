namespace :init_objects do
    task :create_some_objs_links do
        x1 = {
            name: 'Товар 10',
            full_name : 'Игрушка для детей. Головоломка.',
            price: 25000,
            description: 'Игрушка. Подходт для детей возраста 3-18 месяцев',
            production_date: '01.06.2021',
            guarantiee: 12
        }
        p1 = Product.new(x1)
        p1.save

    end
end

