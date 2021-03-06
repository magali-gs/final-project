DROP TABLE IF EXISTS survey_results;

CREATE TABLE survey_results (
    id SERIAL PRIMARY KEY,
    hair_health VARCHAR NOT NULL,
    explanation TEXT NOT NULL
);

INSERT INTO survey_results (hair_health, explanation) 
VALUES ('healthy', 'Scenester banjo irony authentic. Messenger bag eiusmod tacos adaptogen before they sold out. Brooklyn small batch gastropub, listicle eu meggings asymmetrical. Aute ex dolore voluptate, labore edison bulb veniam synth migas williamsburg shabby chic biodiesel consectetur dolor. Poutine scenester in reprehenderit selfies. Selvage 8-bit ethical biodiesel crucifix blue bottle air plant art party PBR&B swag pug bespoke enamel pin. Dreamcatcher et elit, next level hoodie venmo woke pour-over normcore. Ugh tempor reprehenderit authentic coloring book. Small batch ut 8-bit put a bird on it chicharrones. Stumptown fam in, velit pok pok sustainable woke paleo exercitation fugiat vice laboris slow-carb hell of. Nulla minim venmo eiusmod enim laborum tilde.');
INSERT INTO survey_results (hair_health, explanation) 
VALUES ('damaged', 'Cliche forage fixie tbh. Shoreditch bitters portland, yr selfies 8-bit food truck intelligentsia kale chips artisan skateboard mixtape mumblecore. Enamel pin street art hashtag microdosing. Man braid snackwave brooklyn quinoa unicorn prism kitsch thundercats XOXO ugh kickstarter health goth pabst. Prism cold-pressed man bun mustache poutine. Health goth heirloom jean shorts squid meditation tattooed flexitarian gentrify snackwave. Twee occupy authentic, vegan XOXO copper mug mustache pug leggings kitsch. Seitan tattooed hexagon, kinfolk kickstarter austin scenester copper mug marfa bushwick cardigan migas vape selvage. Shabby chic hot chicken adaptogen craft beer polaroid, pabst vexillologist 8-bit kale chips you probably havent heard of them paleo. Craft beer keffiyeh dreamcatcher mixtape raclette air plant coloring book. Aesthetic activated charcoal skateboard ethical hexagon. Activated charcoal PBR&B aesthetic tacos mumblecore. Sartorial cloud bread synth lo-fi craft beer. Waistcoat cliche schlitz, taxidermy palo santo crucifix woke actually bespoke yr aesthetic gastropub.');
INSERT INTO survey_results (hair_health, explanation) 
VALUES ('very damaged', 'Stumptown authentic hot chicken activated charcoal literally yr polaroid banh mi photo booth lumbersexual direct trade. Craft beer drinking vinegar wolf narwhal activated charcoal lomo, ramps pour-over skateboard pickled art party lyft small batch affogato gastropub. Affogato vaporware schlitz blog, fam vape cardigan tousled helvetica mumblecore. Yuccie af health goth distillery DIY mlkshk hell of coloring book heirloom four dollar toast adaptogen subway tile man bun schlitz snackwave. Coloring book scenester beard 3 wolf moon selvage chicharrones. Messenger bag roof party coloring book air plant, narwhal lumbersexual echo park seitan lo-fi chia poke subway tile. Vinyl health goth kitsch humblebrag cold-pressed 3 wolf moon, paleo wayfarers occupy biodiesel banjo chambray seitan fanny pack kale chips. Normcore microdosing master cleanse, taxidermy raw denim cold-pressed banh mi craft beer. Farm-to-table vegan tumeric disrupt roof party vice gluten-free crucifix retro locavore seitan gentrify try-hard DIY vape. Everyday carry mumblecore prism yuccie venmo street art iPhone microdosing. +1 dreamcatcher before they sold out taxidermy kitsch try-hard biodiesel quinoa chicharrones.');

ALTER TABLE survey_results ADD COLUMN todo jsonb;

UPDATE survey_results SET todo = '{
    "1st Week": [
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ],
    "2nd Week": [
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Reconstruction",
            "isCompleted": false
        }
    ],
    "3rd Week": [
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ],
    "4th Week": [
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Reconstruction",
            "isCompleted": false
        }
    ]
}' ::jsonb WHERE hair_health =  'healthy';

UPDATE survey_results SET todo = '{
    "1st Week": [
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Reconstruction",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ],
    "2nd Week": [
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ],
    "3rd Week": [
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        }
    ],
    "4th Week": [
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Reconstruction",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ]
}' ::jsonb WHERE id =  5;

UPDATE survey_results SET todo = '{
    "1st Week": [
        {
            "text": "Reconstruction",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        }
    ],
    "2nd Week": [
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ],
    "3rd Week": [
        {
            "text": "Reconstruction",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Nutrition",
            "isCompleted": false
        }
    ],
    "4th Week": [
        {
            "text": "Moisture",
            "isCompleted": false
        },
        {
            "text": "Reconstruction",
            "isCompleted": false
        },
        {
            "text": "Moisture",
            "isCompleted": false
        }
    ]
}' ::jsonb WHERE hair_health =  'very damaged';
