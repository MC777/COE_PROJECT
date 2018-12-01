INSERT INTO `coe`.`user` ( `enabled`, `password`, `username`, `user_name_id`) VALUES (1, '{noop}admin', 'admin', '1');
INSERT INTO `coe`.`user` ( `enabled`, `password`, `username`, `user_name_id`) VALUES (1, '{noop}user', 'user', '2');

INSERT INTO `coe`.`user_roles` (`id_user_role`, `description`, `role`) VALUES ('1', 'admin role', 'ROLE_ADMIN');
INSERT INTO `coe`.`user_roles` (`id_user_role`, `description`, `role`) VALUES ('2', 'user role', 'ROLE_USER');

INSERT INTO `coe`.`user_info` (`id_user_info`, `address`, `citizenship`, `city`, `email`, `name`, `pesel`, `phone`, `post_code`, `surname`) VALUES ('1', 'Kazimierz Wielkiego', 'Polska', 'Krakow', 'a@gmail.com', 'Kamil', '86041516789', '+48888666333', '32-700', 'Nowak');
INSERT INTO `coe`.`user_info` (`id_user_info`, `address`, `citizenship`, `city`, `email`, `name`, `pesel`, `phone`, `post_code`, `surname`) VALUES ('2', 'Zygmunta Augusta', 'Polska', 'Warszawa', 'b@gmail.com', 'Ania', '91234567', '+2298249', '22-100', 'Kowalska');

INSERT INTO `coe`.`cryptocurrency` (`id_cryptocurrency`, `description`, `enabled`, `full_name`, `nickname`) VALUES ('1', '', 1, 'Bitcoin', 'BTC');
INSERT INTO `coe`.`cryptocurrency` (`id_cryptocurrency`, `enabled`, `full_name`, `nickname`) VALUES ('2', 1, 'Bitcoin Cash', 'BCC');
INSERT INTO `coe`.`cryptocurrency` (`id_cryptocurrency`, `enabled`, `full_name`, `nickname`) VALUES ('3', 1, 'Litecoin', 'LTC');
INSERT INTO `coe`.`cryptocurrency` (`id_cryptocurrency`, `enabled`, `full_name`, `nickname`) VALUES ('4', 1, 'Bitcoin Gold', 'BTG');
INSERT INTO `coe`.`cryptocurrency` (`id_cryptocurrency`, `enabled`, `full_name`, `nickname`) VALUES ('5', 1, 'Ethereum', 'ETH');

INSERT INTO `coe`.`cryptocurrency_wallet` (`id_cryptocurrency_wallet`, `quantity`, `cryptocurrency_id`, `user_id`) VALUES ('1', '3.4', '1', '1');
INSERT INTO `coe`.`cryptocurrency_wallet` (`id_cryptocurrency_wallet`, `quantity`, `cryptocurrency_id`, `user_id`) VALUES ('2', '4.4', '2', '1');
INSERT INTO `coe`.`cryptocurrency_wallet` (`id_cryptocurrency_wallet`, `quantity`, `cryptocurrency_id`, `user_id`) VALUES ('3', '66.6', '1', '2');

INSERT INTO `coe`.`currency` (`id_currency`, `description`, `enabled`, `full_name`, `nickname`) VALUES ('1', '$', 1, 'dolar amerykański', 'USD');
INSERT INTO `coe`.`currency` (`id_currency`, `description`, `enabled`, `full_name`, `nickname`) VALUES ('2', 'opis', 1, 'euro', 'EUR');

INSERT INTO `coe`.`currency_wallet` (`id_cryptocurrency_wallet`, `quantity`, `currency_id`, `user_id`) VALUES ('1', '100.0', '1', '1');
INSERT INTO `coe`.`currency_wallet` (`id_cryptocurrency_wallet`, `quantity`, `currency_id`, `user_id`) VALUES ('2', '33.98', '2', '1');
INSERT INTO `coe`.`currency_wallet` (`id_cryptocurrency_wallet`, `quantity`, `currency_id`, `user_id`) VALUES ('3', '0.1', '2', '2');

INSERT INTO `coe`.`ore` (`id_ore`, `description`, `enabled`, `full_name`, `nickname`) VALUES ('1', 'ojo', 1, 'gold', 'GOLD');

INSERT INTO `coe`.`ore_wallet` (`id_ore_wallet`, `quantity`, `ore_id`, `user_id`) VALUES ('1', '100', '1', '1');

INSERT INTO `coe`.`user_user_roles` (`user_id_user`, `user_roles_id_user_role`) VALUES ('1', '1');
INSERT INTO `coe`.`user_user_roles` (`user_id_user`, `user_roles_id_user_role`) VALUES ('2', '2');