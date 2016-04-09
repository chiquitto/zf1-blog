CREATE TABLE `admin` (
  `idadmin` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `nome` TEXT NOT NULL,
  `email` TEXT NOT NULL,
  `senha` TEXT NOT NULL,
  `papel` INTEGER NOT NULL
);

INSERT INTO `admin` (idadmin, nome, email, senha, papel) VALUES (NULL, 'Admin 01', 'admin01@email.com', 'admin01', 1);
INSERT INTO `admin` (idadmin, nome, email, senha, papel) VALUES (NULL, 'Admin 02', 'admin02@email.com', 'admin02', 2);

CREATE TABLE `categoria` (
  `idcategoria` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `categoria` TEXT NOT NULL
);

INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Esportes');
INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Politica');
INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Games');
INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Lorem Ipsum');

CREATE TABLE `post` (
  `idpost` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `idcategoria` INTEGER NOT NULL,
  `idadmin` INTEGER NOT NULL,
  `titulo` TEXT NOT NULL,
  `texto` TEXT NOT NULL
);

INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 1, 1, 'Jogo de Futebol', 'Neste ultimo final de semana, os times jogaram ...');
INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 1, 2, 'Mundial de Voley', 'O Brasil venceu a seleção da Servia e Montenegro');
INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 3, 1, 'Lançamento de Call Of Dutty XXI', 'Nesta semana será lançado o novo jogo da série Call Of Dutty');

INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 4, 1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac ex eu tortor congue imperdiet posuere at tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In placerat odio in placerat pellentesque. Aliquam fermentum sed justo vel ultrices. Mauris laoreet risus egestas elit ultrices, quis gravida erat tristique. Sed eget odio in enim efficitur rhoncus. Phasellus sit amet rhoncus tortor. Nulla facilisi.

In consequat et elit in malesuada. Integer eget turpis metus. Fusce semper justo id fringilla volutpat. Quisque laoreet molestie sollicitudin. Phasellus vulputate aliquet bibendum. Vestibulum imperdiet sapien sed ullamcorper accumsan. Mauris vitae lectus nibh. Integer semper sem non neque consectetur, vel auctor lorem lobortis. Mauris faucibus sagittis ullamcorper. Maecenas aliquet lectus ultricies nisl porta, vitae condimentum lacus congue. Sed interdum, sem eu tristique molestie, elit velit euismod libero, at malesuada sem lorem a urna. Etiam interdum in neque lacinia tincidunt.

Mauris ut rutrum massa. Pellentesque quis est ante. Praesent quis efficitur urna. Duis aliquam velit at fringilla interdum. Ut finibus nibh a libero volutpat mollis. Suspendisse vel mauris arcu. Maecenas sed quam sagittis, convallis odio non, dapibus risus. In varius ex urna, nec mattis lacus eleifend sed. Aliquam interdum justo ligula, nec auctor erat vehicula sit amet. Aliquam nec faucibus quam. Fusce arcu erat, ullamcorper sed fermentum a, maximus et urna. Phasellus lacinia diam est, eget auctor urna egestas et. Nunc mi ex, tempor consequat orci eu, mattis sollicitudin velit.

Donec ex dui, maximus ut erat nec, finibus molestie nunc. In consectetur, quam id tristique eleifend, ante erat molestie metus, at tristique magna leo nec diam. Duis vel justo eu nunc malesuada consectetur. Fusce quis ex non risus vulputate ultricies. Donec tristique felis et rhoncus mollis. Sed molestie odio non pellentesque ultricies. Donec mollis massa ante, at elementum mi porttitor ut. Suspendisse pellentesque diam justo, vitae molestie dolor iaculis et. Fusce eu massa a erat blandit suscipit vel ac velit. Donec quam elit, aliquam at bibendum sit amet, iaculis in dolor. Phasellus vitae diam et nisl porta suscipit nec non erat. Sed ultrices gravida lobortis. Maecenas pharetra sapien sed turpis fringilla pretium. Etiam lacus massa, accumsan sed vulputate eu, gravida at ante. Nullam eu est dapibus, ullamcorper felis non, tempus augue.

