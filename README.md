# goit-rdb-hw-02 — Нормалізація бази даних

Домашнє завдання 2: Проектування баз даних з використанням семантичних моделей (GoIT Neoversity, курс RDB).

| Завдання | Файл | Опис |
|------|------|-------------|
| Початкова таблиця | `p0_initial.sql` + `p0_homework.png` | Ненормалізована таблиця з неатомарною колонкою `product_name_quantity` |
| Крок 1 — 1NF | `normalization.md` | Розбито мультизначну колонку на атомарні `product_name` і `quantity`; кожен товар — окремий рядок; складений PK `(order_id, product_name)` |
| Крок 2 — 2NF | `normalization.md` | Усунено часткові залежності: виділено `orders_2nf` (дані замовлення) та `order_items_2nf` (дані товарів) |
| Крок 3 — 3NF | `normalization.md` | Усунено транзитивні залежності: виділено таблиці `clients` і `products`; фінальна схема містить 4 таблиці з FK-зв'язками |
| Крок 4 — ER-діаграма | `p4_normalized.png` + `p4_final.png` | ER-діаграма згенерована через MySQL Workbench Reverse Engineer на схемі `hw02` - проміжна і фінальна діаграми |
| Крок 5 — Таблиці в БД | `hw02_schema.sql` | Фінальна 3NF-схема створена в MySQL: `clients`, `products`, `orders`, `order_items` |

## Фінальна схема (3NF)

```
clients     (client_id PK, client_name, address)
products    (product_id PK, product_name)
orders      (order_id PK, client_id FK, order_date)
order_items (id PK, order_id FK, product_id FK, quantity)
```
