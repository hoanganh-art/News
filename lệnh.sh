# Sequence hoàn chỉnh từ đầu
composer create-project laravel/laravel VOV_News
cd VOV_News

# Sửa file .env với database configuration

php artisan make:model Category -m
php artisan make:model Blog -m
php artisan make:controller Admin/BlogController --resource
php artisan make:request BlogRequest
php artisan make:factory CategoryFactory
php artisan make:factory BlogFactory
php artisan make:seeder CategorySeeder
php artisan make:seeder BlogSeeder

php artisan migrate
php artisan storage:link
php artisan db:seed
php artisan serve

http://127.0.0.1:8000/admin/blogs