Vivamus faucibus efficitur arcu, at dictum risus euismod vitae. Donec in risus tempor, euismod sem in, rutrum purus. In quis odio convallis felis pulvinar lobortis eget id arcu. Pellentesque tempor, massa nec venenatis tempus, mi leo efficitur urna, nec blandit nunc lacus sed orci. Aliquam scelerisque nibh nec venenatis tincidunt. In quis porta ligula, ac malesuada risus. Suspendisse et suscipit augue. Aliquam erat volutpat. Morbi tincidunt augue vitae justo dapibus, id placerat erat tempor. Aliquam erat volutpat. Nam blandit dui a turpis laoreet, id tincidunt nisi venenatis.');

INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 4, 1, 'Mussum Ipsum', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.

Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.

Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

Cevadis im ampola pa arma uma pindureta. Nam varius eleifend orci, sed viverra nisl condimentum ut. Donec eget justis enim. Atirei o pau no gatis. Viva Forevis aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Copo furadis é disculpa de babadis, arcu quam euismod magna, bibendum egestas augue arcu ut est. Delegadis gente finis. In sit amet mattis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis. Pellentesque viverra accumsan ipsum elementum gravidis.');

INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 4, 1, 'Minios Ipsum', 'Minions ipsum tank yuuu! Poulet tikka masala ti aamoo! Bappleees bappleees poopayee bappleees chasy bananaaaa bananaaaa baboiii. Uuuhhh hahaha gelatooo aaaaaah baboiii la bodaaa wiiiii tatata bala tu baboiii. Uuuhhh gelatooo bananaaaa hana dul sae. Ti aamoo! tulaliloo hana dul sae gelatooo poulet tikka masala butt me want bananaaa! Potatoooo jiji. Hana dul sae aaaaaah jiji poulet tikka masala potatoooo tank yuuu! Tatata bala tu. Chasy ti aamoo! Pepete underweaaar butt belloo! Jeje poopayee bee do bee do bee do. Para tú daa bananaaaa jiji. Underweaaar butt bananaaaa poopayee poulet tikka masala belloo!

Para tú tank yuuu! Pepete uuuhhh bananaaaa bappleees. Poulet tikka masala hahaha baboiii uuuhhh pepete chasy poulet tikka masala hana dul sae. Uuuhhh bappleees bananaaaa baboiii gelatooo jiji la bodaaa potatoooo potatoooo wiiiii. Me want bananaaa! tatata bala tu chasy tulaliloo. Ti aamoo! gelatooo po kass poulet tikka masala underweaaar chasy underweaaar uuuhhh wiiiii bappleees.

Me want bananaaa! tatata bala tu tank yuuu! Me want bananaaa! Pepete la bodaaa gelatooo daa para tú poulet tikka masala. Belloo! jiji bappleees para tú ti aamoo! Daa chasy chasy tatata bala tu. Para tú bananaaaa baboiii la bodaaa tank yuuu! Bappleees tank yuuu! Baboiii wiiiii gelatooo. Para tú la bodaaa uuuhhh tank yuuu! Bananaaaa me want bananaaa! Daa jeje poopayee bananaaaa daa. Tulaliloo hahaha underweaaar para tú chasy. Bananaaaa belloo! Hana dul sae po kass tank yuuu! Hana dul sae bee do bee do bee do daa bee do bee do bee do bananaaaa pepete bappleees. Bappleees bananaaaa jiji jeje bee do bee do bee do.

Bappleees wiiiii bananaaaa daa la bodaaa belloo! Para tú tank yuuu! Tulaliloo. Butt bappleees jeje baboiii tank yuuu! Po kass tulaliloo tatata bala tu daa po kass. Aaaaaah bappleees poulet tikka masala chasy bappleees butt bee do bee do bee do tatata bala tu. Daa jiji hana dul sae aaaaaah jiji underweaaar tatata bala tu jiji pepete. Aaaaaah gelatooo poulet tikka masala underweaaar tatata bala tu la bodaaa la bodaaa chasy poopayee. Hahaha poulet tikka masala bappleees po kass jeje me want bananaaa! Chasy hana dul sae jeje. Tulaliloo baboiii bappleees underweaaar bee do bee do bee do butt jiji poulet tikka masala uuuhhh poulet tikka masala gelatooo. Butt po kass me want bananaaa! Baboiii pepete jeje chasy. Jiji baboiii gelatooo tank yuuu! Baboiii belloo! Jeje tulaliloo.');

INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 4, 1, 'Bacon Ipsum', 'Bacon ipsum dolor amet ham hock fatback cow, pork kielbasa ball tip boudin beef swine. Landjaeger tri-tip ball tip swine pork pork loin leberkas filet mignon. Pork tongue andouille strip steak frankfurter beef pork belly kevin ball tip ham hock jerky. Pork chop drumstick ground round shoulder pig meatloaf shankle biltong swine fatback porchetta. Doner tri-tip ball tip pork loin shoulder chicken sirloin landjaeger tenderloin filet mignon beef ribs chuck turkey swine. Doner ball tip pork short ribs.

Jerky pork loin frankfurter, salami drumstick pastrami shankle kevin pancetta tri-tip beef spare ribs turducken pork belly ham hock. Landjaeger tongue t-bone salami shoulder andouille kevin. Pork loin beef ribs hamburger turkey pig cupim turducken cow sirloin shankle corned beef jowl. Corned beef ribeye porchetta pastrami doner shoulder. Kevin biltong short loin turducken picanha ball tip short ribs pig chicken porchetta. Tongue corned beef bacon pastrami, salami brisket shankle pig rump boudin meatloaf cupim ground round turkey. Pork chop short loin boudin doner, drumstick landjaeger cow strip steak porchetta.

Pork jerky corned beef capicola ham tenderloin bacon kielbasa. Biltong pancetta shank pork belly meatball filet mignon alcatra pork pig. Flank pork frankfurter turkey shank porchetta meatball swine ball tip strip steak. Turducken frankfurter spare ribs cow. Chuck ball tip biltong frankfurter rump pork chop, drumstick tenderloin turducken brisket kevin tail shankle.

Hamburger ham hock t-bone, jerky andouille frankfurter short ribs porchetta. Tongue rump t-bone kevin turducken, sausage pancetta picanha beef pork belly prosciutto. Sirloin pork cow ham hock. Pork chop biltong turducken, cupim boudin landjaeger brisket fatback sausage filet mignon tri-tip jerky ribeye ham hock. Ground round turkey corned beef tri-tip beef, brisket fatback boudin pork chop. Shank turkey bacon, rump tail tri-tip hamburger cow swine pork beef ribeye.

Sausage frankfurter pork loin, bresaola pork chop bacon chuck tongue tenderloin cow kielbasa. Pork belly doner shank jowl tenderloin boudin, bresaola tongue andouille short ribs prosciutto. Leberkas cupim flank spare ribs bacon, ground round pork strip steak rump beef ribs filet mignon sirloin bresaola. Ham hock tri-tip frankfurter doner ribeye hamburger landjaeger shankle t-bone sausage meatball ball tip pig bacon. Ball tip pork pork loin turkey. Jowl turducken frankfurter brisket flank.');

INSERT INTO `post` (idpost, idcategoria, idadmin, titulo, texto) VALUES (NULL, 4, 1, 'Dilmes Ipsum', 'No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso. Por que eu acho que.... 11 entre 10 brasileiros gostariam. Você veja, eu já vi, parei de ver. Voltei a ver, e acho que o Neymar e o Ganso têm essa capacidade de fazer a gente olhar.

Primeiro eu queria cumprimentar os internautas. -Oi Internautas! Depois dizer que o meio ambiente é sem dúvida nenhuma uma ameaça ao desenvolvimento sustentável. E isso significa que é uma ameaça pro futuro do nosso planeta e dos nossos países. O desemprego beira 20%, ou seja, 1 em cada 4 portugueses.

Se hoje é o dia das crianças... Ontem eu disse: o dia da criança é o dia da mãe, dos pais, das professoras, mas também é o dia dos animais, sempre que você olha uma criança, há sempre uma figura oculta, que é um cachorro atrás. O que é algo muito importante!

Ai você fala o seguinte: "- Mas vocês acabaram isso?" Vou te falar: -"Não, está em andamento!" Tem obras que "vai" durar pra depois de 2010. Agora, por isso, nós já não desenhamos, não começamos a fazer projeto do que nós "podêmo fazê"? 11, 12, 13, 14... Por que é que não?');