# dynamic_water_plugin

![ScreenShot](/preview_1.png)
![ScreenShot](/preview_2.png)
![ScreenShot](/preview_3.png)


--PT-BR--\
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
  
  
  
  
  --EN-US--\
  For some time, you've been creating a platform-style game, is awesome, creative levels, but... Something is missing in that river or puddle of water... Don't worry!! With this plugin, you will be able to create dinamic polygonal water customizable in a fast and simple way!!
  
  Why use dinamic polygonal water?\
  -Because need less processing, everything that is being processed are physical calculations of damped harmonic oscilation and energy dispersion.
  
  I can use only as water?\
  -Nope!! You can customize the color and the way that the fluid acts to be like lava, for example.
  
  I think that i see that in somewhere...\
  -Yes, the idea is not 100% mine, i just modified some itens from the tutorial of the **The Step Event** of the game engine Game Maker Studio 1.4 and 2, here is the link if has interest: https://www.youtube.com/watch?v=LG3wocqjC-0 
  
  How to use?\
  -Here is a little tutorial of how to use:
  
  
  After inserting the folder addons in your project, and activate the plugin in the project options you can, in any scene, add a new node called "dynamic water", that derives from Node2D;
  
  When the node is inserted, change the properties "HEIGHT" and "WIDTH" to change the water area;
  
  Changing the property "RESOLUTION", you can change the ammount of vectors in the water surface, increasing the quality of the waves;
  
  The property "COLOR" changes the color of the water (duh?);
  
  Now, some physic properties, that playing a little can understand more:
  
  -"TENSION" change the "elasticy" of the water, making that the vectors return to original position more fast;
  
  -"DAMPING" makes that the energy loose faster;
  
  -"PASSES" number of vectors that is dispersed the energy;
  
  -"DISPERSION" the energy quantity dispersed by the vectors;
  
  OK, but how i make the water move?\
  -For now until 1.0 version of the plugin, the only way is to use a object of the RigidBody2D class, because the calculated variables of energy need some variables of the RigidBody2D (linear velocity, exclusive of the class). I have plans of improve the plugin to calculate the velocity of any body from the position change.
  
  I have some ideas to your plugin, i can help?\
  -Of course, if want to help in that and other projects, send a e-mail to: ghsoares99795@gmail.com
  
  So, thank you to your attention and i hope that you enjoy the plugin!!
  
  SRY FOR THE BAD ENGLISH BTW XD
  
  
  
  
  
  
  
  
  
  
  

  
