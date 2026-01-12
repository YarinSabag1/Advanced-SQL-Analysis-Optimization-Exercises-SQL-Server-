




---מטלה מספר 2 להגשה
-- ירין סבג ואיליה ועומר כהן
-------------------------------------------------------------------------------------------------------------------------------------------------------

--Data set five:
--1. Analyze the tables in the data set. For each table write its purpose, unique id
--column, data types and size. What do you think are the main columns for
--analysis?

-- select * from [dbo].[DsFive_orders]
-- --המטרה של הטבלה היא להציג מידע זמין על כל הזמנה שבצועה באתר שמשוייך אליה כגון תאריך,מספר זהות לקוח,המוצר הראשי,כמה מוצרים נקנו מה המחיר קנייה ועלות הייצור
----[order_id] מספר הזמנה-מספר מזהה ייחודי וראשי
----לכל הזמנה יש מספר ייחודי שלא חוזר על עצמו באמצעות מספור על מנת לעשות סדר בהזמנות 
----[user_id] מספר זהות לקוח
----מספר מזהה לפי לקוח ייחודי לא מופיע שוב בטבלה לכל לקוח יש את המספר הייחודי והמשויך אליו
----main columns[order_id][items_purchased][price_usd][cogs_usd]
---- אנחנו חושבים כי העמודות שכתבנו למעלה הן העמודות הראשיות מכיוון שאפשר לזהות הזמנה לפי המספר המזהה ואז לראות כמה אותו לקוח קנה ולחשב את הרווח הסופי בעזרת הפרש בין עלות הקנייה לעלות הייצור
----amount of columns
--SELECT COUNT(*) AS column_num
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'DsFive_orders'
--  AND TABLE_SCHEMA = 'dbo';


---- amount of rows
--SELECT COUNT(*) AS rows_num
--FROM [dbo].[DsFive_orders];


---- data types
--SELECT DISTINCT DATA_TYPE
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'DsFive_orders'
--  AND TABLE_SCHEMA = 'dbo';

----total size
--WITH cols AS (
--    SELECT COUNT(*) AS col_count
--    FROM INFORMATION_SCHEMA.COLUMNS
--    WHERE TABLE_NAME = 'DsFive_orders'
--),
--rows AS (
--    SELECT COUNT(*) AS row_count
--    FROM dbo.DsFive_orders
--)
--SELECT 
--    cols.col_count * rows.row_count AS general_size  
--FROM cols, rows;


--[dbo].[DsFive_order_item_refunds]
        --המטרה של הטבלה היא להציג מידע רק על הזמנות שהוחזרו ועוזרת לחשב רווח הפסד על ההזמנה. מידע כגון מספר החזרה,מחיר המוצר שהוחזר מספר ההזמנה וכו'.
        --UNIQUE ID COLUMN - order_item_refund_id העמודה כוללת מספרחם מזהים שלא חוזרים על עצמם גם בעמודות אחרות.

   ------amount of columns
   --     SELECT COUNT(*) AS column_num
   --     FROM INFORMATION_SCHEMA.COLUMNS
   --     WHERE TABLE_NAME = 'DsFive_order_item_refunds'
   --      AND TABLE_SCHEMA = 'dbo';

   --     ---- amount of rows
   --     SELECT COUNT(*) AS rows_num
   --     FROM DsFive_order_item_refunds;

   --     --data types
   --     SELECT DISTINCT DATA_TYPE
   --     FROM INFORMATION_SCHEMA.COLUMNS
   --     WHERE TABLE_NAME = 'DsFive_order_item_refunds'
   --       AND TABLE_SCHEMA = 'dbo';

   --     ----total size
   --     WITH cols AS (
   --     SELECT COUNT(*) AS col_count
   --     FROM INFORMATION_SCHEMA.COLUMNS
   --     WHERE TABLE_NAME = 'DsFive_order_item_refunds'
   --     ),
   --     rows AS (
   --     SELECT COUNT(*) AS row_count
   --     FROM DsFive_order_item_refunds
   --     )
   --     SELECT 
   --     cols.col_count * rows.row_count AS total_size
   --     FROM cols, rows;


