l1 = League.create(
    name: "Physicality",
    description: "A league made up of the physically gifted!",
    img_url: "https://www.pngitem.com/pimgs/m/17-170276_logo-bodybuilding-physical-fitness-body-fitness-logo-hd.png") 

l2 = League.create(
    name: "The Elite",
    description: "A league comprised of the most skilled Heroes!",
    img_url: "https://thumbs.dreamstime.com/z/skills-icon-trendy-logo-concept-white-background-human-resources-collection-133513629.jpg")

h1 = Hero.create(
    name: "Saitama", 
    description: "Saitama, an unassociated hero, hails from City Z and performs heroic deeds as a hobby. He has trained himself to the point of being able to defeat any enemy with a single punch, but his unmatched strength has left him with an overwhelming sense of boredom.", 
    rank: 100, 
    abilities: "Super Strength, hyper athlete" ,
    img_url: "https://media3.giphy.com/media/3ohc1292yKn6Z1saGs/200.gif" ,
    league: l1)
h2 = Hero.create(
    name: "Jak", 
    description: "A young kid sent through time and tortured with dark echo, jak becomes a symbolof hope for the people as he takes on many challenges against oppressive forces. Along the way he meets various characters leading to the discovery of his past.", 
    rank: 49, 
    abilities: "Dark Eco manipulatotion, Light Eco manipulation, Gun specialist" ,
    img_url: "https://i.makeagif.com/media/4-30-2014/7xchyA.gif" ,
    league: l1)
h3 = Hero.create(
    name: "Megaman X", 
    description: "Mega Man X, commonly known as X, was created by Dr. Thomas Light. X was a new type of robot with the ability to think, feel, and make his own decisions.", 
    rank: 22, 
    abilities: "Steal maverick abilities, energy blasts, Armor changes, Nova Strike" ,  
    img_url: "https://steamuserimages-a.akamaihd.net/ugc/978855622151830684/CEDEFE1D712ECE251FDF3CDEE100EBA8677EE7BD/" ,
    league: l2)
h4 = Hero.create(
    name: "Ichigo", 
    description: "He is a teenager with the ability to see spirits who gains the powers of a Shinigami from Rukia Kuchiki. He is a hybrid of Human, Soul, Quincy, and Hollow.", 
    rank: 10, 
    abilities: "Spritual pressure emmission, Sword enhancement, fullbring, hollow transformation", 
    img_url: "https://media2.giphy.com/media/JLYQnbND9gkYU/giphy.gif" , 
    league: l1)
h5 = Hero.create(
    name: "The Flash", 
    description: "At 11, Barry Allen's life changed completely when his mother died in a freak accident and his innocent father was convicted of her murder. Orphaned Barry later becomes Detective Joe West. Now a crime-scene investigator, his dedication to learn the truth about his mother's death drives him to follow up on every new scientific advancement and urban legend. When his latest obsession - a particle accelerator heralded as a world-changing invention - causes an explosion, it creates a freak storm and Barry is struck by lightning. He awakes from a coma nine months later with the power of superspeed. When he learns that others who have gained powers use them for evil, he dedicates himself to protecting the innocent, while still trying to solve the older mystery.", 
    rank: 15, 
    abilities: "speed force manipulation, hyperspeed movement", 
    img_url: "https://i.gifer.com/JDf7.gif",
    league: l2)
h6 = Hero.create(
    name: "Wolverine", 
    description: "He is a mutant who possesses animal-keen senses, enhanced physical capabilities, a powerful regenerative ability known as a healing factor, and three retractable claws in each hand. ", 
    rank: 45, 
    abilities: "Quick regeneration, Antematium armor plated, Claw retractability", 
    img_url: "https://media.tenor.com/images/a8a5d9497fa32a181c81ed8dd4887c9e/tenor.gif",
    league: l1)
h7 = Hero.create(
    name: "Gohan", 
    description: "Gohan son of Goku is the elder son of the series the older brother of Goten. Gohan is the first hybrid (half-Earthling, half-Saiyan) to appear in the series. He is named after Goku's adoptive grandfather, Gohan.", 
    rank: 30, 
    abilities: "Super Sayian tranformations, ki energy blasts, super strength", 
    img_url: "https://media0.giphy.com/media/ki6vcWVCkGscU/200w.gif?cid=82a1493bqiz8sjdz6t3jds0foapcsg5abtw4xy7pbktl0up9&rid=200w.gif&ct=g", 
    league: l1)
h8 = Hero.create(
    name: "The Fullmetal Alchemist", 
    description: "Precocious, stubborn, and hot-tempered. Ed's super-smart, and he's one of the best alchemists around. But he doesn't compromise and he doesn't get along with authority well; not the best attributes for a military employee. He frequently loses his temper, and can be rash.", 
    rank: 19, 
    abilities: "Transmutaion without Seals", 
    img_url: "https://data.whicdn.com/images/106416249/original.gif" ,
    league: l2)
h9 = Hero.create(
    name: "Zero", 
    description: "Zero (ゼロ, Zero) is a public masked identity, originally created and assumed by the former and exiled prince, Lelouch vi Britannia.", 
    rank: 8, 
    abilities: "Geause", 
    img_url: "https://64.media.tumblr.com/4017a29859655981108da8b9f144a3a6/tumblr_pdjinlR8Uw1xdqleoo2_500.gifv" ,
    league: l2)
h10 = Hero.create(
    name: "Cloud", 
    description: "An ex-SOLDIER: first class, Cloud came to Midgar to start a new chapter of his life as a mercenary. At the invitation of his childhood friend, Tifa, he accepted a job with Avalanche. He may bring his buster sword to bear against Shinra troopers, but he does not care for plight of the planet. For him, this is a job and nothing more.", 
    rank: 25, 
    abilities: "Sword enhancement, materia manipulation", 
    img_url: "https://i.redd.it/l8p606195po41.gif" ,
    league: l1)

