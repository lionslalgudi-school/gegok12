#php artisan vendor:publish --tag=inventory-routes --force

#php artisan vendor:publish --tag=inventory-components --force

#php artisan vendor:publish --tag=inventory-views --force

#php artisan vendor:publish --tag=inventory-migrations --force

#php artisan vendor:publish --tag=inventory-config --force

php artisan db:seed --class="Gegok12\Inventory\Database\Seeders\CategoryTableSeeder"

php artisan db:seed --class="Gegok12\Inventory\Database\Seeders\VendorsTableSeeder"

php artisan db:seed --class="Gegok12\Inventory\Database\Seeders\LocationsTableSeeder"

php artisan db:seed --class="Gegok12\Inventory\Database\Seeders\CategoryVendorsTableSeeder"


