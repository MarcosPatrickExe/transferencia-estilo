# transferencia-estilo
Uma pequena aplicação que está sendo desenvolvida pelo grupo Art + Comp, no segmento "transferência de estilo", que, resumidamente, busca agrupar os seus pixels com o fim de separar cada grupo através de um padrão de preenchimento pré-estabelecido. Esse padrão irá favorecer a separação de camadas com cores diferentes com o intuito de distinguí-las das demais.

<hr />

<h3> 1 - Inicialmente estamos testando a separação desses grupos na <strong>seguinte imagem</strong> da Marylin Monroe:  </h3>
<Br />

<img src="https://i.imgur.com/4bX48c9.jpeg" alt="marylin monroe" />

<Br />

<h3> 2 - Definindo a distância de um pixel do outro para 3 (através da sintaxe "g=3"), largura multipliacada por 9 (l*9) e pintando o grupo de pixels com tons de cinza - que é definido a partir da media da sua vizinhança (função "mediaVizinha") pela expressão "(255 - media)/255" - tem-se: </h3>
<Br />

<img src="https://i.imgur.com/LJ3OAKy.png" alt="marylin monroe" />


<h3> 3 - Definindo a distância de um pixel do outro para 3 ("g=3"), largura multipliacada por 4 (l*4), ativando um contorno de 1 pixel em cada retangulo (rect) e pintando o grupo de pixels com tons de cinza tem-se: </h3>
<Br />

<img src="https://i.imgur.com/DZVhseQ.png" alt="marylin monroe" />

<h3> 4 - : </h3>
<Br />
