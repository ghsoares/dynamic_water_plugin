# dynamic_water_plugin

![ScreenShot](/preview_1.png)
![ScreenShot](/preview_2.png)
![ScreenShot](/preview_3.png)


### --PT-BR--
  Há algum tempo, você vem criando um jogo no estilo plataforma, ele é incrível, fases criativas, mas... Falta algo naquele rio um poça de água... Não se preocupe!! Com este plugin, poderá criar água dinâmica polygonal de forma simples e rápida e customizável!!
 
 Por que usar água dinâmica poligonal?\
  -Pois necessita de menos processamento, tudo que está sendo exeucutado são cálculos físicos de oscilação harmonica amortecida e     dispersão da energia.
  
  Serve apenas como água?\
  -Não!! Você pode customizar a cor e a forma como se comporta para parecer com lava, por exemplo.
  
  Eu acho que já vi isso am algum lugar...\
  -Realmente, a ideia não é 100% meu, apenas modifiquei alguns itens do tutorial do **The Step Event** para a engine Game Maker Studio 1.4 e 2, aqui está o link caso tenha interesse: https://www.youtube.com/watch?v=LG3wocqjC-0 
  
  Como usar?\
  -Aqui vai um pequeno tutorial de como usar:
  
  Após inserir a pasta addons no seu projeto, e ativar o plugin pelas opções do projeto poderá, em qualquer cena, adicionar um novo node chamado "dynamic water", que deriva-se do node2D;
  
  Quando for inserido o node, mude as propriedades "HEIGHT" (altura) e "WIDTH" (largura) para mudar a área da água;
  
  Mudando a propriedade "RESOLUTION" (resolução), você pode mudar a quantidade de vetores na superfície da água, aumentando a qualidade das ondas;
  
  A propriedade "COLOR" (cor) permite mudar a cor da água;
  
  Agora, algumas propriedades físicas, que brincando um pouco pode entender mais:
  
  -"TENSION" (tensão) muda a propriedade "elastica" da água, fazendo com que os vetores tendem voltar à posição original mais rapidamente;\
  -"DAMPING" (amortecimento) faz com que a energia perca mais rapidamente;\
  -"PASSES" Número de vetores que será dispersado a energia;\
  -"DISPERSION" (dispersão) A quantidade de energia dispersado pelos vetores
  
  Tá, mas agora como faço a água se mexer?\
  -Por enquanto até a versão 1.0 do plugin, a única maneira é de usar um objeto da classe RigidBody2D, pois as variáveis calculadas de energia aplicada precisa de variáveis do RigidBody2D (que é a velocidade linear, exclusivo da classe). Tenho planos de aprimorar o plugin para calcular a velocidade de qualquer corpo a patir de mudança de posição.
  
  Eu tenho algumas ideias para seu plugin, posso ajudá-lo?\
  -Claro, caso queira auxiliar nesse e nos outros projetos, mande um e-mail para: ghsoares99795@gmail.com
  
  Enfim, muito obrigado pela sua atenção e espero que goste do plugin!!
  
  
  
  ### --EN-US--
  For some time, you've been creating a platform-style game, with awesome and creative levels. But... something's missing in that river or puddle of water... Don't worry! With this plugin, you will be able to create dynamic and customizable polygonal water the fast and simple way!
  
  Why use dynamic polygonal water?\
  -Because it needs less processing, everything that is being processed are physical calculations of damped harmonic oscillation and energy dispersion.
  
  I can only use this for water?\
  -Nope! You can customize the color and the way that the fluid acts to be more like, lava, for example.
  
  I think I saw this somewhere else...\
  -Yes, the idea is not 100% mine. I just modified some items from the tutorial from the **The Step Event** of the game engine Game Maker Studio 1.4 and 2, here is the link if it interests you.: https://www.youtube.com/watch?v=LG3wocqjC-0 
  
  How do I use this?\
  -Here is a little tutorial to help you.:
  
  
  After inserting the folder addons in your project, and activate the plugin in the project options you can, in any scene, add a new node called `dynamic water` that derives from `Node2D`.
  
  When the node is inserted, change the properties `HEIGHT` and `WIDTH` to change the water area.
  
  By changing the property `RESOLUTION`, you change the ammount of vectors in the water surface, increasing the quality of the waves.
  
  The property `COLOR` changes the color of the water (duh?).
  
  Now for the physics properties. Playing with them a little can help to understand them more:
  
  -`TENSION`: Changes the "springiness" of the water waves, meaning the vectors return to their original positions faster.
  
  -`DAMPING`: Water waves die down faster.
  
  -`PASSES`: Number of vectors that the waves' energy is dispersed into.
  
  -`DISPERSION`: The amount of energy dispersed into the wave vectors;
  
  OK, but how do I make the water move?\
  -Until version 1.0 of the plugin, the only way is to use an object of the `RigidBody2D` class, because the calculated variables of energy need some variables from a `RigidBody2D` (linear velocity, exclusive of the class). I have plans of improving the plugin to calculate the velocity of any body from the position change.
  
  I have some ideas for your plugin. Can I help?\
  -Of course, if you want to help in that and other projects, send an e-mail to: ghsoares99795@gmail.com
  
  So, thank you for your attention and I hope that you enjoy this plugin!!
  
  ~~SRY FOR THE BAD ENGLISH BTW XD~~
  
  
  
  
  
  
  
  
  
  
  

  
