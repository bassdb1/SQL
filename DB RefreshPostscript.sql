DB::delete('delete from inventory where id > 998999');
DB::delete('delete from inventory_attributes where inventory_id > 998999');
DB::delete('delete from products where id > 998999');
DB::delete('delete from product_attributes where product_id > 998999');
DB::delete('delete from inventory_price_changes where inventory_id > 998999');
DB::delete('delete from service_requests where inventory_id > 998999');
DB::delete('delete from transportations where inventory_id > 998999 or contract_id > 998999');

# Action Buildings - Brandon Cantrell
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (328, 338, 339, 341, 342, 343, 1057, 1820, 2946');
DB::delete('delete from model_has_roles where model_id in (925) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 925, now(), now()),
(24, 'App\\Models\\User', 925, now(), now()),
(27, 'App\\Models\\User', 925, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999025, 328, 'storage_building', 8, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999026, 328, 'storage_building', 8, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999027, 338, 'storage_building', 7, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999028, 338, 'storage_building', 7, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999029, 339, 'storage_building', 27, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999030, 339, 'storage_building', 27, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999025, 'base_color_id', 'E', now() - interval 1 day, now()),
(999025, 'double_door', '0', now() - interval 1 day, now()),
(999025, 'garage_door', '0', now() - interval 1 day, now()),
(999025, 'length', '12', now() - interval 1 day, now()),
(999025, 'single_door', '1', now() - interval 1 day, now()),
(999025, 'style_id', 'LP', now() - interval 1 day, now()),
(999025, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999025, 'width', '8', now() - interval 1 day, now()),
(999025, 'windows', '2', now() - interval 1 day, now()),
(999026, 'base_color_id', 'E', now() - interval 3 day, now()),
(999026, 'double_door', '0', now() - interval 3 day, now()),
(999026, 'garage_door', '0', now() - interval 3 day, now()),
(999026, 'length', '16', now() - interval 3 day, now()),
(999026, 'single_door', '1', now() - interval 3 day, now()),
(999026, 'style_id', 'LP', now() - interval 3 day, now()),
(999026, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999026, 'width', '8', now() - interval 3 day, now()),
(999026, 'windows', '2', now() - interval 3 day, now()),
(999027, 'base_color_id', 'E', now() - interval 5 day, now()),
(999027, 'double_door', '0', now() - interval 5 day, now()),
(999027, 'garage_door', '0', now() - interval 5 day, now()),
(999027, 'length', '8', now() - interval 5 day, now()),
(999027, 'single_door', '1', now() - interval 5 day, now()),
(999027, 'style_id', 'W', now() - interval 5 day, now()),
(999027, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999027, 'width', '8', now() - interval 5 day, now()),
(999027, 'windows', '2', now() - interval 5 day, now()),
(999028, 'base_color_id', 'E', now() - interval 7 day, now()),
(999028, 'double_door', '0', now() - interval 7 day, now()),
(999028, 'garage_door', '0', now() - interval 7 day, now()),
(999028, 'length', '14', now() - interval 7 day, now()),
(999028, 'single_door', '1', now() - interval 7 day, now()),
(999028, 'style_id', 'LP', now() - interval 7 day, now()),
(999028, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999028, 'width', '8', now() - interval 7 day, now()),
(999028, 'windows', '2', now() - interval 7 day, now()),
(999029, 'base_color_id', 'T', now() - interval 9 day, now()),
(999029, 'double_door', '1', now() - interval 9 day, now()),
(999029, 'garage_door', '0', now() - interval 9 day, now()),
(999029, 'length', '12', now() - interval 9 day, now()),
(999029, 'single_door', '1', now() - interval 9 day, now()),
(999029, 'style_id', 'LP', now() - interval 9 day, now()),
(999029, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999029, 'width', '10', now() - interval 9 day, now()),
(999029, 'windows', '3', now() - interval 9 day, now()),
(999030, 'base_color_id', 'E', now() - interval 1 day, now()),
(999030, 'double_door', '0', now() - interval 1 day, now()),
(999030, 'garage_door', '0', now() - interval 1 day, now()),
(999030, 'length', '12', now() - interval 1 day, now()),
(999030, 'single_door', '1', now() - interval 1 day, now()),
(999030, 'style_id', 'LP', now() - interval 1 day, now()),
(999030, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999030, 'width', '8', now() - interval 1 day, now()),
(999030, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999025, 328, 925, 1850, 'Active', now(), now()),
(999026, 328, 925, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999025, 15, 925, 'Test Unit', now() - interval 1 day),
('Inventory', 999026, 15, 925, 'Test Unit', now() - interval 3 day),
('Inventory', 999027, 15, 925, 'Test Unit', now() - interval 5 day),
('Inventory', 999028, 15, 925, 'Test Unit', now() - interval 7 day),
('Inventory', 999029, 15, 925, 'Test Unit', now() - interval 9 day),
('Inventory', 999030, 15, 925, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999025), 74, 925, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999026), 74, 925, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(338, 925, 999027, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(33, 925, 999028, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 925, 999029, NULL, NULL, 339, 1820, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Backyard Creations
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (1017)');
DB::delete('delete from model_has_roles where model_id in (853) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 853, now(), now()),
(24, 'App\\Models\\User', 853, now(), now()),
(27, 'App\\Models\\User', 853, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999067, 1017, 'storage_building', 387, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999068, 1017, 'storage_building', 387, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999069, 1017, 'storage_building', 387, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999070, 1017, 'storage_building', 387, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999071, 1017, 'storage_building', 387, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999072, 1017, 'storage_building', 387, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999067, 'base_color_id', 'E', now() - interval 1 day, now()),
(999067, 'double_door', '0', now() - interval 1 day, now()),
(999067, 'garage_door', '0', now() - interval 1 day, now()),
(999067, 'length', '12', now() - interval 1 day, now()),
(999067, 'single_door', '1', now() - interval 1 day, now()),
(999067, 'style_id', 'LP', now() - interval 1 day, now()),
(999067, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999067, 'width', '8', now() - interval 1 day, now()),
(999067, 'windows', '2', now() - interval 1 day, now()),
(999068, 'base_color_id', 'E', now() - interval 3 day, now()),
(999068, 'double_door', '0', now() - interval 3 day, now()),
(999068, 'garage_door', '0', now() - interval 3 day, now()),
(999068, 'length', '16', now() - interval 3 day, now()),
(999068, 'single_door', '1', now() - interval 3 day, now()),
(999068, 'style_id', 'LP', now() - interval 3 day, now()),
(999068, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999068, 'width', '8', now() - interval 3 day, now()),
(999068, 'windows', '2', now() - interval 3 day, now()),
(999069, 'base_color_id', 'E', now() - interval 5 day, now()),
(999069, 'double_door', '0', now() - interval 5 day, now()),
(999069, 'garage_door', '0', now() - interval 5 day, now()),
(999069, 'length', '8', now() - interval 5 day, now()),
(999069, 'single_door', '1', now() - interval 5 day, now()),
(999069, 'style_id', 'W', now() - interval 5 day, now()),
(999069, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999069, 'width', '8', now() - interval 5 day, now()),
(999069, 'windows', '2', now() - interval 5 day, now()),
(999070, 'base_color_id', 'E', now() - interval 7 day, now()),
(999070, 'double_door', '0', now() - interval 7 day, now()),
(999070, 'garage_door', '0', now() - interval 7 day, now()),
(999070, 'length', '14', now() - interval 7 day, now()),
(999070, 'single_door', '1', now() - interval 7 day, now()),
(999070, 'style_id', 'LP', now() - interval 7 day, now()),
(999070, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999070, 'width', '8', now() - interval 7 day, now()),
(999070, 'windows', '2', now() - interval 7 day, now()),
(999071, 'base_color_id', 'T', now() - interval 9 day, now()),
(999071, 'double_door', '1', now() - interval 9 day, now()),
(999071, 'garage_door', '0', now() - interval 9 day, now()),
(999071, 'length', '12', now() - interval 9 day, now()),
(999071, 'single_door', '1', now() - interval 9 day, now()),
(999071, 'style_id', 'LP', now() - interval 9 day, now()),
(999071, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999071, 'width', '10', now() - interval 9 day, now()),
(999071, 'windows', '3', now() - interval 9 day, now()),
(999072, 'base_color_id', 'E', now() - interval 1 day, now()),
(999072, 'double_door', '0', now() - interval 1 day, now()),
(999072, 'garage_door', '0', now() - interval 1 day, now()),
(999072, 'length', '12', now() - interval 1 day, now()),
(999072, 'single_door', '1', now() - interval 1 day, now()),
(999072, 'style_id', 'LP', now() - interval 1 day, now()),
(999072, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999072, 'width', '8', now() - interval 1 day, now()),
(999072, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999067, 1017, 853, 1850, 'Active', now(), now()),
(999068, 1017, 853, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999067, 15, 853, 'Test Unit', now() - interval 1 day),
('Inventory', 999068, 15, 853, 'Test Unit', now() - interval 3 day),
('Inventory', 999069, 15, 853, 'Test Unit', now() - interval 5 day),
('Inventory', 999070, 15, 853, 'Test Unit', now() - interval 7 day),
('Inventory', 999071, 15, 853, 'Test Unit', now() - interval 9 day),
('Inventory', 999072, 15, 853, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999067), 74, 853, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999068), 74, 853, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(1017, 853, 999069, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(1017, 853, 999070, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 853, 999071, NULL, NULL, 1017, 1017, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Countryside Barns - Phil Braker
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (1308, 1342, 1403)');
DB::delete('delete from model_has_roles where model_id in (1398) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 1398, now(), now()),
(24, 'App\\Models\\User', 1398, now(), now()),
(27, 'App\\Models\\User', 1398, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999109, 1308, 'storage_building', 604, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999110, 1308, 'storage_building', 604, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999111, 1342, 'storage_building', 604, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999112, 1342, 'storage_building', 604, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999113, 1403, 'storage_building', 604, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999114, 1403, 'storage_building', 604, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999109, 'base_color_id', 'E', now() - interval 1 day, now()),
(999109, 'double_door', '0', now() - interval 1 day, now()),
(999109, 'garage_door', '0', now() - interval 1 day, now()),
(999109, 'length', '12', now() - interval 1 day, now()),
(999109, 'single_door', '1', now() - interval 1 day, now()),
(999109, 'style_id', 'LP', now() - interval 1 day, now()),
(999109, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999109, 'width', '8', now() - interval 1 day, now()),
(999109, 'windows', '2', now() - interval 1 day, now()),
(999110, 'base_color_id', 'E', now() - interval 3 day, now()),
(999110, 'double_door', '0', now() - interval 3 day, now()),
(999110, 'garage_door', '0', now() - interval 3 day, now()),
(999110, 'length', '16', now() - interval 3 day, now()),
(999110, 'single_door', '1', now() - interval 3 day, now()),
(999110, 'style_id', 'LP', now() - interval 3 day, now()),
(999110, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999110, 'width', '8', now() - interval 3 day, now()),
(999110, 'windows', '2', now() - interval 3 day, now()),
(999111, 'base_color_id', 'E', now() - interval 5 day, now()),
(999111, 'double_door', '0', now() - interval 5 day, now()),
(999111, 'garage_door', '0', now() - interval 5 day, now()),
(999111, 'length', '8', now() - interval 5 day, now()),
(999111, 'single_door', '1', now() - interval 5 day, now()),
(999111, 'style_id', 'W', now() - interval 5 day, now()),
(999111, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999111, 'width', '8', now() - interval 5 day, now()),
(999111, 'windows', '2', now() - interval 5 day, now()),
(999112, 'base_color_id', 'E', now() - interval 7 day, now()),
(999112, 'double_door', '0', now() - interval 7 day, now()),
(999112, 'garage_door', '0', now() - interval 7 day, now()),
(999112, 'length', '14', now() - interval 7 day, now()),
(999112, 'single_door', '1', now() - interval 7 day, now()),
(999112, 'style_id', 'LP', now() - interval 7 day, now()),
(999112, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999112, 'width', '8', now() - interval 7 day, now()),
(999112, 'windows', '2', now() - interval 7 day, now()),
(999113, 'base_color_id', 'T', now() - interval 9 day, now()),
(999113, 'double_door', '1', now() - interval 9 day, now()),
(999113, 'garage_door', '0', now() - interval 9 day, now()),
(999113, 'length', '12', now() - interval 9 day, now()),
(999113, 'single_door', '1', now() - interval 9 day, now()),
(999113, 'style_id', 'LP', now() - interval 9 day, now()),
(999113, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999113, 'width', '10', now() - interval 9 day, now()),
(999113, 'windows', '3', now() - interval 9 day, now()),
(999114, 'base_color_id', 'E', now() - interval 1 day, now()),
(999114, 'double_door', '0', now() - interval 1 day, now()),
(999114, 'garage_door', '0', now() - interval 1 day, now()),
(999114, 'length', '12', now() - interval 1 day, now()),
(999114, 'single_door', '1', now() - interval 1 day, now()),
(999114, 'style_id', 'LP', now() - interval 1 day, now()),
(999114, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999114, 'width', '8', now() - interval 1 day, now()),
(999114, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999109, 2443, 1308, 1398, 'Active', now(), now()),
(999110, 2443, 1308, 1398, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999109, 15, 1398, 'Test Unit', now() - interval 1 day),
('Inventory', 999110, 15, 1398, 'Test Unit', now() - interval 3 day),
('Inventory', 999111, 15, 1398, 'Test Unit', now() - interval 5 day),
('Inventory', 999112, 15, 1398, 'Test Unit', now() - interval 7 day),
('Inventory', 999113, 15, 1398, 'Test Unit', now() - interval 9 day),
('Inventory', 999114, 15, 1398, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999109), 74, 1398, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999110), 74, 1398, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(1342, 1398, 999111, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(1342, 1398, 999112, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 1398, 999113, NULL, NULL, 1403, 1342, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Cover All Sheds Inc - Mike
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (3653)');
DB::delete('delete from model_has_roles where model_id in (4752, 5457) and role_id > 10');
DB::delete('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 4752, now(), now()),
(24, 'App\\Models\\User', 4752, now(), now()),
(27, 'App\\Models\\User', 4752, now(), now()),
(23, 'App\\Models\\User', 5457, now(), now()),
(24, 'App\\Models\\User', 5457, now(), now()),
(27, 'App\\Models\\User', 5457, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999079, 3653, 'storage_building', 1280, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999080, 3653, 'storage_building', 1280, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999081, 3653, 'storage_building', 1280, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999082, 3653, 'storage_building', 1280, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999083, 3653, 'storage_building', 1280, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999084, 3653, 'storage_building', 1280, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999079, 'base_color_id', 'E', now() - interval 1 day, now()),
(999079, 'double_door', '0', now() - interval 1 day, now()),
(999079, 'garage_door', '0', now() - interval 1 day, now()),
(999079, 'length', '12', now() - interval 1 day, now()),
(999079, 'single_door', '1', now() - interval 1 day, now()),
(999079, 'style_id', 'LP', now() - interval 1 day, now()),
(999079, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999079, 'width', '8', now() - interval 1 day, now()),
(999079, 'windows', '2', now() - interval 1 day, now()),
(999080, 'base_color_id', 'E', now() - interval 3 day, now()),
(999080, 'double_door', '0', now() - interval 3 day, now()),
(999080, 'garage_door', '0', now() - interval 3 day, now()),
(999080, 'length', '16', now() - interval 3 day, now()),
(999080, 'single_door', '1', now() - interval 3 day, now()),
(999080, 'style_id', 'LP', now() - interval 3 day, now()),
(999080, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999080, 'width', '8', now() - interval 3 day, now()),
(999080, 'windows', '2', now() - interval 3 day, now()),
(999081, 'base_color_id', 'E', now() - interval 5 day, now()),
(999081, 'double_door', '0', now() - interval 5 day, now()),
(999081, 'garage_door', '0', now() - interval 5 day, now()),
(999081, 'length', '8', now() - interval 5 day, now()),
(999081, 'single_door', '1', now() - interval 5 day, now()),
(999081, 'style_id', 'W', now() - interval 5 day, now()),
(999081, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999081, 'width', '8', now() - interval 5 day, now()),
(999081, 'windows', '2', now() - interval 5 day, now()),
(999082, 'base_color_id', 'E', now() - interval 7 day, now()),
(999082, 'double_door', '0', now() - interval 7 day, now()),
(999082, 'garage_door', '0', now() - interval 7 day, now()),
(999082, 'length', '14', now() - interval 7 day, now()),
(999082, 'single_door', '1', now() - interval 7 day, now()),
(999082, 'style_id', 'LP', now() - interval 7 day, now()),
(999082, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999082, 'width', '8', now() - interval 7 day, now()),
(999082, 'windows', '2', now() - interval 7 day, now()),
(999083, 'base_color_id', 'T', now() - interval 9 day, now()),
(999083, 'double_door', '1', now() - interval 9 day, now()),
(999083, 'garage_door', '0', now() - interval 9 day, now()),
(999083, 'length', '12', now() - interval 9 day, now()),
(999083, 'single_door', '1', now() - interval 9 day, now()),
(999083, 'style_id', 'LP', now() - interval 9 day, now()),
(999083, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999083, 'width', '10', now() - interval 9 day, now()),
(999083, 'windows', '3', now() - interval 9 day, now()),
(999084, 'base_color_id', 'E', now() - interval 1 day, now()),
(999084, 'double_door', '0', now() - interval 1 day, now()),
(999084, 'garage_door', '0', now() - interval 1 day, now()),
(999084, 'length', '12', now() - interval 1 day, now()),
(999084, 'single_door', '1', now() - interval 1 day, now()),
(999084, 'style_id', 'LP', now() - interval 1 day, now()),
(999084, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999084, 'width', '8', now() - interval 1 day, now()),
(999084, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999079, 3653, 4752, 1850, 'Active', now(), now()),
(999080, 3653, 4752, 1777, 'Active', now(), now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999079, 15, 4752, 'Test Unit', now() - interval 1 day),
('Inventory', 999080, 15, 4752, 'Test Unit', now() - interval 3 day),
('Inventory', 999081, 15, 4752, 'Test Unit', now() - interval 5 day),
('Inventory', 999082, 15, 4752, 'Test Unit', now() - interval 7 day),
('Inventory', 999083, 15, 4752, 'Test Unit', now() - interval 9 day),
('Inventory', 999084, 15, 4752, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999079), 74, 4752, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999080), 74, 4752, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(3653, 4752, 999081, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(3653, 4752, 999082, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 4752, 999083, NULL, NULL, 3653, 3653, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');


# Delmarva Sheds - Dawn Duncan
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (2443)');
DB::delete('delete from model_has_roles where model_id in (3064) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 3064, now(), now()),
(24, 'App\\Models\\User', 3064, now(), now()),
(27, 'App\\Models\\User', 3064, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999049, 2443, 'storage_building', 846, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999050, 2443, 'storage_building', 846, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999051, 2443, 'storage_building', 846, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999052, 2443, 'storage_building', 846, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999053, 2443, 'storage_building', 846, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999054, 2443, 'storage_building', 846, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999049, 'base_color_id', 'E', now() - interval 1 day, now()),
(999049, 'double_door', '0', now() - interval 1 day, now()),
(999049, 'garage_door', '0', now() - interval 1 day, now()),
(999049, 'length', '12', now() - interval 1 day, now()),
(999049, 'single_door', '1', now() - interval 1 day, now()),
(999049, 'style_id', 'LP', now() - interval 1 day, now()),
(999049, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999049, 'width', '8', now() - interval 1 day, now()),
(999049, 'windows', '2', now() - interval 1 day, now()),
(999050, 'base_color_id', 'E', now() - interval 3 day, now()),
(999050, 'double_door', '0', now() - interval 3 day, now()),
(999050, 'garage_door', '0', now() - interval 3 day, now()),
(999050, 'length', '16', now() - interval 3 day, now()),
(999050, 'single_door', '1', now() - interval 3 day, now()),
(999050, 'style_id', 'LP', now() - interval 3 day, now()),
(999050, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999050, 'width', '8', now() - interval 3 day, now()),
(999050, 'windows', '2', now() - interval 3 day, now()),
(999051, 'base_color_id', 'E', now() - interval 5 day, now()),
(999051, 'double_door', '0', now() - interval 5 day, now()),
(999051, 'garage_door', '0', now() - interval 5 day, now()),
(999051, 'length', '8', now() - interval 5 day, now()),
(999051, 'single_door', '1', now() - interval 5 day, now()),
(999051, 'style_id', 'W', now() - interval 5 day, now()),
(999051, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999051, 'width', '8', now() - interval 5 day, now()),
(999051, 'windows', '2', now() - interval 5 day, now()),
(999052, 'base_color_id', 'E', now() - interval 7 day, now()),
(999052, 'double_door', '0', now() - interval 7 day, now()),
(999052, 'garage_door', '0', now() - interval 7 day, now()),
(999052, 'length', '14', now() - interval 7 day, now()),
(999052, 'single_door', '1', now() - interval 7 day, now()),
(999052, 'style_id', 'LP', now() - interval 7 day, now()),
(999052, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999052, 'width', '8', now() - interval 7 day, now()),
(999052, 'windows', '2', now() - interval 7 day, now()),
(999053, 'base_color_id', 'T', now() - interval 9 day, now()),
(999053, 'double_door', '1', now() - interval 9 day, now()),
(999053, 'garage_door', '0', now() - interval 9 day, now()),
(999053, 'length', '12', now() - interval 9 day, now()),
(999053, 'single_door', '1', now() - interval 9 day, now()),
(999053, 'style_id', 'LP', now() - interval 9 day, now()),
(999053, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999053, 'width', '10', now() - interval 9 day, now()),
(999053, 'windows', '3', now() - interval 9 day, now()),
(999054, 'base_color_id', 'E', now() - interval 1 day, now()),
(999054, 'double_door', '0', now() - interval 1 day, now()),
(999054, 'garage_door', '0', now() - interval 1 day, now()),
(999054, 'length', '12', now() - interval 1 day, now()),
(999054, 'single_door', '1', now() - interval 1 day, now()),
(999054, 'style_id', 'LP', now() - interval 1 day, now()),
(999054, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999054, 'width', '8', now() - interval 1 day, now()),
(999054, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999049, 2443, 3064, 1850, 'Active', now(), now()),
(999050, 2443, 3064, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999049, 15, 3064, 'Test Unit', now() - interval 1 day),
('Inventory', 999050, 15, 3064, 'Test Unit', now() - interval 3 day),
('Inventory', 999051, 15, 3064, 'Test Unit', now() - interval 5 day),
('Inventory', 999052, 15, 3064, 'Test Unit', now() - interval 7 day),
('Inventory', 999053, 15, 3064, 'Test Unit', now() - interval 9 day),
('Inventory', 999054, 15, 3064, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999049), 74, 3064, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999050), 74, 3064, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(2443, 3064, 999051, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(2443, 3064, 999052, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 3064, 999053, NULL, NULL, 2443, 2443, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Great Outdoors -
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (1670, 2017, 3280)');
DB::delete('delete from model_has_roles where model_id in (1930, 5346, 5347) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
# Robert Wise
(23, 'App\\Models\\User', 1930, now(), now()),
(24, 'App\\Models\\User', 1930, now(), now()),
(27, 'App\\Models\\User', 1930, now(), now()),
# Eddie Smith
(23, 'App\\Models\\User', 5346, now(), now()),
(24, 'App\\Models\\User', 5346, now(), now()),
# David Couse
(23, 'App\\Models\\User', 5347, now(), now()),
(24, 'App\\Models\\User', 5347, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999085, 1670, 'storage_building', 376, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999086, 1670, 'storage_building', 376, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999087, 2017, 'storage_building', 376, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999088, 2017, 'storage_building', 376, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999089, 3280, 'storage_building', 376, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999090, 3280, 'storage_building', 376, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999085, 'base_color_id', 'E', now() - interval 1 day, now()),
(999085, 'double_door', '0', now() - interval 1 day, now()),
(999085, 'garage_door', '0', now() - interval 1 day, now()),
(999085, 'length', '12', now() - interval 1 day, now()),
(999085, 'single_door', '1', now() - interval 1 day, now()),
(999085, 'style_id', 'LP', now() - interval 1 day, now()),
(999085, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999085, 'width', '8', now() - interval 1 day, now()),
(999085, 'windows', '2', now() - interval 1 day, now()),
(999086, 'base_color_id', 'E', now() - interval 3 day, now()),
(999086, 'double_door', '0', now() - interval 3 day, now()),
(999086, 'garage_door', '0', now() - interval 3 day, now()),
(999086, 'length', '16', now() - interval 3 day, now()),
(999086, 'single_door', '1', now() - interval 3 day, now()),
(999086, 'style_id', 'LP', now() - interval 3 day, now()),
(999086, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999086, 'width', '8', now() - interval 3 day, now()),
(999086, 'windows', '2', now() - interval 3 day, now()),
(999087, 'base_color_id', 'E', now() - interval 5 day, now()),
(999087, 'double_door', '0', now() - interval 5 day, now()),
(999087, 'garage_door', '0', now() - interval 5 day, now()),
(999087, 'length', '8', now() - interval 5 day, now()),
(999087, 'single_door', '1', now() - interval 5 day, now()),
(999087, 'style_id', 'W', now() - interval 5 day, now()),
(999087, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999087, 'width', '8', now() - interval 5 day, now()),
(999087, 'windows', '2', now() - interval 5 day, now()),
(999088, 'base_color_id', 'E', now() - interval 7 day, now()),
(999088, 'double_door', '0', now() - interval 7 day, now()),
(999088, 'garage_door', '0', now() - interval 7 day, now()),
(999088, 'length', '14', now() - interval 7 day, now()),
(999088, 'single_door', '1', now() - interval 7 day, now()),
(999088, 'style_id', 'LP', now() - interval 7 day, now()),
(999088, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999088, 'width', '8', now() - interval 7 day, now()),
(999088, 'windows', '2', now() - interval 7 day, now()),
(999089, 'base_color_id', 'T', now() - interval 9 day, now()),
(999089, 'double_door', '1', now() - interval 9 day, now()),
(999089, 'garage_door', '0', now() - interval 9 day, now()),
(999089, 'length', '12', now() - interval 9 day, now()),
(999089, 'single_door', '1', now() - interval 9 day, now()),
(999089, 'style_id', 'LP', now() - interval 9 day, now()),
(999089, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999089, 'width', '10', now() - interval 9 day, now()),
(999089, 'windows', '3', now() - interval 9 day, now()),
(999090, 'base_color_id', 'E', now() - interval 1 day, now()),
(999090, 'double_door', '0', now() - interval 1 day, now()),
(999090, 'garage_door', '0', now() - interval 1 day, now()),
(999090, 'length', '12', now() - interval 1 day, now()),
(999090, 'single_door', '1', now() - interval 1 day, now()),
(999090, 'style_id', 'LP', now() - interval 1 day, now()),
(999090, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999090, 'width', '8', now() - interval 1 day, now()),
(999090, 'windows', '2', now() - interval 1 day, now())');

DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999085, 1670, 5346, 1850, 'Active', now(), now()),
(999086, 1670, 5346, 1777, 'Active', now(), now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999085, 15, 5346, 'Test Unit', now() - interval 1 day),
('Inventory', 999086, 15, 5346, 'Test Unit', now() - interval 3 day),
('Inventory', 999087, 15, 5347, 'Test Unit', now() - interval 5 day),
('Inventory', 999088, 15, 5347, 'Test Unit', now() - interval 7 day),
('Inventory', 999089, 15, 1930, 'Test Unit', now() - interval 9 day),
('Inventory', 999090, 15, 1930, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999085), 74, 5346, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999086), 74, 5346, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(2017, 5347, 999087, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(2017, 5347, 999088, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 1930, 999090, NULL, NULL, 3280, 1670, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Hometown Sheds - Dan Bryant
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (455, 456, 458, 459, 460, 465, 594, 815, 816, 1512, 1688, 1976)');
DB::delete('delete from model_has_roles where model_id in (4731) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 4731, now(), now()),
(24, 'App\\Models\\User', 4731, now(), now()),
(27, 'App\\Models\\User', 4731, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999115, 455, 'storage_building', 473, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999116, 455, 'storage_building', 473, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999117, 456, 'storage_building', 473, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999118, 456, 'storage_building', 473, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999119, 458, 'storage_building', 473, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999120, 458, 'storage_building', 473, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999115, 'base_color_id', 'E', now() - interval 1 day, now()),
(999115, 'double_door', '0', now() - interval 1 day, now()),
(999115, 'garage_door', '0', now() - interval 1 day, now()),
(999115, 'length', '12', now() - interval 1 day, now()),
(999115, 'single_door', '1', now() - interval 1 day, now()),
(999115, 'style_id', 'LP', now() - interval 1 day, now()),
(999115, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999115, 'width', '8', now() - interval 1 day, now()),
(999115, 'windows', '2', now() - interval 1 day, now()),
(999116, 'base_color_id', 'E', now() - interval 3 day, now()),
(999116, 'double_door', '0', now() - interval 3 day, now()),
(999116, 'garage_door', '0', now() - interval 3 day, now()),
(999116, 'length', '16', now() - interval 3 day, now()),
(999116, 'single_door', '1', now() - interval 3 day, now()),
(999116, 'style_id', 'LP', now() - interval 3 day, now()),
(999116, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999116, 'width', '8', now() - interval 3 day, now()),
(999116, 'windows', '2', now() - interval 3 day, now()),
(999117, 'base_color_id', 'E', now() - interval 5 day, now()),
(999117, 'double_door', '0', now() - interval 5 day, now()),
(999117, 'garage_door', '0', now() - interval 5 day, now()),
(999117, 'length', '8', now() - interval 5 day, now()),
(999117, 'single_door', '1', now() - interval 5 day, now()),
(999117, 'style_id', 'W', now() - interval 5 day, now()),
(999117, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999117, 'width', '8', now() - interval 5 day, now()),
(999117, 'windows', '2', now() - interval 5 day, now()),
(999118, 'base_color_id', 'E', now() - interval 7 day, now()),
(999118, 'double_door', '0', now() - interval 7 day, now()),
(999118, 'garage_door', '0', now() - interval 7 day, now()),
(999118, 'length', '14', now() - interval 7 day, now()),
(999118, 'single_door', '1', now() - interval 7 day, now()),
(999118, 'style_id', 'LP', now() - interval 7 day, now()),
(999118, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999118, 'width', '8', now() - interval 7 day, now()),
(999118, 'windows', '2', now() - interval 7 day, now()),
(999119, 'base_color_id', 'T', now() - interval 9 day, now()),
(999119, 'double_door', '1', now() - interval 9 day, now()),
(999119, 'garage_door', '0', now() - interval 9 day, now()),
(999119, 'length', '12', now() - interval 9 day, now()),
(999119, 'single_door', '1', now() - interval 9 day, now()),
(999119, 'style_id', 'LP', now() - interval 9 day, now()),
(999119, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999119, 'width', '10', now() - interval 9 day, now()),
(999119, 'windows', '3', now() - interval 9 day, now()),
(999120, 'base_color_id', 'E', now() - interval 1 day, now()),
(999120, 'double_door', '0', now() - interval 1 day, now()),
(999120, 'garage_door', '0', now() - interval 1 day, now()),
(999120, 'length', '12', now() - interval 1 day, now()),
(999120, 'single_door', '1', now() - interval 1 day, now()),
(999120, 'style_id', 'LP', now() - interval 1 day, now()),
(999120, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999120, 'width', '8', now() - interval 1 day, now()),
(999120, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999115, 455, 4731, 1850, 'Active', now(), now()),
(999116, 455, 4731, 1777, 'Active', now(), now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999115, 15, 4731, 'Test Unit', now() - interval 1 day),
('Inventory', 999116, 15, 4731, 'Test Unit', now() - interval 3 day),
('Inventory', 999117, 15, 4731, 'Test Unit', now() - interval 5 day),
('Inventory', 999118, 15, 4731, 'Test Unit', now() - interval 7 day),
('Inventory', 999119, 15, 4731, 'Test Unit', now() - interval 9 day),
('Inventory', 999120, 15, 4731, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999115), 74, 4731, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999116), 74, 4731, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(456, 4731, 999117, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(456, 4731, 999118, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 4731, 999119, NULL, NULL, 458, 815, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Miller Sheds - Peter Miller
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (3097)');
DB::delete('delete from model_has_roles where model_id in (4354) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 4354, now(), now()),
(24, 'App\\Models\\User', 4354, now(), now()),
(27, 'App\\Models\\User', 4354, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999097, 3097, 'storage_building', 181, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999098, 3097, 'storage_building', 181, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999099, 3097, 'storage_building', 181, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999100, 3097, 'storage_building', 181, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999101, 3097, 'storage_building', 181, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999102, 3097, 'storage_building', 181, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999097, 'base_color_id', 'E', now() - interval 1 day, now()),
(999097, 'double_door', '0', now() - interval 1 day, now()),
(999097, 'garage_door', '0', now() - interval 1 day, now()),
(999097, 'length', '12', now() - interval 1 day, now()),
(999097, 'single_door', '1', now() - interval 1 day, now()),
(999097, 'style_id', 'LP', now() - interval 1 day, now()),
(999097, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999097, 'width', '8', now() - interval 1 day, now()),
(999097, 'windows', '2', now() - interval 1 day, now()),
(999098, 'base_color_id', 'E', now() - interval 3 day, now()),
(999098, 'double_door', '0', now() - interval 3 day, now()),
(999098, 'garage_door', '0', now() - interval 3 day, now()),
(999098, 'length', '16', now() - interval 3 day, now()),
(999098, 'single_door', '1', now() - interval 3 day, now()),
(999098, 'style_id', 'LP', now() - interval 3 day, now()),
(999098, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999098, 'width', '8', now() - interval 3 day, now()),
(999098, 'windows', '2', now() - interval 3 day, now()),
(999099, 'base_color_id', 'E', now() - interval 5 day, now()),
(999099, 'double_door', '0', now() - interval 5 day, now()),
(999099, 'garage_door', '0', now() - interval 5 day, now()),
(999099, 'length', '8', now() - interval 5 day, now()),
(999099, 'single_door', '1', now() - interval 5 day, now()),
(999099, 'style_id', 'W', now() - interval 5 day, now()),
(999099, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999099, 'width', '8', now() - interval 5 day, now()),
(999099, 'windows', '2', now() - interval 5 day, now()),
(999100, 'base_color_id', 'E', now() - interval 7 day, now()),
(999100, 'double_door', '0', now() - interval 7 day, now()),
(999100, 'garage_door', '0', now() - interval 7 day, now()),
(999100, 'length', '14', now() - interval 7 day, now()),
(999100, 'single_door', '1', now() - interval 7 day, now()),
(999100, 'style_id', 'LP', now() - interval 7 day, now()),
(999100, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999100, 'width', '8', now() - interval 7 day, now()),
(999100, 'windows', '2', now() - interval 7 day, now()),
(999101, 'base_color_id', 'T', now() - interval 9 day, now()),
(999101, 'double_door', '1', now() - interval 9 day, now()),
(999101, 'garage_door', '0', now() - interval 9 day, now()),
(999101, 'length', '12', now() - interval 9 day, now()),
(999101, 'single_door', '1', now() - interval 9 day, now()),
(999101, 'style_id', 'LP', now() - interval 9 day, now()),
(999101, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999101, 'width', '10', now() - interval 9 day, now()),
(999101, 'windows', '3', now() - interval 9 day, now()),
(999102, 'base_color_id', 'E', now() - interval 1 day, now()),
(999102, 'double_door', '0', now() - interval 1 day, now()),
(999102, 'garage_door', '0', now() - interval 1 day, now()),
(999102, 'length', '12', now() - interval 1 day, now()),
(999102, 'single_door', '1', now() - interval 1 day, now()),
(999102, 'style_id', 'LP', now() - interval 1 day, now()),
(999102, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999102, 'width', '8', now() - interval 1 day, now()),
(999102, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999097, 3097, 4356, 1850, 'Active', now(), now()),
(999098, 3097, 4356, 1777, 'Active', now(), now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999097, 15, 4354, 'Test Unit', now() - interval 1 day),
('Inventory', 999098, 15, 4354, 'Test Unit', now() - interval 3 day),
('Inventory', 999099, 15, 4354, 'Test Unit', now() - interval 5 day),
('Inventory', 999100, 15, 4354, 'Test Unit', now() - interval 7 day),
('Inventory', 999101, 15, 4354, 'Test Unit', now() - interval 9 day),
('Inventory', 999102, 15, 4354, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999097), 74, 4354, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999098), 74, 4354, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(3097, 4354, 999099, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(3097, 4354, 999100, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 4354, 999102, NULL, NULL, 3097, 3097, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Morrell Portable Buildings - Andy Morrell
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (527)');
DB::delete('delete from model_has_roles where model_id in (306) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 306, now(), now()),
(24, 'App\\Models\\User', 306, now(), now()),
(27, 'App\\Models\\User', 306, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999055, 527, 'storage_building', 225, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999056, 527, 'storage_building', 225, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999057, 527, 'storage_building', 807, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999058, 527, 'storage_building', 807, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999059, 527, 'storage_building', 944, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999060, 527, 'storage_building', 944, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999055, 'base_color_id', 'E', now() - interval 1 day, now()),
(999055, 'double_door', '0', now() - interval 1 day, now()),
(999055, 'garage_door', '0', now() - interval 1 day, now()),
(999055, 'length', '12', now() - interval 1 day, now()),
(999055, 'single_door', '1', now() - interval 1 day, now()),
(999055, 'style_id', 'LP', now() - interval 1 day, now()),
(999055, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999055, 'width', '8', now() - interval 1 day, now()),
(999055, 'windows', '2', now() - interval 1 day, now()),
(999056, 'base_color_id', 'E', now() - interval 3 day, now()),
(999056, 'double_door', '0', now() - interval 3 day, now()),
(999056, 'garage_door', '0', now() - interval 3 day, now()),
(999056, 'length', '16', now() - interval 3 day, now()),
(999056, 'single_door', '1', now() - interval 3 day, now()),
(999056, 'style_id', 'LP', now() - interval 3 day, now()),
(999056, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999056, 'width', '8', now() - interval 3 day, now()),
(999056, 'windows', '2', now() - interval 3 day, now()),
(999057, 'base_color_id', 'E', now() - interval 5 day, now()),
(999057, 'double_door', '0', now() - interval 5 day, now()),
(999057, 'garage_door', '0', now() - interval 5 day, now()),
(999057, 'length', '8', now() - interval 5 day, now()),
(999057, 'single_door', '1', now() - interval 5 day, now()),
(999057, 'style_id', 'W', now() - interval 5 day, now()),
(999057, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999057, 'width', '8', now() - interval 5 day, now()),
(999057, 'windows', '2', now() - interval 5 day, now()),
(999058, 'base_color_id', 'E', now() - interval 7 day, now()),
(999058, 'double_door', '0', now() - interval 7 day, now()),
(999058, 'garage_door', '0', now() - interval 7 day, now()),
(999058, 'length', '14', now() - interval 7 day, now()),
(999058, 'single_door', '1', now() - interval 7 day, now()),
(999058, 'style_id', 'LP', now() - interval 7 day, now()),
(999058, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999058, 'width', '8', now() - interval 7 day, now()),
(999058, 'windows', '2', now() - interval 7 day, now()),
(999059, 'base_color_id', 'T', now() - interval 9 day, now()),
(999059, 'double_door', '1', now() - interval 9 day, now()),
(999059, 'garage_door', '0', now() - interval 9 day, now()),
(999059, 'length', '12', now() - interval 9 day, now()),
(999059, 'single_door', '1', now() - interval 9 day, now()),
(999059, 'style_id', 'LP', now() - interval 9 day, now()),
(999059, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999059, 'width', '10', now() - interval 9 day, now()),
(999059, 'windows', '3', now() - interval 9 day, now()),
(999060, 'base_color_id', 'E', now() - interval 1 day, now()),
(999060, 'double_door', '0', now() - interval 1 day, now()),
(999060, 'garage_door', '0', now() - interval 1 day, now()),
(999060, 'length', '12', now() - interval 1 day, now()),
(999060, 'single_door', '1', now() - interval 1 day, now()),
(999060, 'style_id', 'LP', now() - interval 1 day, now()),
(999060, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999060, 'width', '8', now() - interval 1 day, now()),
(999060, 'windows', '2', now() - interval 1 day, now())');

DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999055, 527, 306, 1850, 'Active', now(), now()),
(999056, 527, 306, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999055, 15, 306, 'Test Unit', now() - interval 1 day),
('Inventory', 999056, 15, 306, 'Test Unit', now() - interval 3 day),
('Inventory', 999057, 15, 306, 'Test Unit', now() - interval 5 day),
('Inventory', 999058, 15, 306, 'Test Unit', now() - interval 7 day),
('Inventory', 999059, 15, 306, 'Test Unit', now() - interval 9 day),
('Inventory', 999060, 15, 306, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999055), 74, 306, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999056), 74, 306, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(527, 306, 999057, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(527, 306, 999058, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 306, 999059, NULL, NULL, 527, 527, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Mountain View Construction - Reuben Eischer
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (849,850,851,852,1145,1180,1218,1239,1244,1356,1364,1392,1459,1468,1493,1618,1619,1735,1817,1818,1899,1962,1963,2031,2050,2226,2259,2315,2384)');
DB::update('update users set active = 1 where id in (619)');
DB::delete('delete from model_has_roles where model_id in (619) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 619, now(), now()),
(24, 'App\\Models\\User', 619, now(), now()),
(27, 'App\\Models\\User', 619, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999061, 849, 'storage_building', 348, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999062, 849, 'storage_building', 348, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999063, 849, 'storage_building', 348, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999064, 849, 'storage_building', 348, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999065, 849, 'storage_building', 348, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999066, 849, 'storage_building', 348, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999061, 'base_color_id', 'E', now() - interval 1 day, now()),
(999061, 'double_door', '0', now() - interval 1 day, now()),
(999061, 'garage_door', '0', now() - interval 1 day, now()),
(999061, 'length', '12', now() - interval 1 day, now()),
(999061, 'single_door', '1', now() - interval 1 day, now()),
(999061, 'style_id', 'LP', now() - interval 1 day, now()),
(999061, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999061, 'width', '8', now() - interval 1 day, now()),
(999061, 'windows', '2', now() - interval 1 day, now()),
(999062, 'base_color_id', 'E', now() - interval 3 day, now()),
(999062, 'double_door', '0', now() - interval 3 day, now()),
(999062, 'garage_door', '0', now() - interval 3 day, now()),
(999062, 'length', '16', now() - interval 3 day, now()),
(999062, 'single_door', '1', now() - interval 3 day, now()),
(999062, 'style_id', 'LP', now() - interval 3 day, now()),
(999062, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999062, 'width', '8', now() - interval 3 day, now()),
(999062, 'windows', '2', now() - interval 3 day, now()),
(999063, 'base_color_id', 'E', now() - interval 5 day, now()),
(999063, 'double_door', '0', now() - interval 5 day, now()),
(999063, 'garage_door', '0', now() - interval 5 day, now()),
(999063, 'length', '8', now() - interval 5 day, now()),
(999063, 'single_door', '1', now() - interval 5 day, now()),
(999063, 'style_id', 'W', now() - interval 5 day, now()),
(999063, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999063, 'width', '8', now() - interval 5 day, now()),
(999063, 'windows', '2', now() - interval 5 day, now()),
(999064, 'base_color_id', 'E', now() - interval 7 day, now()),
(999064, 'double_door', '0', now() - interval 7 day, now()),
(999064, 'garage_door', '0', now() - interval 7 day, now()),
(999064, 'length', '14', now() - interval 7 day, now()),
(999064, 'single_door', '1', now() - interval 7 day, now()),
(999064, 'style_id', 'LP', now() - interval 7 day, now()),
(999064, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999064, 'width', '8', now() - interval 7 day, now()),
(999064, 'windows', '2', now() - interval 7 day, now()),
(999065, 'base_color_id', 'T', now() - interval 9 day, now()),
(999065, 'double_door', '1', now() - interval 9 day, now()),
(999065, 'garage_door', '0', now() - interval 9 day, now()),
(999065, 'length', '12', now() - interval 9 day, now()),
(999065, 'single_door', '1', now() - interval 9 day, now()),
(999065, 'style_id', 'LP', now() - interval 9 day, now()),
(999065, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999065, 'width', '10', now() - interval 9 day, now()),
(999065, 'windows', '3', now() - interval 9 day, now()),
(999066, 'base_color_id', 'E', now() - interval 1 day, now()),
(999066, 'double_door', '0', now() - interval 1 day, now()),
(999066, 'garage_door', '0', now() - interval 1 day, now()),
(999066, 'length', '12', now() - interval 1 day, now()),
(999066, 'single_door', '1', now() - interval 1 day, now()),
(999066, 'style_id', 'LP', now() - interval 1 day, now()),
(999066, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999066, 'width', '8', now() - interval 1 day, now()),
(999066, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999061, 849, 619, 1850, 'Active', now(), now()),
(999062, 849, 619, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999061, 15, 619, 'Test Unit', now() - interval 1 day),
('Inventory', 999062, 15, 619, 'Test Unit', now() - interval 3 day),
('Inventory', 999063, 15, 619, 'Test Unit', now() - interval 5 day),
('Inventory', 999064, 15, 619, 'Test Unit', now() - interval 7 day),
('Inventory', 999065, 15, 619, 'Test Unit', now() - interval 9 day),
('Inventory', 999066, 15, 619, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999061), 74, 619, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999062), 74, 619, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(849, 619, 999063, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(849, 619, 999064, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 619, 999066, NULL, NULL, 849, 850, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# R&M Investment Holdings - Robert Menah
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (2877)');
DB::delete('delete from model_has_roles where model_id in (3941) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 3941, now(), now()),
(24, 'App\\Models\\User', 3941, now(), now()),
(27, 'App\\Models\\User', 3941, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999043, 2877, 'storage_building', 1098, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999044, 2877, 'storage_building', 1098, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999045, 2877, 'storage_building', 1098, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999046, 2877, 'storage_building', 1098, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999047, 2877, 'storage_building', 1098, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999048, 2877, 'storage_building', 1098, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999043, 'base_color_id', 'E', now() - interval 1 day, now()),
(999043, 'double_door', '0', now() - interval 1 day, now()),
(999043, 'garage_door', '0', now() - interval 1 day, now()),
(999043, 'length', '12', now() - interval 1 day, now()),
(999043, 'single_door', '1', now() - interval 1 day, now()),
(999043, 'style_id', 'LP', now() - interval 1 day, now()),
(999043, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999043, 'width', '8', now() - interval 1 day, now()),
(999043, 'windows', '2', now() - interval 1 day, now()),
(999044, 'base_color_id', 'E', now() - interval 3 day, now()),
(999044, 'double_door', '0', now() - interval 3 day, now()),
(999044, 'garage_door', '0', now() - interval 3 day, now()),
(999044, 'length', '16', now() - interval 3 day, now()),
(999044, 'single_door', '1', now() - interval 3 day, now()),
(999044, 'style_id', 'LP', now() - interval 3 day, now()),
(999044, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999044, 'width', '8', now() - interval 3 day, now()),
(999044, 'windows', '2', now() - interval 3 day, now()),
(999045, 'base_color_id', 'E', now() - interval 5 day, now()),
(999045, 'double_door', '0', now() - interval 5 day, now()),
(999045, 'garage_door', '0', now() - interval 5 day, now()),
(999045, 'length', '8', now() - interval 5 day, now()),
(999045, 'single_door', '1', now() - interval 5 day, now()),
(999045, 'style_id', 'W', now() - interval 5 day, now()),
(999045, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999045, 'width', '8', now() - interval 5 day, now()),
(999045, 'windows', '2', now() - interval 5 day, now()),
(999046, 'base_color_id', 'E', now() - interval 7 day, now()),
(999046, 'double_door', '0', now() - interval 7 day, now()),
(999046, 'garage_door', '0', now() - interval 7 day, now()),
(999046, 'length', '14', now() - interval 7 day, now()),
(999046, 'single_door', '1', now() - interval 7 day, now()),
(999046, 'style_id', 'LP', now() - interval 7 day, now()),
(999046, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999046, 'width', '8', now() - interval 7 day, now()),
(999046, 'windows', '2', now() - interval 7 day, now()),
(999047, 'base_color_id', 'T', now() - interval 9 day, now()),
(999047, 'double_door', '1', now() - interval 9 day, now()),
(999047, 'garage_door', '0', now() - interval 9 day, now()),
(999047, 'length', '12', now() - interval 9 day, now()),
(999047, 'single_door', '1', now() - interval 9 day, now()),
(999047, 'style_id', 'LP', now() - interval 9 day, now()),
(999047, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999047, 'width', '10', now() - interval 9 day, now()),
(999047, 'windows', '3', now() - interval 9 day, now()),
(999048, 'base_color_id', 'E', now() - interval 1 day, now()),
(999048, 'double_door', '0', now() - interval 1 day, now()),
(999048, 'garage_door', '0', now() - interval 1 day, now()),
(999048, 'length', '12', now() - interval 1 day, now()),
(999048, 'single_door', '1', now() - interval 1 day, now()),
(999048, 'style_id', 'LP', now() - interval 1 day, now()),
(999048, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999048, 'width', '8', now() - interval 1 day, now()),
(999048, 'windows', '2', now() - interval 1 day, now())');

DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999043, 2877, 3941, 1850, 'Active', now(), now()),
(999044, 2877, 3941, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999043, 15, 3941, 'Test Unit', now() - interval 1 day),
('Inventory', 999044, 15, 3941, 'Test Unit', now() - interval 3 day),
('Inventory', 999045, 15, 3941, 'Test Unit', now() - interval 5 day),
('Inventory', 999046, 15, 3941, 'Test Unit', now() - interval 7 day),
('Inventory', 999047, 15, 3941, 'Test Unit', now() - interval 9 day),
('Inventory', 999048, 15, 3941, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999043), 74, 3941, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999044), 74, 3941, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(2877, 3941, 999045, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(2877, 3941, 999046, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 3941, 999048, NULL, NULL, 2877, 2877, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Shed 4 Less - Larry Wood
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (729, 1133, 1374, 2414, 3099, 3272)');
DB::delete('delete from model_has_roles where model_id in (503) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 503, now(), now()),
(24, 'App\\Models\\User', 503, now(), now()),
(27, 'App\\Models\\User', 503, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999103, 729, 'storage_building', 259, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999104, 729, 'storage_building', 259, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999105, 1133, 'storage_building', 228, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999106, 1133, 'storage_building', 228, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999107, 1374, 'storage_building', 260, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999108, 1374, 'storage_building', 260, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999103, 'base_color_id', 'E', now() - interval 1 day, now()),
(999103, 'double_door', '0', now() - interval 1 day, now()),
(999103, 'garage_door', '0', now() - interval 1 day, now()),
(999103, 'length', '12', now() - interval 1 day, now()),
(999103, 'single_door', '1', now() - interval 1 day, now()),
(999103, 'style_id', 'LP', now() - interval 1 day, now()),
(999103, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999103, 'width', '8', now() - interval 1 day, now()),
(999103, 'windows', '2', now() - interval 1 day, now()),
(999104, 'base_color_id', 'E', now() - interval 3 day, now()),
(999104, 'double_door', '0', now() - interval 3 day, now()),
(999104, 'garage_door', '0', now() - interval 3 day, now()),
(999104, 'length', '16', now() - interval 3 day, now()),
(999104, 'single_door', '1', now() - interval 3 day, now()),
(999104, 'style_id', 'LP', now() - interval 3 day, now()),
(999104, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999104, 'width', '8', now() - interval 3 day, now()),
(999104, 'windows', '2', now() - interval 3 day, now()),
(999105, 'base_color_id', 'E', now() - interval 5 day, now()),
(999105, 'double_door', '0', now() - interval 5 day, now()),
(999105, 'garage_door', '0', now() - interval 5 day, now()),
(999105, 'length', '8', now() - interval 5 day, now()),
(999105, 'single_door', '1', now() - interval 5 day, now()),
(999105, 'style_id', 'W', now() - interval 5 day, now()),
(999105, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999105, 'width', '8', now() - interval 5 day, now()),
(999105, 'windows', '2', now() - interval 5 day, now()),
(999106, 'base_color_id', 'E', now() - interval 7 day, now()),
(999106, 'double_door', '0', now() - interval 7 day, now()),
(999106, 'garage_door', '0', now() - interval 7 day, now()),
(999106, 'length', '14', now() - interval 7 day, now()),
(999106, 'single_door', '1', now() - interval 7 day, now()),
(999106, 'style_id', 'LP', now() - interval 7 day, now()),
(999106, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999106, 'width', '8', now() - interval 7 day, now()),
(999106, 'windows', '2', now() - interval 7 day, now()),
(999107, 'base_color_id', 'T', now() - interval 9 day, now()),
(999107, 'double_door', '1', now() - interval 9 day, now()),
(999107, 'garage_door', '0', now() - interval 9 day, now()),
(999107, 'length', '12', now() - interval 9 day, now()),
(999107, 'single_door', '1', now() - interval 9 day, now()),
(999107, 'style_id', 'LP', now() - interval 9 day, now()),
(999107, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999107, 'width', '10', now() - interval 9 day, now()),
(999107, 'windows', '3', now() - interval 9 day, now()),
(999108, 'base_color_id', 'E', now() - interval 1 day, now()),
(999108, 'double_door', '0', now() - interval 1 day, now()),
(999108, 'garage_door', '0', now() - interval 1 day, now()),
(999108, 'length', '12', now() - interval 1 day, now()),
(999108, 'single_door', '1', now() - interval 1 day, now()),
(999108, 'style_id', 'LP', now() - interval 1 day, now()),
(999108, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999108, 'width', '8', now() - interval 1 day, now()),
(999108, 'windows', '2', now() - interval 1 day, now())');

DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999103, 729, 503, 1850, 'Active', now(), now()),
(999104, 729, 503, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999103, 15, 503, 'Test Unit', now() - interval 1 day),
('Inventory', 999104, 15, 503, 'Test Unit', now() - interval 3 day),
('Inventory', 999105, 15, 503, 'Test Unit', now() - interval 5 day),
('Inventory', 999106, 15, 503, 'Test Unit', now() - interval 7 day),
('Inventory', 999107, 15, 503, 'Test Unit', now() - interval 9 day),
('Inventory', 999108, 15, 503, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999103), 74, 503, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999104), 74, 503, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(1133, 503, 999105, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(1133, 503, 999106, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 503, 999108, NULL, NULL, 1374, 2414, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Southeastern Portable Buildings - Jeff Mullis
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (480, 2755, 3104)');
DB::delete('delete from model_has_roles where model_id in (1182) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 1182, now(), now()),
(24, 'App\\Models\\User', 1182, now(), now()),
(27, 'App\\Models\\User', 1182, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999031, 480, 'storage_building', 220, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999032, 480, 'storage_building', 220, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999033, 2755, 'storage_building', 220, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999034, 3104, 'storage_building', 220, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999035, 2755, 'storage_building', 220, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999036, 3104, 'storage_building', 220, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999031, 'base_color_id', 'E', now() - interval 1 day, now()),
(999031, 'double_door', '0', now() - interval 1 day, now()),
(999031, 'garage_door', '0', now() - interval 1 day, now()),
(999031, 'length', '12', now() - interval 1 day, now()),
(999031, 'single_door', '1', now() - interval 1 day, now()),
(999031, 'style_id', 'LP', now() - interval 1 day, now()),
(999031, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999031, 'width', '8', now() - interval 1 day, now()),
(999031, 'windows', '2', now() - interval 1 day, now()),
(999032, 'base_color_id', 'E', now() - interval 3 day, now()),
(999032, 'double_door', '0', now() - interval 3 day, now()),
(999032, 'garage_door', '0', now() - interval 3 day, now()),
(999032, 'length', '16', now() - interval 3 day, now()),
(999032, 'single_door', '1', now() - interval 3 day, now()),
(999032, 'style_id', 'LP', now() - interval 3 day, now()),
(999032, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999032, 'width', '8', now() - interval 3 day, now()),
(999032, 'windows', '2', now() - interval 3 day, now()),
(999033, 'base_color_id', 'E', now() - interval 5 day, now()),
(999033, 'double_door', '0', now() - interval 5 day, now()),
(999033, 'garage_door', '0', now() - interval 5 day, now()),
(999033, 'length', '8', now() - interval 5 day, now()),
(999033, 'single_door', '1', now() - interval 5 day, now()),
(999033, 'style_id', 'W', now() - interval 5 day, now()),
(999033, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999033, 'width', '8', now() - interval 5 day, now()),
(999033, 'windows', '2', now() - interval 5 day, now()),
(999034, 'base_color_id', 'E', now() - interval 7 day, now()),
(999034, 'double_door', '0', now() - interval 7 day, now()),
(999034, 'garage_door', '0', now() - interval 7 day, now()),
(999034, 'length', '14', now() - interval 7 day, now()),
(999034, 'single_door', '1', now() - interval 7 day, now()),
(999034, 'style_id', 'LP', now() - interval 7 day, now()),
(999034, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999034, 'width', '8', now() - interval 7 day, now()),
(999034, 'windows', '2', now() - interval 7 day, now()),
(999035, 'base_color_id', 'T', now() - interval 9 day, now()),
(999035, 'double_door', '1', now() - interval 9 day, now()),
(999035, 'garage_door', '0', now() - interval 9 day, now()),
(999035, 'length', '12', now() - interval 9 day, now()),
(999035, 'single_door', '1', now() - interval 9 day, now()),
(999035, 'style_id', 'LP', now() - interval 9 day, now()),
(999035, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999035, 'width', '10', now() - interval 9 day, now()),
(999035, 'windows', '3', now() - interval 9 day, now()),
(999036, 'base_color_id', 'E', now() - interval 1 day, now()),
(999036, 'double_door', '0', now() - interval 1 day, now()),
(999036, 'garage_door', '0', now() - interval 1 day, now()),
(999036, 'length', '12', now() - interval 1 day, now()),
(999036, 'single_door', '1', now() - interval 1 day, now()),
(999036, 'style_id', 'LP', now() - interval 1 day, now()),
(999036, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999036, 'width', '8', now() - interval 1 day, now()),
(999036, 'windows', '2', now() - interval 1 day, now())');

DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999036, 3104, 1182, 1850, 'Active', now(), now()),
(999035, 2755, 1182, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999031, 15, 1182, 'Test Unit', now() - interval 1 day),
('Inventory', 999032, 15, 1182, 'Test Unit', now() - interval 3 day),
('Inventory', 999033, 15, 1182, 'Test Unit', now() - interval 5 day),
('Inventory', 999034, 15, 1182, 'Test Unit', now() - interval 7 day),
('Inventory', 999035, 15, 1182, 'Test Unit', now() - interval 9 day),
('Inventory', 999036, 15, 1182, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999036), 74, 1182, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999035), 74, 1182, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(3104, 1182, 999036, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(480, 1182, 999031, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 1182, 999025, NULL, NULL, 2755, 480, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Star Log Cabins
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (3006)');
DB::delete('delete from model_has_roles where model_id in (4123) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 4123, now(), now()),
(24, 'App\\Models\\User', 4123, now(), now()),
(27, 'App\\Models\\User', 4123, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999037, 3006, 'storage_building', 1147, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999038, 3006, 'storage_building', 1147, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999039, 3006, 'storage_building', 1147, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999040, 3006, 'storage_building', 1147, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999041, 3006, 'storage_building', 1147, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999042, 3006, 'storage_building', 1147, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999037, 'base_color_id', 'E', now() - interval 1 day, now()),
(999037, 'double_door', '0', now() - interval 1 day, now()),
(999037, 'garage_door', '0', now() - interval 1 day, now()),
(999037, 'length', '12', now() - interval 1 day, now()),
(999037, 'single_door', '1', now() - interval 1 day, now()),
(999037, 'style_id', 'LP', now() - interval 1 day, now()),
(999037, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999037, 'width', '8', now() - interval 1 day, now()),
(999037, 'windows', '2', now() - interval 1 day, now()),
(999038, 'base_color_id', 'E', now() - interval 3 day, now()),
(999038, 'double_door', '0', now() - interval 3 day, now()),
(999038, 'garage_door', '0', now() - interval 3 day, now()),
(999038, 'length', '16', now() - interval 3 day, now()),
(999038, 'single_door', '1', now() - interval 3 day, now()),
(999038, 'style_id', 'LP', now() - interval 3 day, now()),
(999038, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999038, 'width', '8', now() - interval 3 day, now()),
(999038, 'windows', '2', now() - interval 3 day, now()),
(999039, 'base_color_id', 'E', now() - interval 5 day, now()),
(999039, 'double_door', '0', now() - interval 5 day, now()),
(999039, 'garage_door', '0', now() - interval 5 day, now()),
(999039, 'length', '8', now() - interval 5 day, now()),
(999039, 'single_door', '1', now() - interval 5 day, now()),
(999039, 'style_id', 'W', now() - interval 5 day, now()),
(999039, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999039, 'width', '8', now() - interval 5 day, now()),
(999039, 'windows', '2', now() - interval 5 day, now()),
(999040, 'base_color_id', 'E', now() - interval 7 day, now()),
(999040, 'double_door', '0', now() - interval 7 day, now()),
(999040, 'garage_door', '0', now() - interval 7 day, now()),
(999040, 'length', '14', now() - interval 7 day, now()),
(999040, 'single_door', '1', now() - interval 7 day, now()),
(999040, 'style_id', 'LP', now() - interval 7 day, now()),
(999040, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999040, 'width', '8', now() - interval 7 day, now()),
(999040, 'windows', '2', now() - interval 7 day, now()),
(999041, 'base_color_id', 'T', now() - interval 9 day, now()),
(999041, 'double_door', '1', now() - interval 9 day, now()),
(999041, 'garage_door', '0', now() - interval 9 day, now()),
(999041, 'length', '12', now() - interval 9 day, now()),
(999041, 'single_door', '1', now() - interval 9 day, now()),
(999041, 'style_id', 'LP', now() - interval 9 day, now()),
(999041, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999041, 'width', '10', now() - interval 9 day, now()),
(999041, 'windows', '3', now() - interval 9 day, now()),
(999042, 'base_color_id', 'E', now() - interval 1 day, now()),
(999042, 'double_door', '0', now() - interval 1 day, now()),
(999042, 'garage_door', '0', now() - interval 1 day, now()),
(999042, 'length', '12', now() - interval 1 day, now()),
(999042, 'single_door', '1', now() - interval 1 day, now()),
(999042, 'style_id', 'LP', now() - interval 1 day, now()),
(999042, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999042, 'width', '8', now() - interval 1 day, now()),
(999042, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999037, 3006, 4123, 1850, 'Active', now(), now()),
(999038, 3006, 4123, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999037, 15, 4123, 'DD037 Test Unit', now() - interval 1 day),
('Inventory', 999038, 15, 4123, 'DD038 Test Unit', now() - interval 3 day),
('Inventory', 999039, 15, 4123, 'DD039 Test Unit', now() - interval 5 day),
('Inventory', 999040, 15, 4123, 'DD040 Test Unit', now() - interval 7 day),
('Inventory', 999041, 15, 4123, 'DD041 Test Unit', now() - interval 9 day),
('Inventory', 999042, 15, 4123, 'DD042 Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999037), 74, 4123, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999038), 74, 4123, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(3006, 4123, 999039, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(3006, 4123, 999040, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 4123, 999042, NULL, NULL, 3006, 3006, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# Timberline Barns - Daniel Vendley
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (532,544,1566,2184)');
DB::delete('delete from model_has_roles where model_id in (4468) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 4468, now(), now()),
(24, 'App\\Models\\User', 4468, now(), now()),
(27, 'App\\Models\\User', 4468, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `on_lot`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `condition`, `floorplan_program`, `from_rtof`, `status`, `owner`, `created`, `modified`) VALUES
(999073, 532, 'storage_building', 240, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 1 day, now()),
(999074, 532, 'storage_building', 240, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, now() - interval 3 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer',now() - interval 3 day , now()),
(999075, 544, 'storage_building', 240, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, now() - interval 5 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 5 day, now()),
(999076, 544, 'storage_building', 240, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, now() - interval 7 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Dealer', now() - interval 7 day, now()),
(999077, 1566, 'storage_building', 240, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, now() - interval 9 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 9 day, now()),
(999078, 2184, 'storage_building', 240, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, now() - interval 1 day, 2000.00, 2000.00, 2000.00, 2000.00, 'New', 0, 0, 'There', 'Manufacturer', now() - interval 1 day, now())');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999073, 'base_color_id', 'E', now() - interval 1 day, now()),
(999073, 'double_door', '0', now() - interval 1 day, now()),
(999073, 'garage_door', '0', now() - interval 1 day, now()),
(999073, 'length', '12', now() - interval 1 day, now()),
(999073, 'single_door', '1', now() - interval 1 day, now()),
(999073, 'style_id', 'LP', now() - interval 1 day, now()),
(999073, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999073, 'width', '8', now() - interval 1 day, now()),
(999073, 'windows', '2', now() - interval 1 day, now()),
(999074, 'base_color_id', 'E', now() - interval 3 day, now()),
(999074, 'double_door', '0', now() - interval 3 day, now()),
(999074, 'garage_door', '0', now() - interval 3 day, now()),
(999074, 'length', '16', now() - interval 3 day, now()),
(999074, 'single_door', '1', now() - interval 3 day, now()),
(999074, 'style_id', 'LP', now() - interval 3 day, now()),
(999074, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999074, 'width', '8', now() - interval 3 day, now()),
(999074, 'windows', '2', now() - interval 3 day, now()),
(999075, 'base_color_id', 'E', now() - interval 5 day, now()),
(999075, 'double_door', '0', now() - interval 5 day, now()),
(999075, 'garage_door', '0', now() - interval 5 day, now()),
(999075, 'length', '8', now() - interval 5 day, now()),
(999075, 'single_door', '1', now() - interval 5 day, now()),
(999075, 'style_id', 'W', now() - interval 5 day, now()),
(999075, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999075, 'width', '8', now() - interval 5 day, now()),
(999075, 'windows', '2', now() - interval 5 day, now()),
(999076, 'base_color_id', 'E', now() - interval 7 day, now()),
(999076, 'double_door', '0', now() - interval 7 day, now()),
(999076, 'garage_door', '0', now() - interval 7 day, now()),
(999076, 'length', '14', now() - interval 7 day, now()),
(999076, 'single_door', '1', now() - interval 7 day, now()),
(999076, 'style_id', 'LP', now() - interval 7 day, now()),
(999076, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999076, 'width', '8', now() - interval 7 day, now()),
(999076, 'windows', '2', now() - interval 7 day, now()),
(999077, 'base_color_id', 'T', now() - interval 9 day, now()),
(999077, 'double_door', '1', now() - interval 9 day, now()),
(999077, 'garage_door', '0', now() - interval 9 day, now()),
(999077, 'length', '12', now() - interval 9 day, now()),
(999077, 'single_door', '1', now() - interval 9 day, now()),
(999077, 'style_id', 'LP', now() - interval 9 day, now()),
(999077, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999077, 'width', '10', now() - interval 9 day, now()),
(999077, 'windows', '3', now() - interval 9 day, now()),
(999078, 'base_color_id', 'E', now() - interval 1 day, now()),
(999078, 'double_door', '0', now() - interval 1 day, now()),
(999078, 'garage_door', '0', now() - interval 1 day, now()),
(999078, 'length', '12', now() - interval 1 day, now()),
(999078, 'single_door', '1', now() - interval 1 day, now()),
(999078, 'style_id', 'LP', now() - interval 1 day, now()),
(999078, 'trim_color_id', 'A', now() - interval 1 day, now()),
(999078, 'width', '8', now() - interval 1 day, now()),
(999078, 'windows', '2', now() - interval 1 day, now())');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999073, 532, 4468, 1850, 'Active', now(), now()),
(999074, 532, 4468, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999073, 15, 4468, 'Test Unit', now() - interval 1 day),
('Inventory', 999074, 15, 4468, 'Test Unit', now() - interval 3 day),
('Inventory', 999075, 15, 4468, 'Test Unit', now() - interval 5 day),
('Inventory', 999076, 15, 4468, 'Test Unit', now() - interval 7 day),
('Inventory', 999077, 15, 4468, 'Test Unit', now() - interval 9 day),
('Inventory', 999078, 15, 4468, 'Test Unit', now() - interval 11 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999073), 74, 4468, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999074), 74, 4468, 'Building needs to go.', now() - interval 6 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(544, 4468, 999075, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(544, 4468, 999076, 'Paint exterior and doors.', now() - interval 13 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 4468, 999077, NULL, NULL, 1566, 2184, NULL, NULL, NULL, now() + interval 5 day, now() - interval 5 day + interval 2 hour, 'Active', now(), now())');

# DMS Test Dealer and Manufacturer
DB::update('update dealers set dealer_management_system = 1, processes_own_deals = 1, cash_submission_methods = 'a:1:{i:0;s:24:"Use Bank Account on File";}' where id in (3133, 3271)');
DB::delete('delete from model_has_roles where model_id in (4698, 4699, 4700) and role_id > 10');
DB::insert('insert into model_has_roles (role_id, model_type, model_id, created_at, updated_at) values
(23, 'App\\Models\\User', 4698, now(), now()),
(23, 'App\\Models\\User', 4699, now(), now()),
(24, 'App\\Models\\User', 4699, now(), now()),
(23, 'App\\Models\\User', 4700, now(), now()),
(24, 'App\\Models\\User', 4700, now(), now()),
(27, 'App\\Models\\User', 4700, now(), now())');

DB::insert('INSERT INTO `inventory` (`id`, `dealer_id`, `idea_room_order_id`, `type`, `brand_id`, `industry_id`, `category_id`, `model`, `model_year`, `number`, `serial_number`, `acquired`, `last_pickup`, `on_lot`, `disposed`, `cost`, `original_cash_price`, `cash_price`, `rbv`, `delivery_radius`, `condition`, `floorplan_program`, `floorplan_request`, `from_rtof`, `status`, `owner`, `reserved`, `reserved_by_user_id`, `times_rented`, `display_for_sale`, `hidden_date`, `hidden_by_user_id`, `description_json`, `created`, `modified`) VALUES
(999000, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No',  now() - interval 1 day, NULL,  now() - interval 1 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'RTO National', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 1 day, now()),
(999001, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, NULL, now() - interval 3 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'RTO National', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 3 day, now()),
(999002, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, NULL, now() - interval 5 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 5 day, now()),
(999003, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, NULL,  now() - interval 7 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 7 day, now()),
(999004, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, NULL,  now() - interval 7 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 7 day, now()),
(999005, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 1 day, NULL,  now() - interval 1 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 1 day, now()),
(999006, 3133, NULL, 'storage_building', 19, 1, 'BA', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 3 day, NULL,now() - interval 3 day, NULL, 2050.00, 2050.00, 2050.00, 2050.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 3 day, now()),
(999007, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, NULL, now() - interval 5 day, NULL, 2100.00, 2100.00, 2100.00, 2100.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 5 day, now()),
(999008, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 5 day, NULL, now() - interval 5 day, NULL, 2150.00, 2150.00, 2150.00, 2150.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 5 day, now()),
(999009, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, NULL, now() - interval 7 day, NULL, 2200.00, 2200.00, 2200.00, 2200.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 7 day, now()),
(999010, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, NULL, now() - interval 7 day, NULL, 2250.00, 2250.00, 2250.00, 2250.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 7 day, now()),
(999011, 3133, NULL, 'storage_building', 19, 1, 'BA', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 7 day, NULL, now() - interval 7 day, NULL, 2300.00, 2300.00, 2300.00, 2300.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 7 day, now()),
(999012, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, NULL, now() - interval 9 day, NULL, 2350.00, 2350.00, 2350.00, 2350.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 9 day, now()),
(999013, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 9 day, NULL, now() - interval 9 day, NULL, 2400.00, 2400.00, 2400.00, 2400.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 9 day, now()),
(999014, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 11 day, NULL, now() - interval 11 day, NULL, 2450.00, 2450.00, 2450.00, 2450.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 11 day, now()),
(999015, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 11 day, NULL, now() - interval 11 day, NULL, 2000.00, 2000.00, 2000.00, 2000.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 11 day, now()),
(999016, 3133, NULL, 'storage_building', 19, 1, 'BA', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 13 day, NULL, now() - interval 13 day, NULL, 2050.00, 2050.00, 2050.00, 2050.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 13 day, now()),
(999017, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', now() - interval 13 day, NULL, now() - interval 13 day, NULL, 2100.00, 2100.00, 2100.00, 2100.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 13 day, now()),
(999018, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No',  now() - interval 15 day, NULL,  now() - interval 15 day, NULL, 2150.00, 2150.00, 2150.00, 2150.00, NULL, 'Pre-Owned', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 15 day, now()),
(999019, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No',  now() - interval 15 day, NULL,  now() - interval 15 day, NULL, 2200.00, 2200.00, 2200.00, 2200.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 15 day, now()),
(999020, 3133, NULL, 'storage_building', 19, 1, 'AF', 'Model No', NULL, NULL, 'Manufacturer No',  now() - interval 17 day, NULL,  now() - interval 17 day, NULL, 2250.00, 2250.00, 2250.00, 2250.00, NULL, 'New', 0, 0, 0, 'There', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 17 day, now()),
(999021, 3133, NULL, 'storage_building', 19, 1, 'BA', 'Model No', NULL, NULL, 'Manufacturer No', NULL, NULL, NULL, NULL, 2300.00, 2300.00, 2300.00, 2300.00, NULL, 'New', 0, 0, 0, 'On Order', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 4 day, now() - interval 4 day),
(999022, 3133, NULL, 'storage_building', 19, 1, 'UT', 'Model No', NULL, NULL, 'Manufacturer No', NULL, NULL, NULL, NULL, 2350.00, 2350.00, 2350.00, 2350.00, NULL, 'New', 0, 0, 0, 'On Order', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 4 day, now() - interval 4 day),
(999023, 3133, NULL, 'storage_building', 19, 1, 'UT', 'DD023', NULL, NULL, 'DD023', NULL, NULL, NULL, NULL, 2400.00, 2400.00, 2400.00, 2400.00, NULL, 'New', 0, 0, 0, 'On Order', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL, now() - interval 8 day, now() - interval 8 day),
(999024, 3133, NULL, 'storage_building', 19, 1, 'UT', 'DD024', NULL, NULL, 'DD024', NULL, NULL, NULL, NULL, 2450.00, 2450.00, 2450.00, 2450.00, NULL, 'New', 0, 0, 0, 'On Order', 'Dealer', NULL, NULL, NULL, 0, NULL, NULL, NULL,  now() - interval 10 day, now() - interval 10 day)');

DB::insert('INSERT INTO `inventory_attributes` (`inventory_id`, `field`, `value`, `created`, `modified`) VALUES
(999000, 'base_color_id', 'E',  now() - interval 1 day,  now()),
(999000, 'double_door', '0',  now() - interval 1 day,  now()),
(999000, 'garage_door', '0',  now() - interval 1 day,  now()),
(999000, 'length', '12',  now() - interval 1 day,  now()),
(999000, 'single_door', '1',  now() - interval 1 day,  now()),
(999000, 'style_id', 'LP',  now() - interval 1 day,  now()),
(999000, 'trim_color_id', 'A',  now() - interval 1 day,  now()),
(999000, 'width', '8',  now() - interval 1 day,  now()),
(999000, 'windows', '2',  now() - interval 1 day,  now()),
(999001, 'base_color_id', 'E', now() - interval 3 day, now()),
(999001, 'double_door', '0', now() - interval 3 day, now()),
(999001, 'garage_door', '0', now() - interval 3 day, now()),
(999001, 'length', '16', now() - interval 3 day, now()),
(999001, 'single_door', '1', now() - interval 3 day, now()),
(999001, 'style_id', 'LP', now() - interval 3 day, now()),
(999001, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999001, 'width', '8', now() - interval 3 day, now()),
(999001, 'windows', '2', now() - interval 3 day, now()),
(999002, 'base_color_id', 'E', now() - interval 5 day, now()),
(999002, 'double_door', '0', now() - interval 5 day, now()),
(999002, 'garage_door', '0', now() - interval 5 day, now()),
(999002, 'length', '8', now() - interval 5 day, now()),
(999002, 'single_door', '1', now() - interval 5 day, now()),
(999002, 'style_id', 'W', now() - interval 5 day, now()),
(999002, 'trim_color_id', 'A', now() - interval 5 day, now()),
(999002, 'width', '8', now() - interval 5 day, now()),
(999002, 'windows', '2', now() - interval 5 day, now()),
(999003, 'base_color_id', 'E', now() - interval 7 day, now()),
(999003, 'double_door', '0', now() - interval 7 day, now()),
(999003, 'garage_door', '0', now() - interval 7 day, now()),
(999003, 'length', '14', now() - interval 7 day, now()),
(999003, 'single_door', '1', now() - interval 7 day, now()),
(999003, 'style_id', 'LP', now() - interval 7 day, now()),
(999003, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999003, 'width', '8', now() - interval 7 day, now()),
(999003, 'windows', '2', now() - interval 7 day, now()),
(999004, 'base_color_id', 'T', now() - interval 9 day, now()),
(999004, 'double_door', '1', now() - interval 9 day, now()),
(999004, 'garage_door', '0', now() - interval 9 day, now()),
(999004, 'length', '12', now() - interval 9 day, now()),
(999004, 'single_door', '1', now() - interval 9 day, now()),
(999004, 'style_id', 'LP', now() - interval 9 day, now()),
(999004, 'trim_color_id', 'A', now() - interval 9 day, now()),
(999004, 'width', '10', now() - interval 9 day, now()),
(999004, 'windows', '3', now() - interval 9 day, now()),
(999005, 'base_color_id', 'E',  now() - interval 1 day, now()),
(999005, 'double_door', '0',  now() - interval 1 day, now()),
(999005, 'garage_door', '0',  now() - interval 1 day, now()),
(999005, 'length', '12',  now() - interval 1 day, now()),
(999005, 'single_door', '1',  now() - interval 1 day, now()),
(999005, 'style_id', 'LP',  now() - interval 1 day, now()),
(999005, 'trim_color_id', 'A',  now() - interval 1 day, now()),
(999005, 'width', '8',  now() - interval 1 day, now()),
(999005, 'windows', '2',  now() - interval 1 day, now()),
(999006, 'base_color_id', 'E', now() - interval 3 day, now()),
(999006, 'double_door', '1', now() - interval 3 day, now()),
(999006, 'garage_door', '0', now() - interval 3 day, now()),
(999006, 'length', '12', now() - interval 3 day, now()),
(999006, 'single_door', '1', now() - interval 3 day, now()),
(999006, 'style_id', 'W', now() - interval 3 day, now()),
(999006, 'trim_color_id', 'A', now() - interval 3 day, now()),
(999006, 'width', '10', now() - interval 3 day, now()),
(999006, 'windows', '2', now() - interval 3 day, now()),
(999007, 'base_color_id', 'W', now() - interval 5 day, now()),
(999007, 'double_door', '1', now() - interval 5 day, now()),
(999007, 'garage_door', '0', now() - interval 5 day, now()),
(999007, 'length', '10', now() - interval 5 day, now()),
(999007, 'single_door', '1', now() - interval 5 day, now()),
(999007, 'style_id', 'W', now() - interval 5 day, now()),
(999007, 'trim_color_id', 'W', now() - interval 5 day, now()),
(999007, 'width', '8', now() - interval 5 day, now()),
(999007, 'windows', '2', now() - interval 5 day, now()),
(999008, 'base_color_id', 'B', now() - interval 5 day, now()),
(999008, 'double_door', '1', now() - interval 5 day, now()),
(999008, 'garage_door', '1', now() - interval 5 day, now()),
(999008, 'length', '14', now() - interval 5 day, now()),
(999008, 'single_door', '0', now() - interval 5 day, now()),
(999008, 'style_id', 'LP', now() - interval 5 day, now()),
(999008, 'trim_color_id', 'W', now() - interval 5 day, now()),
(999008, 'width', '12', now() - interval 5 day, now()),
(999008, 'windows', '4', now() - interval 5 day, now()),
(999009, 'base_color_id', 'M', now() - interval 7 day, now()),
(999009, 'double_door', '0', now() - interval 7 day, now()),
(999009, 'garage_door', '0', now() - interval 7 day, now()),
(999009, 'length', '8', now() - interval 7 day, now()),
(999009, 'single_door', '1', now() - interval 7 day, now()),
(999009, 'style_id', 'W', now() - interval 7 day, now()),
(999009, 'trim_color_id', 'W', now() - interval 7 day, now()),
(999009, 'width', '6', now() - interval 7 day, now()),
(999009, 'windows', '2', now() - interval 7 day, now()),
(999010, 'base_color_id', 'E', now() - interval 7 day, now()),
(999010, 'double_door', '0', now() - interval 7 day, now()),
(999010, 'garage_door', '0', now() - interval 7 day, now()),
(999010, 'length', '12', now() - interval 7 day, now()),
(999010, 'single_door', '1', now() - interval 7 day, now()),
(999010, 'style_id', 'LP', now() - interval 7 day, now()),
(999010, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999010, 'width', '12', now() - interval 7 day, now()),
(999010, 'windows', '2', now() - interval 7 day, now()),
(999011, 'base_color_id', 'E', now() - interval 7 day, now()),
(999011, 'double_door', '1', now() - interval 7 day, now()),
(999011, 'garage_door', '0', now() - interval 7 day, now()),
(999011, 'length', '12', now() - interval 7 day, now()),
(999011, 'single_door', '1', now() - interval 7 day, now()),
(999011, 'style_id', 'W', now() - interval 7 day, now()),
(999011, 'trim_color_id', 'A', now() - interval 7 day, now()),
(999011, 'width', '10', now() - interval 7 day, now()),
(999011, 'windows', '2', now() - interval 7 day, now()),
(999012, 'base_color_id', 'W', now() - interval 9 day, now()),
(999012, 'double_door', '1', now() - interval 9 day, now()),
(999012, 'garage_door', '0', now() - interval 9 day, now()),
(999012, 'length', '10', now() - interval 9 day, now()),
(999012, 'single_door', '1', now() - interval 9 day, now()),
(999012, 'style_id', 'W', now() - interval 9 day, now()),
(999012, 'trim_color_id', 'W', now() - interval 9 day, now()),
(999012, 'width', '8', now() - interval 9 day, now()),
(999012, 'windows', '2', now() - interval 9 day, now()),
(999013, 'base_color_id', 'B', now() - interval 9 day, now()),
(999013, 'double_door', '1', now() - interval 9 day, now()),
(999013, 'garage_door', '1', now() - interval 9 day, now()),
(999013, 'length', '14', now() - interval 9 day, now()),
(999013, 'single_door', '0', now() - interval 9 day, now()),
(999013, 'style_id', 'LP', now() - interval 9 day, now()),
(999013, 'trim_color_id', 'W', now() - interval 9 day, now()),
(999013, 'width', '12', now() - interval 9 day, now()),
(999013, 'windows', '4', now() - interval 9 day, now()),
(999014, 'base_color_id', 'M', now() - interval 11 day, now()),
(999014, 'double_door', '0', now() - interval 11 day, now()),
(999014, 'garage_door', '0', now() - interval 11 day, now()),
(999014, 'length', '8', now() - interval 11 day, now()),
(999014, 'single_door', '1', now() - interval 11 day, now()),
(999014, 'style_id', 'W', now() - interval 11 day, now()),
(999014, 'trim_color_id', 'W', now() - interval 11 day, now()),
(999014, 'width', '6', now() - interval 11 day, now()),
(999014, 'windows', '2', now() - interval 11 day, now()),
(999015, 'base_color_id', 'E', now() - interval 11 day, now()),
(999015, 'double_door', '0', now() - interval 11 day, now()),
(999015, 'garage_door', '0', now() - interval 11 day, now()),
(999015, 'length', '12', now() - interval 11 day, now()),
(999015, 'single_door', '1', now() - interval 11 day, now()),
(999015, 'style_id', 'LP', now() - interval 11 day, now()),
(999015, 'trim_color_id', 'A', now() - interval 11 day, now()),
(999015, 'width', '8', now() - interval 11 day, now()),
(999015, 'windows', '2', now() - interval 11 day, now()),
(999016, 'base_color_id', 'E', now() - interval 13 day, now()),
(999016, 'double_door', '1', now() - interval 13 day, now()),
(999016, 'garage_door', '0', now() - interval 13 day, now()),
(999016, 'length', '12', now() - interval 13 day, now()),
(999016, 'single_door', '1', now() - interval 13 day, now()),
(999016, 'style_id', 'W', now() - interval 13 day, now()),
(999016, 'trim_color_id', 'A', now() - interval 13 day, now()),
(999016, 'width', '10', now() - interval 13 day, now()),
(999016, 'windows', '2', now() - interval 13 day, now()),
(999017, 'base_color_id', 'W', now() - interval 13 day, now()),
(999017, 'double_door', '1', now() - interval 13 day, now()),
(999017, 'garage_door', '0', now() - interval 13 day, now()),
(999017, 'length', '10', now() - interval 13 day, now()),
(999017, 'single_door', '1', now() - interval 13 day, now()),
(999017, 'style_id', 'W', now() - interval 13 day, now()),
(999017, 'trim_color_id', 'W', now() - interval 13 day, now()),
(999017, 'width', '8', now() - interval 13 day, now()),
(999017, 'windows', '2', now() - interval 13 day, now()),
(999018, 'base_color_id', 'B',  now() - interval 15 day, now()),
(999018, 'double_door', '1',  now() - interval 15 day, now()),
(999018, 'garage_door', '1',  now() - interval 15 day, now()),
(999018, 'length', '14',  now() - interval 15 day, now()),
(999018, 'single_door', '0',  now() - interval 15 day, now()),
(999018, 'style_id', 'LP',  now() - interval 15 day, now()),
(999018, 'trim_color_id', 'W',  now() - interval 15 day, now()),
(999018, 'width', '12',  now() - interval 15 day, now()),
(999018, 'windows', '4',  now() - interval 15 day, now()),
(999019, 'base_color_id', 'M',  now() - interval 15 day, now()),
(999019, 'double_door', '0',  now() - interval 15 day, now()),
(999019, 'garage_door', '0',  now() - interval 15 day, now()),
(999019, 'length', '8',  now() - interval 15 day, now()),
(999019, 'single_door', '1',  now() - interval 15 day, now()),
(999019, 'style_id', 'W',  now() - interval 15 day, now()),
(999019, 'trim_color_id', 'W',  now() - interval 15 day, now()),
(999019, 'width', '6',  now() - interval 15 day, now()),
(999019, 'windows', '2',  now() - interval 15 day, now()),
(999020, 'base_color_id', 'E',  now() - interval 17 day, now()),
(999020, 'double_door', '0',  now() - interval 17 day, now()),
(999020, 'garage_door', '0',  now() - interval 17 day, now()),
(999020, 'length', '12',  now() - interval 17 day, now()),
(999020, 'single_door', '1',  now() - interval 17 day, now()),
(999020, 'style_id', 'LP',  now() - interval 17 day, now()),
(999020, 'trim_color_id', 'A',  now() - interval 17 day, now()),
(999020, 'width', '12',  now() - interval 17 day, now()),
(999020, 'windows', '2',  now() - interval 17 day, now()),
(999021, 'base_color_id', 'E', now() - interval 4 day, now() - interval 4 day),
(999021, 'double_door', '1', now() - interval 4 day, now() - interval 4 day),
(999021, 'garage_door', '0', now() - interval 4 day, now() - interval 4 day),
(999021, 'length', '12', now() - interval 4 day, now() - interval 4 day),
(999021, 'single_door', '1', now() - interval 4 day, now() - interval 4 day),
(999021, 'style_id', 'W', now() - interval 4 day, now() - interval 4 day),
(999021, 'trim_color_id', 'A', now() - interval 4 day, now() - interval 4 day),
(999021, 'width', '10', now() - interval 4 day, now() - interval 4 day),
(999021, 'windows', '2', now() - interval 4 day, now() - interval 4 day),
(999022, 'base_color_id', 'W', now() - interval 4 day, now() - interval 4 day),
(999022, 'double_door', '1', now() - interval 4 day, now() - interval 4 day),
(999022, 'garage_door', '0', now() - interval 4 day, now() - interval 4 day),
(999022, 'length', '10', now() - interval 4 day, now() - interval 4 day),
(999022, 'single_door', '1', now() - interval 4 day, now() - interval 4 day),
(999022, 'style_id', 'W', now() - interval 4 day, now() - interval 4 day),
(999022, 'trim_color_id', 'W', now() - interval 4 day, now() - interval 4 day),
(999022, 'width', '8', now() - interval 4 day,now() - interval 4 day),
(999022, 'windows', '2', now() - interval 4 day, now() - interval 4 day),
(999023, 'base_color_id', 'B', now() - interval 8 day, now() - interval 8 day),
(999023, 'double_door', '1', now() - interval 8 day, now() - interval 8 day),
(999023, 'garage_door', '1', now() - interval 8 day, now() - interval 8 day),
(999023, 'length', '14', now() - interval 8 day, now() - interval 8 day),
(999023, 'single_door', '0', now() - interval 8 day, now() - interval 8 day),
(999023, 'style_id', 'LP', now() - interval 8 day, now() - interval 8 day),
(999023, 'trim_color_id', 'W', now() - interval 8 day, now() - interval 8 day),
(999023, 'width', '12', now() - interval 8 day, now() - interval 8 day),
(999023, 'windows', '4', now() - interval 8 day, now() - interval 8 day),
(999024, 'base_color_id', 'M',  now() - interval 10 day, now() - interval 10 day),
(999024, 'double_door', '0',  now() - interval 10 day, now() - interval 10 day),
(999024, 'garage_door', '0',  now() - interval 10 day, now() - interval 10 day),
(999024, 'length', '8',  now() - interval 10 day, now() - interval 10 day),
(999024, 'single_door', '1',  now() - interval 10 day, now() - interval 10 day),
(999024, 'style_id', 'W',  now() - interval 10 day, now() - interval 10 day),
(999024, 'trim_color_id', 'W',  now() - interval 10 day, now() - interval 10 day),
(999024, 'width', '6',  now() - interval 10 day, now() - interval 10 day),
(999024, 'windows', '2',  now() - interval 10 day, now() - interval 10 day)');


DB::insert('insert into inventory_price_changes (inventory_id, dealer_id, user_id, amount, status, created, modified) values
(999003, 3133, 4700, 1850, 'Active', now(), now()),
(999005, 3133, 4700, 1975, 'Active', now(), now()),
(999007, 3133, 4700, 1777, 'Active', now() , now())');
DB::insert('insert into statuses (model, foreign_key, phase_id, user_id, notes, created) values
('Inventory', 999000, 15, 4700, 'Test Unit', now() - interval 1 day),
('Inventory', 999001, 15, 4700, 'Test Unit', now() - interval 1 day),
('Inventory', 999002, 15, 4700, 'Test Unit', now() - interval 1 day),
('Inventory', 999003, 15, 4700, 'Test Unit', now() - interval 1 day),
('Inventory', 999004, 15, 4700, 'Test Unit', now() - interval 1 day),
('Inventory', 999005, 15, 4700, 'Test Unit', now() - interval 1 day),
('Inventory', 999006, 15, 4700, 'Test Unit', now() - interval 3 day),
('Inventory', 999007, 15, 4700, 'Test Unit', now() - interval 5 day),
('Inventory', 999008, 15, 4700, 'Test Unit', now() - interval 5 day),
('Inventory', 999009, 15, 4700, 'Test Unit', now() - interval 7 day),
('Inventory', 999010, 15, 4700, 'Test Unit', now() - interval 7 day),
('Inventory', 999011, 15, 4700, 'Test Unit', now() - interval 7 day),
('Inventory', 999012, 15, 4700, 'Test Unit', now() - interval 9 day),
('Inventory', 999013, 15, 4700, 'Test Unit', now() - interval 9 day),
('Inventory', 999014, 15, 4700, 'Test Unit', now() - interval 11 day),
('Inventory', 999015, 15, 4700, 'Test Unit', now() - interval 11 day),
('Inventory', 999016, 15, 4700, 'Test Unit', now() - interval 13 day),
('Inventory', 999017, 15, 4700, 'Test Unit', now() - interval 13 day),
('Inventory', 999018, 15, 4700, 'Test Unit', now() - interval 15 day),
('Inventory', 999019, 15, 4700, 'Test Unit', now() - interval 15 day),
('Inventory', 999020, 15, 4700, 'Test Unit', now() - interval 17 day),
('Inventory', 999021, 83, 4700, 'Test Unit', now() - interval 4 day),
('Inventory', 999022, 83, 4700, 'Test Unit', now() - interval 6 day),
('Inventory', 999023, 83, 4700, 'Test Unit', now() - interval 8 day),
('Inventory', 999024, 83, 4700, 'Test Unit', now() - interval 10 day),
('Contract', 999000, 3, 4700, 'Test Contract', now() - interval 11 day),
('Contract', 999001, 3, 4700, 'Test Contract', now() - interval 12 day),
('Contract', 999002, 3, 4700, 'Test Contract', now() - interval 13 day),
('Contract', 999003, 3, 4700, 'Test Contract', now() - interval 14 day),
('Contract', 999004, 3, 4700, 'Test Contract', now() - interval 15 day),
('Contract', 999005, 3, 4700, 'Test Contract', now() - interval 14 day),
('Contract', 999006, 3, 4700, 'Test Contract', now() - interval 13 day),
('Contract', 999007, 3, 4700, 'Test Contract', now() - interval 12 day),
('Contract', 999008, 3, 4700, 'Test Contract', now() - interval 11 day),
('Contract', 999009, 3, 4700, 'Test Contract', now() - interval 10 day),
('Installment', 999010, 27, 4700, 'Test Finance', now() - interval 5 day),
('Installment', 999011, 27, 4700, 'Test Finance', now() - interval 6 day),
('Installment', 999012, 27, 4700, 'Test Finance', now() - interval 7 day),
('Installment', 999013, 27, 4700, 'Test Finance', now() - interval 8 day),
('Installment', 999014, 27, 4700, 'Test Finance', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999003), 74, 4700, 'Customer has cash.', now() - interval 9 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999005), 74, 4700, 'Building needs to go.', now() - interval 6 day),
('InventoryPriceChange', (select id from inventory_price_changes where inventory_id = 999007), 74, 4700, 'Need the space on lot.', now() - interval 4 day)');
DB::insert('insert into service_requests (dealer_id, user_id, inventory_id, description, created, modified) values
(3133, 4700, 999018, 'Clean out, sweep, and paint interior.', now() - interval 15 day, now()),
(3133, 4700, 999017, 'Paint exterior and doors.', now() - interval 13 day, now()),
(3133, 4700, 999013, 'Sweep and paint.', now() - interval 9 day, now()),
(3133, 4700, 999012, 'Clean out boxes and sweep.', now() - interval 9 day, now()),
(3133, 4700, 999008, 'Paint siding and trim.', now() - interval 5 day, now()),
(3133, 4700, 999007, 'Sweep and paint.', now() - interval 5 day, now())');
DB::insert('insert into transportations (type, user_id, inventory_id, contract_model, contract_id, from_dealer_id, to_dealer_id, delivery_contractor_id, origin, destination, start, end, status, created, modified) values
('Lot to Lot', 4700, 999024, NULL, NULL, 3271, 3133, 413, NULL, NULL, now() - interval 4 day, now() - interval 4 day + interval 2 hour, 'Active', now() - interval 7 day, now()),
('Lot to Lot', 4700, 999023, NULL, NULL, 3271, 3133, 413, NULL, NULL, now() - interval 3 day,  now() - interval 3 day + interval 2 hour, 'Active', now() - interval 8 day, now()),
('Lot to Lot', 4700, 999022, NULL, NULL, 3271, 3133, 413, NULL, NULL, now() - interval 2 day, now() - interval 2 day + interval 2 hour,'Active', now() - interval 6 day, now()),
('Lot to Lot', 4700, 999021, NULL, NULL, 3271, 3133, 413, NULL, NULL, now() - interval 1 day, now() - interval 1 day + interval 2 hour,'Active', now() - interval 10 day, now()),
('Delivery', 4700, NULL, 'Contract', 999000, 3133, NULL, 413, 'DMS Test Dealer<br>Greenville SC', 'Leroy Jethro Gibbs<br>1001 Main St<br>Greer SC 29650', now() - interval 7 day, now() - interval 7 day + interval 2 hour,'Active', now() - interval 10 day, now()),
('Delivery', 4700, NULL, 'Contract', 999008, 3133, NULL, 413, 'DMS Test Dealer<br>Greenville SC', 'Ellie Bishop<br>1001 Main St<br>Greer SC 29650', now() - interval 8 day, now() - interval 8 day + interval 2 hour, 'Active', now() - interval 11 day, now())');

DB::delete('delete from customers where id > 998999');

## Create new customer record
DB::insert('insert into customers (id, first_name, last_name, ssn_last_4, ssn_last_4_hash, birth_date, gender, language_preference, `mobile_phone`, email, delivery_address, delivery_city, delivery_state, delivery_zip, mailing_address, mailing_city, mailing_state, employer, employer_phone, created, modified) values
(999000, 'Leroy Jethro', 'Gibbs', '', '', '1933-09-19', 'M', 'en', '(999) 999-9999', 'donaldmallard@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999001, 'Donald', 'Mallard', '', '', '1951-09-02', 'M', 'en', '(999) 999-9999', 'leroygibbs@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999002, 'Timothy', 'McGee', '', '', '1977-11-15', 'M', 'en', '(999) 999-9999', 'timothymcgee@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999003, 'Abby', 'Sciuto', '', '', '1969-03-27', 'F', 'en', '(999) 999-9999', 'abbysciuto@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999004, 'Anthony', 'DiNozzo', '', '', '1968-07-08', 'M', 'en', '(999) 999-9999', 'anthonydinozzo@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999005, 'Jimmy', 'Palmer', '', '', '1977-11-14', 'M', 'en', '(999) 999-9999', 'jimmypalmer@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999006, 'Leon', 'Vance', '', '', '1963-07-08', 'M', 'en', '(999) 999-9999', 'leonvance@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999007, 'Ziva', 'David', '', '', '1979-11-12', 'F', 'en', '(999) 999-9999', 'zivadavid@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999008, 'Ellie', 'Bishop', '', '', '1984-04-26', 'F', 'en', '(999) 999-9999', 'elliebishop@ncis.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS', '(999) 999-9999', now(), now()),
(999009, 'G', 'Callen', '', '', '1970-06-26', 'M', 'en', '(999) 999-9999', 'gcallen@ncisla.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS LA', '(999) 999-9999', now(), now()),
(999010, 'Kensi', 'Blye', '', '', '1983-12-02', 'F', 'en', '(999) 999-9999', 'kensiblye@ncisla.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS LA', '(999) 999-9999', now(), now()),
(999011, 'Eric', 'Beale', '', '', '1977-09-18', 'M', 'en', '(999) 999-9999', 'ericbeale@ncisla.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS LA', '(999) 999-9999', now(), now()),
(999012, 'Hetty', 'Lange', '', '', '1945-04-02', 'F', 'en', '(999) 999-9999', 'hettylange@ncisla.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS LA', '(999) 999-9999', now(), now()),
(999013, 'Sam', 'Hanna', '', '', '1968-01-14', 'M', 'en', '(999) 999-9999', 'samhanna@ncisla.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS LA', '(999) 999-9999', now(), now()),
(999014, 'Marty', 'Deeks', '', '', '1977-05-31', 'M', 'en', '(999) 999-9999', 'martydeeks@ncisla.gov', '1001 Main St', 'Greer', 'SC', '29650', '1001 Main St', 'Greer', 'SC', 'NCIS LA', '(999) 999-9999', now(), now())');

DB::delete('delete from contracts where id > 998999');

## create leases/cash deals
DB::insert('insert into contracts (id, type, application_type, uuid, user_id, dealer_id, customer_id, product_id, salesperson, order_amount, amount_leased, tax_rate, tax_rate_state, tax_rate_county, tax_rate_city, monthly_payment_before_tax, monthly_tax_amount, total_monthly_payment, ldw, ldw_fee, processing_fee, minimum_due_at_signing, monthly_payment_without_cra, contract_length, question_how_did_you_hear_about_us, payment_automatic_draft, payment_reminder_method, payment_reminder_days_in_advance, status, completion_date, created, modified) values
(999000, 'Contract', 'dealer', '88334e0d-38bc-40c6-a626-21391735341b', 3252, 3133, 999000, 999000, 'Bob Burns', 2000, 2000, 0.06, 0.06, 0, 0, 133.33, 8.00, 141.33, 0, 0, 5.00, 287.66, 133.33, 24, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 10 day, now() - interval 11 day, now() - interval 10 day),
(999001, 'Contract', 'dealer', '508293a1-5aba-4027-b125-6c90dd64bbf0', 3252, 3133, 999001, 999001, 'Bob Burns', 2000, 2000, 0.06, 0.06, 0, 0, 133.33, 8.00, 141.33, 0, 0, 5.00, 287.66, 133.33, 24, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 11 day, now() - interval 12 day, now() - interval 11 day),
(999002, 'Contract', 'dealer', '04dabb8f-28f8-47ac-a62b-0cda71ab89fa', 3252, 3133, 999002, 999002, 'Bob Burns', 2000, 2000, 0.06, 0.06, 0, 0, 133.33, 8.00, 141.33, 0, 0, 5.00, 287.66, 133.33, 24, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 12 day, now() - interval 13 day, now() - interval 12 day),
(999003, 'Contract', 'dealer', '51ff6175-eef5-47e5-b42c-b15ff07e742d', 3252, 3133, 999003, 999003, 'Bob Burns', 2000, 2000, 0.06, 0.06, 0, 0, 133.33, 8.00, 141.33, 0, 0, 5.00, 287.66, 133.33, 24, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 13 day, now() - interval 14 day, now() - interval 13 day),
(999004, 'Contract', 'dealer', '9ac697d2-2bdc-46db-bf61-182c84871359', 3252, 3133, 999004, 999004, 'Bob Burns', 2000, 2000, 0.06, 0.06, 0, 0, 133.33, 8.00, 141.33, 0, 0, 5.00, 287.66, 133.33, 24, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 14 day, now() - interval 15 day, now() - interval 14 day),
(999005, 'Cash', 'dealer', '3b466fd3-7c37-4373-9d8c-c9b7e113ed5a', 3252, 3133, 999005, 999005, 'Bob Burns', 2000, 0, 0.06, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 2120.00, 0, 0, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 14 day, now() - interval 15 day, now() - interval 14 day),
(999006, 'Cash', 'dealer', 'e2c9497d-65d8-4d08-b0a9-4ab1b587b2d3', 3252, 3133, 999006, 999006, 'Bob Burns', 2000, 0, 0.06, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 2120.00, 0, 0, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 13 day, now() - interval 14 day, now() - interval 13 day),
(999007, 'Cash', 'dealer', 'bad1b10a-aaef-40c0-93f0-8bfb5889967b', 3252, 3133, 999007, 999007, 'Bob Burns', 2000, 0, 0.06, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 2120.00, 0, 0, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 12 day, now() - interval 13 day, now() - interval 12 day),
(999008, 'Cash', 'dealer', '5e1bcf0f-4da7-4964-8ce5-c6fffb3f02f1', 3252, 3133, 999008, 999008, 'Bob Burns', 2000, 0, 0.06, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 2120.00, 0, 0, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 11 day, now() - interval 12 day, now() - interval 11 day),
(999009, 'Cash', 'dealer', 'bb6381d7-6574-48fd-95a9-aef5c075b85e', 3252, 3133, 999009, 999009, 'Bob Burns', 2000, 0, 0.06, 0.06, 0, 0, 0, 0, 0, 0, 0, 0, 2120.00, 0, 0, 'Drive By', 'No', 'Text', 10, 'Under Review', now() - interval 10 day, now() - interval 11 day, now() - interval 10 day)');

DB::delete('delete from installments where id > 999009');

## create finance deals
DB::insert('insert into installments (id, type, application_type, uuid, dealer_id, customer_id, product_id, salesperson, loan_type, program_type, order_amount, tax_amount, down_payment, amount_financed, monthly_payment, total_payment, approval_credit_score, interest_rate, financing_minimum, financing_maximum, minimum_down_payment_fraction, sixty_month_term_financing_minimum, require_pinc, contract_length, question_how_did_you_hear_about_us, status, approved, completion_date, under_review_date, expiration_date, created, modified) values
(999010, 'Installment', 'dealer', '102a607d-c0bf-43b7-b0ca-f578b6424f30', 3133, 999010, 999010, 'Sam Smith', 'Indirect', 'standard', 2000, 120, 620, 1500, 73.40, 1761.60, 772, 0.1595, 1000, 20000, 0, 1000, 0, 24, 'Repeat Customer', 'Under Review', 1, now() - interval 3 day, now() - interval 3 day, now() + interval 87 day, now() - interval 3 day, now() - interval 3 day),
(999011, 'Installment', 'dealer', '7aa6c713-cd93-4159-90f7-06562745328c', 3133, 999011, 999011, 'Sam Smith', 'Indirect', 'standard', 2000, 120, 320, 1800, 88.09, 2114.16, 772, 0.1595, 1000, 20000, 0, 1000, 0, 24, 'Repeat Customer', 'Under Review', 1, now() - interval 5 day, now() - interval 5 day, now() + interval 85 day, now() - interval 5 day, now() - interval 5 day),
(999012, 'Installment', 'dealer', '07ada8ac-30fa-4269-a848-59dfbd9ed163', 3133, 999012, 999012, 'Sam Smith', 'Indirect', 'standard', 2000, 120, 0, 2120, 103.75, 2490, 772, 0.1595, 1000, 20000, 0, 1000, 0, 24, 'Repeat Customer', 'Under Review', 1, now() - interval 6 day, now() - interval 6 day, now() + interval 84 day, now() - interval 6 day, now() - interval 6 day),
(999013, 'Installment', 'dealer', 'b8859d5b-7946-4fae-adf4-89a351dd3d09', 3133, 999013, 999013, 'Sam Smith', 'Indirect', 'standard', 2000, 120, 320, 1800, 88.09, 2114.16, 772, 0.1595, 1000, 20000, 0, 1000, 0, 24, 'Repeat Customer', 'Under Review', 1, now() - interval 5 day, now() - interval 5 day, now() + interval 85 day, now() - interval 5 day, now() - interval 5 day),
(999014, 'Installment', 'dealer', 'c2628b95-e67a-422b-8d4c-4eb87675ee42', 3133, 999014, 999014, 'Sam Smith', 'Indirect', 'standard', 2000, 120, 420, 1700, 83.19, 1996.56, 772, 0.1595, 1000, 20000, 0, 1000, 0, 24, 'Repeat Customer', 'Under Review', 1, now() - interval 8 day, now() - interval 8 day, now() + interval 82 day, now() - interval 8 day, now() - interval 8 day)');

DB::delete('delete from products where ram_number > 998999');

## create associated product records
DB::insert('INSERT INTO products (`id`, `brand_id`, `industry_id`, `type`, `category_id`, `status`, `owner`, `model_year`, `damage`, `number`, `ram_number`, `inventory_dealer_id`, `created`, `modified`) VALUES
(999014, 19, 1, 'storage_building', 'UT', 'New', 'Dealer', NULL, NULL, 'DD004', 999004, NULL, now() - interval 10 day, now() - interval 10 day),
(999013, 19, 1, 'storage_building', 'UT', 'Pre-Owned', 'Dealer', NULL, NULL, 'DD013', 999013, NULL, now() - interval 10 day, now() - interval 10 day),
(999012, 19, 1, 'storage_building', 'UT', 'Pre-Owned', 'Dealer', NULL, NULL, 'DD012', 999012, NULL, now() - interval 10 day, now() - interval 10 day),
(999011, 19, 1, 'storage_building', 'BA', 'Pre-Owned', 'Dealer', NULL, NULL, 'DD011', 999011, NULL, now() - interval 10 day, now() - interval 10 day),
(999010, 19, 1, 'storage_building', 'AF', 'Pre-Owned', 'RTO National', NULL, NULL, 'DD010', 999010, NULL, now() - interval 10 day, now() - interval 10 day),
(999009, 19, 1, 'storage_building', 'UT', 'Pre-Owned', 'Dealer', NULL, NULL, 'DD009', 999009, NULL, now() - interval 10 day, now() - interval 10 day),
(999008, 19, 1, 'storage_building', 'UT', 'Pre-Owned', 'Dealer', NULL, NULL, 'DD008', 999008, NULL, now() - interval 11 day, now() - interval 11 day),
(999007, 19, 1, 'storage_building', 'UT', 'New', 'Dealer', NULL, NULL, 'DD007', 999007, NULL, now() - interval 12 day, now() - interval 12 day),
(999006, 19, 1, 'storage_building', 'BA', 'New', 'Dealer', NULL, NULL, 'DD006', 999006, NULL, now() - interval 13 day, now() - interval 13 day),
(999005, 19, 1, 'storage_building', 'AF', 'New', 'Dealer', NULL, NULL, 'DD005', 999005, NULL, now() - interval 14 day, now() - interval 14 day),
(999004, 19, 1, 'storage_building', 'UT', 'New', 'Dealer', NULL, NULL, 'DD004', 999004, NULL, now() - interval 13 day, now() - interval 13 day),
(999003, 19, 1, 'storage_building', 'AF', 'New', 'Dealer', NULL, NULL, 'DD003', 999003, NULL, now() - interval 12 day, now() - interval 12 day),
(999002, 19, 1, 'storage_building', 'AF', 'New', 'Dealer', NULL, NULL, 'DD002', 999002, NULL, now() - interval 11 day, now() - interval 11 day),
(999001, 19, 1, 'storage_building', 'AF', 'Pre-Owned', 'Dealer', NULL, NULL, 'DD001', 999001, NULL, now() - interval 10 day, now() - interval 10 day),
(999000, 19, 1, 'storage_building', 'AF', 'Pre-Owned', 'RTO National', NULL, NULL, 'DD000', 999000, NULL, now() - interval 15 day, now() - interval 15 day)');

DB::insert('INSERT INTO product_attributes (`product_id`, `field`, `value`, `created`, `modified`) VALUES
(999014, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999014, 'width', '6', now() - interval 10 day, now() - interval 10 day),
(999014, 'trim_color_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999014, 'style_id', 'LP', now() - interval 10 day, now() - interval 10 day),
(999014, 'single_door', '1', now() - interval 10 day, now() - interval 10 day),
(999014, 'length', '8', now() - interval 10 day, now() - interval 10 day),
(999014, 'garage_door', '0', now() - interval 10 day, now() - interval 10 day),
(999014, 'double_door', '0', now() - interval 10 day, now() - interval 10 day),
(999014, 'base_color_id', 'M', now() - interval 10 day, now() - interval 10 day),
(999013, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999013, 'width', '12', now() - interval 10 day, now() - interval 10 day),
(999013, 'trim_color_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999013, 'style_id', 'LP', now() - interval 10 day, now() - interval 10 day),
(999013, 'single_door', '0', now() - interval 10 day, now() - interval 10 day),
(999013, 'length', '14', now() - interval 10 day, now() - interval 10 day),
(999013, 'garage_door', '1', now() - interval 10 day, now() - interval 10 day),
(999013, 'double_door', '1', now() - interval 10 day, now() - interval 10 day),
(999013, 'base_color_id', 'B', now() - interval 10 day, now() - interval 10 day),
(999012, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999012, 'width', '8', now() - interval 10 day, now() - interval 10 day),
(999012, 'trim_color_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999012, 'style_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999012, 'single_door', '1', now() - interval 10 day, now() - interval 10 day),
(999012, 'length', '10', now() - interval 10 day, now() - interval 10 day),
(999012, 'garage_door', '0', now() - interval 10 day, now() - interval 10 day),
(999012, 'double_door', '1', now() - interval 10 day, now() - interval 10 day),
(999012, 'base_color_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999011, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999011, 'width', '10', now() - interval 10 day, now() - interval 10 day),
(999011, 'trim_color_id', 'A', now() - interval 10 day, now() - interval 10 day),
(999011, 'style_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999011, 'single_door', '1', now() - interval 10 day, now() - interval 10 day),
(999011, 'length', '12', now() - interval 10 day, now() - interval 10 day),
(999011, 'garage_door', '0', now() - interval 10 day, now() - interval 10 day),
(999011, 'double_door', '1', now() - interval 10 day, now() - interval 10 day),
(999011, 'base_color_id', 'E', now() - interval 10 day, now() - interval 10 day),
(999010, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999010, 'width', '12', now() - interval 10 day, now() - interval 10 day),
(999010, 'trim_color_id', 'A', now() - interval 10 day, now() - interval 10 day),
(999010, 'style_id', 'LP', now() - interval 10 day, now() - interval 10 day),
(999010, 'single_door', '1', now() - interval 10 day, now() - interval 10 day),
(999010, 'length', '12', now() - interval 10 day, now() - interval 10 day),
(999010, 'garage_door', '0', now() - interval 10 day, now() - interval 10 day),
(999010, 'double_door', '0', now() - interval 10 day, now() - interval 10 day),
(999010, 'base_color_id', 'E', now() - interval 10 day, now() - interval 10 day),
(999009, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999009, 'width', '12', now() - interval 10 day, now() - interval 10 day),
(999009, 'trim_color_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999009, 'style_id', 'W', now() - interval 10 day, now() - interval 10 day),
(999009, 'single_door', '1', now() - interval 10 day, now() - interval 10 day),
(999009, 'length', '12', now() - interval 10 day, now() - interval 10 day),
(999009, 'garage_door', '0', now() - interval 10 day, now() - interval 10 day),
(999009, 'double_door', '0', now() - interval 10 day, now() - interval 10 day),
(999009, 'base_color_id', 'M', now() - interval 10 day, now() - interval 10 day),
(999008, 'windows', '4', now() - interval 11 day, now() - interval 11 day),
(999008, 'width', '12', now() - interval 11 day, now() - interval 11 day),
(999008, 'trim_color_id', 'W', now() - interval 11 day, now() - interval 11 day),
(999008, 'style_id', 'LP', now() - interval 11 day, now() - interval 11 day),
(999008, 'single_door', '0', now() - interval 11 day, now() - interval 11 day),
(999008, 'length', '14', now() - interval 11 day, now() - interval 11 day),
(999008, 'garage_door', '1', now() - interval 11 day, now() - interval 11 day),
(999008, 'double_door', '1', now() - interval 11 day, now() - interval 11 day),
(999008, 'base_color_id', 'B', now() - interval 11 day, now() - interval 11 day),
(999007, 'windows', '2', now() - interval 12 day, now() - interval 12 day),
(999007, 'width', '8', now() - interval 12 day, now() - interval 12 day),
(999007, 'trim_color_id', 'W', now() - interval 12 day, now() - interval 12 day),
(999007, 'style_id', 'W', now() - interval 12 day, now() - interval 12 day),
(999007, 'single_door', '1', now() - interval 12 day, now() - interval 12 day),
(999007, 'length', '10', now() - interval 12 day, now() - interval 12 day),
(999007, 'garage_door', '0', now() - interval 12 day, now() - interval 12 day),
(999007, 'double_door', '1', now() - interval 12 day, now() - interval 12 day),
(999007, 'base_color_id', 'W', now() - interval 12 day, now() - interval 12 day),
(999006, 'windows', '2', now() - interval 13 day, now() - interval 13 day),
(999006, 'width', '10', now() - interval 13 day, now() - interval 13 day),
(999006, 'trim_color_id', 'A', now() - interval 13 day, now() - interval 13 day),
(999006, 'style_id', 'W', now() - interval 13 day, now() - interval 13 day),
(999006, 'single_door', '1', now() - interval 13 day, now() - interval 13 day),
(999006, 'length', '12', now() - interval 13 day, now() - interval 13 day),
(999006, 'garage_door', '0', now() - interval 13 day, now() - interval 13 day),
(999006, 'double_door', '1', now() - interval 13 day, now() - interval 13 day),
(999006, 'base_color_id', 'E', now() - interval 13 day, now() - interval 13 day),
(999005, 'windows', '2', now() - interval 14 day, now() - interval 14 day),
(999005, 'width', '8', now() - interval 14 day, now() - interval 14 day),
(999005, 'trim_color_id', 'A', now() - interval 14 day, now() - interval 14 day),
(999005, 'style_id', 'LP', now() - interval 14 day, now() - interval 14 day),
(999005, 'single_door', '1', now() - interval 14 day, now() - interval 14 day),
(999005, 'length', '12', now() - interval 14 day, now() - interval 14 day),
(999005, 'garage_door', '0', now() - interval 14 day, now() - interval 14 day),
(999005, 'double_door', '0', now() - interval 14 day, now() - interval 14 day),
(999005, 'base_color_id', 'E', now() - interval 14 day, now() - interval 14 day),
(999004, 'windows', '3', now() - interval 13 day, now() - interval 13 day),
(999004, 'width', '10', now() - interval 13 day, now() - interval 13 day),
(999004, 'trim_color_id', 'A', now() - interval 13 day, now() - interval 13 day),
(999004, 'style_id', 'LP', now() - interval 13 day, now() - interval 13 day),
(999004, 'single_door', '1', now() - interval 13 day, now() - interval 13 day),
(999004, 'length', '12', now() - interval 13 day, now() - interval 13 day),
(999004, 'garage_door', '0', now() - interval 13 day, now() - interval 13 day),
(999004, 'double_door', '1', now() - interval 13 day, now() - interval 13 day),
(999004, 'base_color_id', 'T', now() - interval 13 day, now() - interval 13 day),
(999003, 'windows', '2', now() - interval 12 day, now() - interval 12 day),
(999003, 'width', '8', now() - interval 11 day, now() - interval 11 day),
(999003, 'trim_color_id', 'A', now() - interval 11 day, now() - interval 11 day),
(999003, 'style_id', 'LP', now() - interval 11 day, now() - interval 11 day),
(999003, 'single_door', '1', now() - interval 11 day, now() - interval 11 day),
(999003, 'length', '14', now() - interval 11 day, now() - interval 11 day),
(999003, 'garage_door', '0', now() - interval 11 day, now() - interval 11 day),
(999003, 'double_door', '0', now() - interval 11 day, now() - interval 11 day),
(999003, 'base_color_id', 'E', now() - interval 11 day, now() - interval 11 day),
(999002, 'windows', '2', now() - interval 11 day, now() - interval 11 day),
(999002, 'width', '8', now() - interval 11 day, now() - interval 11 day),
(999002, 'trim_color_id', 'A', now() - interval 11 day, now() - interval 11 day),
(999002, 'style_id', 'W', now() - interval 11 day, now() - interval 11 day),
(999002, 'single_door', '1', now() - interval 11 day, now() - interval 11 day),
(999002, 'length', '8', now() - interval 11 day, now() - interval 11 day),
(999002, 'garage_door', '0', now() - interval 11 day, now() - interval 11 day),
(999002, 'double_door', '0', now() - interval 11 day, now() - interval 11 day),
(999002, 'base_color_id', 'E', now() - interval 11 day, now() - interval 11 day),
(999001, 'windows', '2', now() - interval 10 day, now() - interval 10 day),
(999001, 'width', '8', now() - interval 10 day, now() - interval 10 day),
(999001, 'trim_color_id', 'A', now() - interval 10 day, now() - interval 10 day),
(999001, 'style_id', 'LP', now() - interval 10 day, now() - interval 10 day),
(999001, 'single_door', '1', now() - interval 10 day, now() - interval 10 day),
(999001, 'length', '16', now() - interval 10 day, now() - interval 10 day),
(999001, 'garage_door', '0', now() - interval 10 day, now() - interval 10 day),
(999001, 'double_door', '0', now() - interval 10 day, now() - interval 10 day),
(999001, 'base_color_id', 'E', now() - interval 10 day, now() - interval 10 day),
(999000, 'windows', '2', now() - interval 15 day, now() - interval 15 day),
(999000, 'width', '8', now() - interval 15 day, now() - interval 15 day),
(999000, 'trim_color_id', 'A', now() - interval 15 day, now() - interval 15 day),
(999000, 'style_id', 'LP', now() - interval 15 day, now() - interval 15 day),
(999000, 'single_door', '1', now() - interval 15 day, now() - interval 15 day),
(999000, 'length', '12', now() - interval 15 day, now() - interval 15 day),
(999000, 'garage_door', '0', now() - interval 15 day, now() - interval 15 day),
(999000, 'double_door', '0', now() - interval 15 day, now() - interval 15 day),
(999000, 'base_color_id', 'E', now() - interval 15 day, now() - interval 15 day)');


DB::delete('delete from contract_checkoffs_contracts where contract_id > 998999');

## create contract checkoffs
DB::insert('insert into contract_checkoffs_contracts (contract_checkoff_id, contract_id, checked, created, modified) values
(1, 999000, 1, now(), now()), (2, 999000, 0, now(), now()), (4, 999000, 0, now(), now()), (24, 999000, 0, now(), now()), (25, 999000, 0, now(), now()),
(1, 999001, 1, now(), now()), (2, 999001, 1, now(), now()), (4, 999001, 1, now(), now()), (24, 999001, 0, now(), now()), (25, 999001, 0, now(), now()),
(1, 999002, 1, now(), now()), (2, 999002, 1, now(), now()), (4, 999002, 0, now(), now()), (24, 999002, 0, now(), now()), (25, 999002, 0, now(), now()),
(1, 999003, 0, now(), now()), (2, 999003, 0, now(), now()), (4, 999003, 0, now(), now()), (24, 999003, 0, now(), now()), (25, 999003, 0, now(), now()),
(1, 999004, 1, now(), now()), (2, 999004, 1, now(), now()), (4, 999004, 0, now(), now()), (24, 999004, 0, now(), now()), (25, 999004, 0, now(), now()),
(2, 999005, 1, now(), now()), (4, 999005, 0, now(), now()), (24, 999005, 0, now(), now()), (25, 999005, 0, now(), now()),
(2, 999006, 1, now(), now()), (4, 999006, 0, now(), now()), (24, 999006, 0, now(), now()), (25, 999006, 0, now(), now()),
(2, 999007, 1, now(), now()), (4, 999007, 0, now(), now()), (24, 999007, 0, now(), now()), (25, 999007, 0, now(), now()),
(2, 999008, 1, now(), now()), (4, 999008, 0, now(), now()), (24, 999008, 0, now(), now()), (25, 999008, 0, now(), now()),
(2, 999009, 1, now(), now()), (4, 999009, 0, now(), now()), (24, 999009, 0, now(), now()), (25, 999009, 0, now(), now())');

DB::delete('delete from installment_checkoffs_installments where installment_id > 998999');

## create installment checkoffs
DB::insert('insert into installment_checkoffs_installments (installment_checkoff_id, installment_id, checked, created, modified) values
(1, 999011, 1, now(), now()), (2, 999011, 1, now(), now()), (3, 999011, 0, now(), now()), (5, 999011, 0, now(), now()), (10, 999011, 0, now(), now()), (11, 999011, 0, now(), now()), (12, 999011, 0, now(), now()),
(1, 999012, 1, now(), now()), (2, 999012, 1, now(), now()), (3, 999012, 1, now(), now()), (5, 999012, 0, now(), now()), (10, 999012, 0, now(), now()), (11, 999012, 0, now(), now()), (12, 999012, 0, now(), now()),
(1, 999013, 1, now(), now()), (2, 999013, 1, now(), now()), (3, 999013, 0, now(), now()), (5, 999013, 0, now(), now()), (10, 999013, 0, now(), now()), (11, 999013, 0, now(), now()), (12, 999013, 0, now(), now()),
(1, 999014, 1, now(), now()), (2, 999014, 1, now(), now()), (3, 999014, 0, now(), now()), (5, 999014, 0, now(), now()), (10, 999014, 0, now(), now()), (11, 999014, 0, now(), now()), (12, 999014, 0, now(), now()),
(1, 999015, 1, now(), now()), (2, 999015, 1, now(), now()), (3, 999015, 1, now(), now()), (5, 999015, 0, now(), now()), (10, 999015, 0, now(), now()), (11, 999015, 0, now(), now()), (12, 999015, 0, now(), now())');

DB::delete('delete from signatures where foreign_key > 998999');

# create sample signature records
DB::insert('insert into signatures (model, foreign_key, field_name, created, modified) values
('Contract', 999001, 'lease_dealer_signature', now(), now()),
('Contract', 999001, 'lease_customer_signature', now(), now()),
('Contract', 999002, 'lease_dealer_signature', now(), now()),
('Contract', 999002, 'lease_customer_signature', now(), now()),
('Contract', 999003, 'lease_dealer_signature', now(), now()),
('Contract', 999003, 'lease_customer_signature', now(), now()),
('Contract', 999004, 'lease_dealer_signature', now(), now()),
('Contract', 999004, 'lease_customer_signature', now(), now()),
('Contract', 999000, 'lease_dealer_signature', now(), now()),
('Contract', 999000, 'lease_customer_signature', now(), now())');

# These records should be overwritten by production data.

# create contract payments to change balance remaining to collect amount
DB::insert('insert into contract_payments (model, foreign_key, payment_type, payment_method, cash_submission_method, payment_amount, created, modified) values
('Contract', 999005, 'Deposit', 'Cash', 'Deposit retained by dealer', 400, now(), now()),
('Contract', 999006, 'Deposit', 'Cash', 'Deposit retained by dealer', 550, now(), now()),
('Contract', 999007, 'Deposit', 'Cash', 'Deposit retained by dealer', 625, now(), now()),
('Contract', 999008, 'Deposit', 'Cash', 'Deposit retained by dealer', 775, now(), now()),
('Contract', 999009, 'Deposit', 'Cash', 'Deposit retained by dealer', 355, now(), now())');

# Jeana Stuart - admin role for testing
DB::update('update model_has_roles
set role_id = 2
where role_id = 16
and model_type = 'App\\Models\\User'
and model_id = 4037');