/*[dbo].[DsFive_order_items]-
            המטרה של הטבלה היא הצגת מידע על כל הזמנה שבוצעה כולל מי קנה, מתי, איזה מוצר, בכמה, ומה המחיר.
            משמשת לחישוב רווחהפסד, לעקוב אחרי מוצרים מובילים תאריכים והזמנות פופלריות.

            unique id column - order_item_id העמודה כוללת מספרים מזהים שלא חוזרים על עצמם גם בעמודות אחרות ועוזרת לקשר את ההזמנות לטבלאות אחרות.

            העמודות המרכזיות לניתוח הם order_item_id,price_usd,cogs_usd,product_id
            /
        --amount of columns
        SELECT COUNT() AS column_num
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'DsFive_order_items'
         AND TABLE_SCHEMA = 'dbo';

        ---- amount of rows
        SELECT COUNT() AS rows_num
        FROM DsFive_order_items;

        --data types
        SELECT DISTINCT DATA_TYPE
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'DsFive_order_items'
          AND TABLE_SCHEMA = 'dbo';

        ----total size
        WITH cols AS (
        SELECT COUNT() AS col_count
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'DsFive_order_items'
        ),
        rows AS (
        SELECT COUNT() AS row_count
        FROM [dbo].[DsFive_order_items]
        )
        SELECT 
        cols.col_count rows.row_count AS total_size
        FROM cols, rows;


-- [dbo].[DsFive_products]
select * from [dbo].[DsFive_products]

SELECT COUNT(*) AS rows_num
FROM [dbo].[DsFive_products];
 


-- data types
SELECT DISTINCT DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DsFive_products'
  AND TABLE_SCHEMA = 'dbo';


  -- purpose: show all of the products and when thay created . 
  --Uniq id: product_id. 
  --main col for analysis: created_at, product_name
  -- we can see for every product when it funded.



-- [dbo].[DsFive_website_pageviews]
select top 1000 * from [dbo].[DsFive_website_pageviews]

SELECT COUNT(*) AS rows_num
FROM [dbo].[DsFive_website_pageviews];
 


-- data types
SELECT DISTINCT DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DsFive_website_pageviews'
  AND TABLE_SCHEMA = 'dbo';


  -- purpose: show all of the pages and when thay created . 
  --Uniq id: website_pageview_id. 
  --main col for analysis: created_at, pageview_url
  -- we can see for every page where and how much session it had.

-- [dbo].[DsFive_website_sessions]
select  TOP 1000 * from [dbo].[DsFive_website_sessions]
SELECT COUNT(*) AS rows_num
FROM [dbo].[DsFive_website_sessions];
 


-- data types
SELECT DISTINCT DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DsFive_website_sessions'
  AND TABLE_SCHEMA = 'dbo';


  -- purpose: define all of enterence to our websites. 
  --Uniq id: website_session_id. 
  --main col for analysis: created at , user_idutm_campaign - which campaign we analysis. device, http_referer
  -- we can analyze for each campaign how many entrence we have, who enter and how many times, from which device and from where referer.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 2. Which tables connect to each other? Which columns connect? What is the
--purpose of this connection? (It is recommended to create a diagram showing the
--connection between the tables)

 --select * from [dbo].[DsFive_order_item_refunds]
--select * from [dbo].[DsFive_order_items]
--select * from [dbo].[DsFive_orders]
--select * from [dbo].[DsFive_products]
--select * from [dbo].[DsFive_website_pageviews]
--select * from [dbo].[DsFive_website_sessions]

--הטבלאות הבאות מחוברות אחד לשני
--orders -- order_items
--order_items -- products
---order_item_refunds -- order_items
--orders -- website_sessions
--website_sessions -- website_pageviews
--users -- website_sessions
--users -- orders

 /*

במערכת קיימים קשרים מרכזיים בין הטבלאות שמטרתם לאפשר ניתוח נתונים של פעילות הלקוחות באתר ותהליך הרכישה.

הטבלה Orders מחוברת לטבלה Order_Items דרך השדה order_id, כאשר כל הזמנה יכולה להכיל מספר פריטים. כל פריט מקושר גם לטבלה Products באמצעות product_id, לצורך שליפת מידע על המוצר עצמו.

הטבלה Order_Item_Refunds מיועדת למעקב אחר החזרות ומתחברת לטבלה Order_Items דרך השדה order_item_id, כך שניתן לזהות אילו פריטים הוחזרו .

בנוסף, ההזמנות מקושרות לטבלה Website_Sessions באמצעות website_session_id, כדי להבין מאיזה סשן הגיעה כל רכישה. טבלת Website_Sessions מחוברת לטבלה Website_Pageviews דרך אותו שדה, לצורך ניתוח מסלול הגלישה של המשתמש באתר.

טבלת Users מחוברת גם ל-Orders וגם ל-Website_Sessions באמצעות user_id, מה שמאפשר ניתוח התנהגות משתמשים, זיהוי לקוחות חוזרים והבנת דפוסי קנייה.

המבנה כולו יוצר מערכת קשרים  המאפשרת להביא ביקורת על  חוויית המשתמש, החל מהכניסה לאתר ועד ביצוע רכישה והחזרות.

*/
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
For each type of device from which the website is accessed, which
website is responsible for the most referrals that ended in an order?
--3.
WITH summary AS (
    SELECT device_type,http_referer,  RANK() OVER (PARTITION BY device_type ORDER BY ordercount DESC) AS max_rank
    FROM     
(
SELECT  [device_type],[http_referer],count([order_id]) as ordercount 
FROM [dbo].[DsFive_orders] o
INNER JOIN [dbo].[DsFive_website_sessions] as s
ON o.website_session_id = s.website_session_id
WHERE s.http_referer IS NOT NULL
group by [device_type] ,[http_referer] 
 ) AS SUB
 )
 SELECT device_type, http_referer,max_rank FROM summary
 WHERE max_rank = 1;

 Present the amount of views of each page per date.
 

 *)
