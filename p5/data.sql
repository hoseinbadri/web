-- books
INSERT INTO
    books(title, author, year, price, qt, pages, category)
VALUES
    (
        'Learn PHP 7',
        'Steve Prettyman',
        2015,
        20000,
        100,
        308,
        'PHP'
    ),
    (
        'Make an E-Commerce Site in a Weekend: Using PHP',
        'Bintu Harwani',
        2015,
        15000,
        20,
        133,
        'PHP'
    ),
    (
        'Pro HTML5 Programming',
        'Peter Lubbers',
        2011,
        25000,
        80,
        345,
        'HTML'
    ),
    (
        'Pro PHP and jQuery',
        'Jason Lengstorf',
        2016,
        10000,
        120,
        375,
        'jQuery'
    ),
    (
        'PHP Arrays',
        'Steve Prettyman',
        2017,
        8000,
        25,
        168,
        'PHP'
    ),
    (
        'Beginning CSS3',
        'David Powers',
        2012,
        25000,
        50,
        547,
        'CSS'
    );

-- users
-- PASSWORDS is 12345
INSERT INTO
    users(username, email, password)
VALUES
    (
        'kbowart0',
        'dmockett0@discuz.net',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'vmatthensen1',
        'cbennet1@mlb.com',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'dduffrie2',
        'lnuttey2@sphinn.com',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'nflewitt3',
        'mgauch3@narod.ru',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'esheward4',
        'fbastiman4@msu.edu',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'nwalden5',
        'ltooth5@shareasale.com',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'lritmeier6',
        'okaroly6@narod.ru',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'jkernocke7',
        'gellcome7@tinyurl.com',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'nlinturn8',
        'grontsch8@adobe.com',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    ),
    (
        'mgethyn9',
        'clongfield9@yahoo.co.jp',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    );

-- admins
INSERT INTO
    admins(email, password)
VALUES
    (
        'admin@admin.com',
        '$2y$10$gSmXlAGjBNPg9b0dcS8D.ulZrfLd5w2e8.oc5i4hWB2mqZYEti/iC'
    );

-- orders
INSERT INTO
    orders(user_id, book_id, order_date, price, status)
VALUES
    (7, 5, '1460789714', 8000, 'received'),
    (7, 6, '1363856415', 10000, 'processing'),
    (3, 1, '1399713666', 17000, 'sending'),
    (7, 3, '1303398249', 7000, 'processing'),
    (2, 3, '1586019377', 6000, 'processing');