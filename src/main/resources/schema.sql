DROP TABLE IF EXISTS public.appaka_commerce_catalog_product;
CREATE TABLE 'appaka_commerce_catalog_product'
(
    'id' BIGINT AUTO_INCREMENT PRIMARY KEY,
    'sku' VARCHAR(255) NOT NULL UNIQUE,
)
create index appaka_commerce_catalog_product_sku_index on appaka_commerce_catalog_product (sku);

DROP TABLE IF EXISTS public.appaka_commerce_catalog_attribute;
CREATE TABLE 'appaka_commerce_catalog_attribute'
(
    'id' BIGINT AUTO_INCREMENT PRIMARY KEY,
    'name' VARCHAR(255) NOT NULL UNIQUE,
    'type' CHAR(10) NOT NULL, -- string, numeric, currency, text...
    'data_class' VARCHAR(255) NOT NULL, -- String, ch.appaka.commerce.data.Currency, ch.appaka.commerce.data.HTML, ...
    'backend_input' VARCHAR(255) NOT NULL, -- ch.appaka.commerce.backend.input.Currency, ch.appaka.commerce.backend.input.HTML, ...
    'backend_input' VARCHAR(255) NOT NULL, -- ch.appaka.commerce.backend.input.Currency, ch.appaka.commerce.backend.input.HTML, ...
    -- TODO attribute definition
)

DROP TABLE IF EXISTS public.appaka_commerce_catalog_product_attribute;
CREATE TABLE 'appaka_commerce_catalog_product_attribute'
(
    'id_product' BIGINT NOT NULL,
    'id_attribute' BIGINT NOT NULL,
    'value' JSON NOT NULL,
)
CREATE UNIQUE INDEX appaka_commerce_catalog_product_attribute_uindex on appaka_commerce_catalog_product_attribute (id_product, id_attribute);
