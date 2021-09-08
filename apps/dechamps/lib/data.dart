class Noticia {
  final String title;
  final String data;
  final String? fonte;

  Noticia(this.title, this.data, this.fonte);
}

List<Noticia> get noticias =>
    data.map((e) => Noticia(e['title']!, e['data']!, e['fonte'])).toList();

var data = [
  {
    'title':
        "Nova atualização do Telegram permite audiência ilimitada em transmissões ao vivo",
    'data':
        "Segundo o post no blog do aplicativo, com a novidade será possível criar um “próprio canal de TV”, com transmissões ilimitadas. A nova versão 8 também traz personalizações em mensagens encaminhadas, um painel de stickers melhorado, novos emojis animados e mais.",
  },
  {
    'title': "Docker Desktop não é mais gratuito para grandes empresas",
    'data':
        "O novo plano de assinatura busca um modelo de negócios mais sustentável, mas o utilitário permanecerá gratuito para indivíduos ou pequenas empresas. Organizações com mais de 250 funcionários, ou mais de 10 milhões de dólares em receita anual, precisarão utilizar o plano pago de 21 dólares por mês, com novos recursos como gerenciamento centralizado, logon único e segurança aprimorada.",
    'fonte': "The Register.",
  },
  {
    'title': "Amazon anuncia plano de contratações global massivo",
    'data':
        "Andy Jassy, novo CEO da companhia, quer contratar 55 mil pessoas para funções corporativas e de tecnologia como engenharia, pesquisa e robótica. O número equivale a mais de um terço do quadro de funcionários do Google e perto de todos os funcionários do Facebook. Segundo Jassy, a pandemia alterou o cenário de trabalho, com muitas pessoas decidindo procurar por novas áreas e oportunidades de trabalho.",
    'fonte': "Reuters.",
  },
  {
    'title':
        "NASA cancela lançamento de satélite devido à escassez de oxigênio líquido causada pela pandemia",
    'data':
        "A indústria espacial utiliza o material como oxidante no combustível de foguetes. A demanda por oxigênio tem aumentado com as novas variantes do vírus.",
    'fonte': "TechCrunch.",
  },
  {
    'title':
        "Câmara aprova inclusão da proteção de dados como garantia fundamental",
    'data':
        "A PEC 17/19 torna a proteção de dados pessoais, inclusive nos meios digitais, um direito fundamental, garantido pela Constituição. O texto ainda precisa ser aprovado no Senado.",
    'fonte': "Agência Brasil.",
  },
  {
    'title':
        "GSI exige criptografia por hardware e dados armazenados no País em plataformas do Governo",
    'data':
        "O Gabinete de Segurança Institucional determinou novos requisitos de segurança em órgãos públicos que adotam soluções de computação em nuvem.",
    'fonte': "Convergência Digital.",
  },
  {
    'title': "Chrome 93 é lançado",
    'data':
        "Além de melhorias no desempenho e pequenas mudanças visuais, o destaque fica com PWAs (Progressive Web Apps) cada vez mais nativos no Windows, macOS e Linux. O Chrome 93 é o último do ciclo de atualizações a cada seis semanas. A partir do Chrome 94, novas versões serão lançadas mais rapidamente, a cada quatro semanas.",
    'fonte': "Android Police.",
  },
  {
    'title':
        "Cloudflare decide utilizar processadores AMD em nova geração de servidores",
    'data':
        "Apesar da última geração de processadores Xeon da Intel fosse capaz de competir com os AMD Epyc em termos de desempenho bruto, o consumo de energia era várias centenas de Watts maior por servidor. Com outros refinamentos em memória, armazenamento e rede, a nova geração do “Edge Server” consegue lidar com aproximadamente 29% mais requests do que a anterior, sem aumento no consumo de energia.",
    'fonte': "The Register.",
  },
];