*/
--4.
--select count([website_pageview_id]) ,cast(created_at as date)  ,[pageview_url] from [dbo].[DsFive_website_pageviews]  group by created_at,[pageview_url] order by [pageview_url]

--5.
 
--select sum(price_usd)as total_sum , product_id, avg(sum(price_usd)) over() as average_sum
--from [dbo].[DsFive_order_items] 
--group by product_id

--6.

--select p.[product_name], p.[created_at],count(o.[order_id])as total_order_2013, count(r.order_item_refund_id) as refund_order
--from [dbo].[DsFive_products] as p 
--join [dbo].[DsFive_orders] as o on o.[primary_product_id]=p.[product_id] 
--full join [dbo].[DsFive_order_item_refunds] as r on r.order_id=o.order_id
--where year(p.[created_at]) = 2013
--group by p.[product_name], p.[created_at] 



--7.

select *
from
(select sum(o.price_usd) sum_product, o.primary_product_id
from [dbo].[DsFive_orders] o
join [dbo].[DsFive_products] p
on o.primary_product_id=p.product_id
where p.product_id in(1,2,3)
group by o.primary_product_id
)q
where q.sum_product>300000


--סעיף 2
select primary_product_id,sum(price_usd) as sum_product
from dbo.DsFive_orders
where primary_product_id IN (1,2,3)
group by primary_product_id
having sum(price_usd) > 300000;


--1 סעיף 
--בעצם המטרה הסופית של כל השאילתה זה לחשב את סך הכל הכנסות של המוצרים מבין מוצר 1, 2 ,3 ולהחזיר את המוצרים עם הסכום הגבוה ביותר שנקבעו לפי הפרמטר הבא 300,000