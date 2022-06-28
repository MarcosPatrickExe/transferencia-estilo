# transferencia-estilo
 Uma pequena aplicação que busca agrupar os seus pixels e assim, separar cada grupo através de um padrão de preenchimento pré-estabelecido.

<hr />

<h3> 1 - Inicialmente estamos testando a separação desses grupos na <strong>seguinte imagem</strong> da Marylin Monroe:  </h3>
<Br />

<img src="https://github.com/MarcosPatrickExe/transferencia-estilo/blob/main/algoritmo%20modificado/mary.jpg" alt="marylin monroe" />

<Br />

<h3> 2 - Definindo a distância de um pixel do outro para 3 (através da sintaxe "g=3"), largura multipliacada por 9 (l*9) e pintando o grupo de pixels com tons de cinza - que é definido a partir da media da sua vizinhança (função "mediaVizinha") pela expressão "(255 - media)/255" - tem-se: </h3>
<Br />

<img src="https://github.com/MarcosPatrickExe/transferencia-estilo/blob/main/resultados/modelo%201.png" alt="marylin monroe" />


<h3> 2 - Definindo a distância de um pixel do outro para 1 (através da sintaxe "g=1"), largura multipliacada por 9 (l*6) e pintando o grupo de pixels com tons de cinza - que é definido a partir da média da sua vizinhança (função "mediaVizinha") pela expressão "(255 - media)/255" - tem-se: </h3>
<Br />

<img src="" alt="marylin monroe" />
