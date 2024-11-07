namespace :init_objects_links do
    task categories_products_links: [:environment] do
        cs = Category.all.order(:name)
        ps = Product.all.order(:name)
        c_p_h = { 
            0 => [1, 2, 3], 1 => [4, 5], 2 => [6, 7, 8, 9, 11], 
            3 => [9, 10, 11, 12, 13], 4 => [14, 0] }
        c_p_h.each do |k, v|
            c_i = k
            v.each do |p_i|
                cs[c_i].products << ps[p_i]
            end
            puts "В категорию #{c_i + 1} добавлено #{cs[c_i].products.size} товаров."
        end
    end 
end
