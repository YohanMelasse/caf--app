DROP TABLE IF EXISTS cafes;

-- Création de la table
CREATE TABLE IF NOT EXISTS cafes (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    reference VARCHAR(20) NOT NULL,
    origine VARCHAR(50) NOT NULL,
    prix_au_kilo DECIMAL(10, 2) NOT NULL,
    caracteristique_principale VARCHAR(50) NOT NULL,
    disponible BOOLEAN NOT NULL,
    images VARCHAR(100) NOT NULL
);

-- Insertion des données
INSERT INTO cafes (
        nom,
        description,
        reference,
        origine,
        prix_au_kilo,
        caracteristique_principale,
        disponible,
        images
    )
VALUES (
        'Espresso',
        'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.',
        '100955890',
        'Italie',
        20.99,
        'Corsé',
        TRUE,
        'espresso'
    ),
    (
        'Columbian',
        'Café moyennement corsé avec une acidité vive et une saveur riche.',
        '100955894',
        'Colombie',
        18.75,
        'Acide',
        TRUE,
        'columbian'
    ),
    (
        'Ethiopian Yirgacheffe',
        'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.',
        '105589090',
        'Éthiopie',
        22.50,
        'Fruité',
        TRUE,
        'ethiopian'
    ),
    (
        'Brazilian Santos',
        'Café doux et lisse avec un profil de saveur de noisette.',
        '134009550',
        'Brésil',
        17.80,
        'Doux',
        TRUE,
        'brazilian'
    ),
    (
        'Guatemalan Antigua',
        'Café corsé avec des nuances chocolatées et une pointe d''épice.',
        '256505890',
        'Guatemala',
        21.25,
        'Corsé',
        TRUE,
        'guatemalan'
    ),
    (
        'Kenyan AA',
        'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.',
        '295432730',
        'Kenya',
        23.70,
        'Acide',
        TRUE,
        'kenyan'
    ),
    (
        'Sumatra Mandheling',
        'Café profond et terreux avec un corps lourd et une faible acidité.',
        '302932754',
        'Indonésie',
        19.95,
        'Corsé',
        TRUE,
        'sumatra'
    ),
    (
        'Costa Rican Tarrazu',
        'Café vif et net avec une finition propre et une acidité vive.',
        '327302954',
        'Costa Rica',
        24.50,
        'Acide',
        TRUE,
        'costa-rican'
    ),
    (
        'Vietnamese Robusta',
        'Café audacieux et fort avec une saveur robuste distinctive.',
        '549549090',
        'Vietnam',
        16.75,
        'Épicé',
        TRUE,
        'vietnamese'
    ),
    (
        'Tanzanian Peaberry',
        'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.',
        '582954954',
        'Tanzanie',
        26.80,
        'Fruité',
        TRUE,
        'tanzanian'
    ),
    (
        'Jamaican Blue Mountain',
        'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.',
        '589100954',
        'Jamaïque',
        39.25,
        'Doux',
        TRUE,
        'jamaican'
    ),
    (
        'Rwandan Bourbon',
        'Café avec des notes florales prononcées, une acidité vive et un corps moyen.',
        '650753915',
        'Rwanda',
        21.90,
        'Fruité',
        TRUE,
        'rwandan'
    ),
    (
        'Panamanian Geisha',
        'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.',
        '795501340',
        'Panama',
        42.00,
        'Fruité',
        TRUE,
        'panamanian'
    ),
    (
        'Peruvian Arabica',
        'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.',
        '954589100',
        'Pérou',
        19.40,
        'Chocolaté',
        FALSE,
        'peruvian'
    ),
    (
        'Hawaiian Kona',
        'Café rare au goût riche, une acidité douce et des nuances subtiles.',
        '958090105',
        'Hawaï',
        55.75,
        'Doux',
        FALSE,
        'hawaiian'
    ),
    (
        'Nicaraguan Maragogipe',
        'Café avec des notes de fruits, une acidité vive et un corps plein.',
        '691550753',
        'Nicaragua',
        28.60,
        'Fruité',
        FALSE,
        'nicaraguan'
    );
