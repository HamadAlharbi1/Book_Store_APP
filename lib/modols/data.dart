class Data {
  static List<Quality> qualitytype = [
    Quality(type: 'Normal', quality: 'AAC 192 KBPS'),
    Quality(type: 'High', quality: 'MP3 320 KBPS'),
    Quality(type: 'Lossless', quality: 'FLAC 1500 KBPS (16 Bit/44.1 KHz)'),
  ];
}

class Quality {
  String type;
  String quality;
  Quality({required this.type, required this.quality});
}

class Data1 {
  static List<Product> horizentalCards = [
    Product(
        image:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1555709504i/45176947._UY2048_SS2048_.jpg',
        name: 'كبر دماغك',
        author: 'Harvey Ecker',
        describtion:
            'يحتوي هذا الكتاب على مجموعة من النصائح والتجارب العملية التي تساعد على اكتساب مساحة جديدة من الهدوء والسكينة من الناحية النفسية، كما أن المؤلف استطاع ببراعة عملية أن يرسم طريقًا لصناعة عالم داخلي يناسب كل واحد من القراء، بيد أن هذا له تأثير كبير جدًا على تحقيق النجاح في الحياة.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image:
            'https://www.jarir.com/cdn-cgi/image/fit=contain,width=auto,height=auto,quality=100,metadata=none/https://ak-asset.jarir.com/akeneo-prod/asset/e/3/2/4/e324fdeda6bd616b0b7a25214f3fb9ae3dc4ae4b_597494.jpg',
        name: 'اقرأ الناس كأنهم كتاب',
        author: ' باتريك كينغ ',
        describtion:
            'تعلّم طرق التعرف على شخصيات البشر وفهم مكنونات النفس البشرية وتحليل الشخصيات. تعرّف على طرق مبتكرة لاكتشاف الكذب بدون أجهزة وطرق الوصول للمعلومة من الآخرين. كلنا مررنا بالتجربة نفسها؛ عندما نظن أننا نفهم شخصًا جيدًا، ثم يحدث موقف يجعلنا نشعر بالصدمة.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image:
            'https://www.jarir.com/cdn-cgi/image/fit=contain,width=auto,height=auto,quality=100,metadata=none/https://ak-asset.jarir.com/akeneo-prod/asset/m1images/5/2/522151.jpg',
        name: 'الكل يكذب',
        author: ' دافيدوتس .. سيث ستيفنز',
        describtion:
            'خطت أناملُ عالم النفس التجريبي “ستيفن بنكر” مقدمةَ الكتاب كي يبلور بدوره هذه الفكرة، ويناقش محاولات علم النفس وعلم الاجتماع في كشف خصائص النفس البشرية، إلا أن جميع الأساليب من مثل قياس زمن ردات الفعل واتساع حدقة العين والتصوير العصبي الوظيفي، لم تقدم تصورًا للعقل بحكم التركيبة المعقدة والمتشابكة لأفكار الإنسان وأحكامه والتي تحول دون فهمنا لآلية التفكير عند البشر. ولا يمكننا التنبؤ بمستقبل يتعلق بهذ الظاهرة، إلا بالتخمينات وتعميم نتيجة عينة على المجتمع.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image: 'https://m.media-amazon.com/images/I/41LuUlddrhL._SY344_BO1,204,203,200_QL70_ML2_.jpg',
        name: 'the book theif',
        author: 'Geoffrey Rush, Emily Watson',
        describtion:
            'تتمحور رواية سارقة الكتاب حول حياة ليزيل ميمينغر، وهي فتاة في التاسعة من العمر تعيش في ألمانيا خلال الحرب العالمية الثانية. تسرد الرواية تجارب ليزيل عبر الموت الذي يقدم تفاصيلاً عن الجمال والدمار في حياة الناس خلال فترة الحرب. بعد موت أخيها، تصاب ليزيل بحالة من الذهول في منزل أبويها بالتبني هانس وروزا هوبيرمان.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image:
            'https://www.jarir.com/cdn-cgi/image/fit=contain,width=auto,height=auto,quality=100,metadata=none/https://ak-asset.jarir.com/akeneo-prod/asset/m1images/1/2/122949.jpg',
        name: 'حياة في الادارة',
        author: ' الدكتور غازي القصيبي',
        describtion:
            'التقدم بعملية الإدارة وإجراء الإصلاحات اللازمة لها يحتاج إلى وقت وخطوات متراكمة، فكل من يتولى الإدارة يضع بصمته ويقدم خدماته ليأتي من يخلفه فيجد أساسا يبني عليه. تولي الإدارة بنجاح يقتضي أن يتمتع المدير بالحزم والرحمة معًا، فلا يصلح أحدهما دون الآخر',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
  ];

  static List<Product> W1 = [
    Product(
        image: 'https://adabworld.com/wp-content/uploads/2022/02/adabworld-poetry-quotes-4244.jpg',
        name: '',
        author: ' أوليفر جولدسميث',
        describtion:
            'عندما أقرأ كتابا للمرة الأولى فذلك بالنسـبة لي كسب صديق جديد ، و عندما أقرأ مجددا كتاباً سبق لى قراءته فذلك يشبه لقائي صديقاً قديماً .',
        // ignore: prefer_single_quotes
        PDfurl: ""),
    Product(
        image: 'https://adabworld.com/wp-content/uploads/2021/07/adabworld-poetry-quotes-4247.jpg',
        name: '',
        author: ' جون لوك',
        describtion: 'القراءة تمد العقل فقط بلوازم المعرفة ، أما التفكير فيجعلنا نملك ما نقرأ .',
        // ignore: prefer_single_quotes
        PDfurl: ""),
    Product(
        image: 'https://adabworld.com/wp-content/uploads/2022/03/adabworld-poetry-quotes-4287.jpg',
        name: '',
        author: '  عباس محمود العقاد',
        describtion:
            'الكتب كالناس ، منهم السيد الوقور و منهم السيد الطريف و منهم الجميل الرائع و الساذج الصادق ، و منهم الخائن و الجاهل ، و الوضيع و الخليع ... و الدنيا تتسع لكل هؤلاء و لن تكون المكتبة كاملة إلا إذا كانت مثلاً كاملاً للدنيا ..',
        // ignore: prefer_single_quotes
        PDfurl: ""),
    Product(
        image: 'https://adabworld.com/wp-content/uploads/2022/05/adabworld-poetry-quotes-4338.jpg',
        name: '',
        author: '  عباس محمود العقاد',
        describtion: 'يقول لك المرشدون : اقرأ ما ينفعك ، و لكني أقول : بل انتفع بما تقرأ..',
        // ignore: prefer_single_quotes
        PDfurl: ""),
  ];

  static List<Product> suggested = [
    Product(
        image: 'https://m.media-amazon.com/images/I/31A8fpNfTsL._SX311_BO1,204,203,200_.jpg',
        name: 'ابق قوي (365) يوم في السنة',
        author: 'ديمي لوفاتو',
        describtion:
            'قد لخصت ديمي لوفاتو الدروس التي تعلمتها خلال رحلتها في الحياة في هذا الكتاب وهي مجموعة مكونة من 365 يوماً من أكثر أفكارها صراحة وشجاعة وتفاؤلاً بكلماتها الخاصة وتأملاتها وأهدافها بالإضافة لمقتبسات ألهمتها، وهي تخاطب كل شخص في كل مكان في رحلته الخاصة ولكل من يحتاج للراحة والإلهام والدافع ليبقى قوياً كل يوم.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image: 'https://m.media-amazon.com/images/I/31e1rMHZouL._SY344_BO1,204,203,200_QL70_ML2_.jpg',
        name: 'السماح بالرحيل : الطريق نحو التسليم',
        author: ' ديفيد هاوكينز',
        describtion:
            'كتاب Letting Go: The Pathway of Surrender يصف وسيلة بسيطة وفعالة يمكن من خلالها التخلص من العقبات التي تعيق التنوير وتصبح خالية من السلبية. خلال العقود العديدة من ممارسة الطب النفسي السريري للدكتور هوكينز، كان الهدف الأساسي هو البحث عن أكثر الطرق فعالية لتخفيف المعاناة البشرية بجميع أشكالها العديدة. تم العثور على أن تقنية التخلي (الاستسلام) ذات فائدة عملية كبيرة وتم وصفها في هذا الكتاب.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image: 'https://m.media-amazon.com/images/I/416iMg3baQL._SY344_BO1,204,203,200_QL70_ML2_.jpg',
        name: 'كتاب قوة عقلك الباطن',
        author: 'جوزيف ميرفى',
        describtion:
            'يعتبر كتاب (قوة عقلك الباطن ) للكاتب الأيرلندي جوزيف ميرفي من أهم الكتب في مجال التنمية البشرية واكتشاف الذات في تاريخ هذا العلم ، حيث يأخذك الكاتب في رحلة إلى أعماق نفسك وشخصيتك وعقلك الباطن ، ويتناول الكتاب 20 قضية أساسية عن عقل البشر',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image: 'https://m.media-amazon.com/images/I/41rsA4rz+CL._SY498_BO1,204,203,200_.jpg',
        name: 'فن قول لا، كيف تتمسك برايك',
        author: ' Damon Zhariades',
        describtion:
            'مؤلف الكتاب؛ ديمون زهاريادس، هو مؤلف الكتب الافضل مبيعًا في قوائم امازون.يقدم لك نصائح تفصيليه وقابله للتطبيق عن كيفية زيادة انتاجيتك وتحسين ادارة الوقت، وتصميم نمط حياه اكثر جدوى.سيوضح لك هذا الكتاب طريقة وضع الحدود يينك وبين الاخرين، وان تتمسك بموقفك وتجعلهم يحترمونك في الوقت نفسه.',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
  ];

  static List<Product> others = [
    Product(
        image: 'https://m.media-amazon.com/images/I/41nfPxnfcjL._SY344_BO1,204,203,200_QL70_ML2_.jpg',
        name: 'اغنى رجل في بابل',
        author: 'George Klasson',
        describtion:
            'تجمع بانسر وكوبي وبعض من الأصدقاء الآخرين، وذهبوا إلى أركاد ليعرفوا منه سر تحقيق ثروته الهائلة، وكيف يستطيعوا أن يصبحوا أثرياء مثله، ليُرحب “أركاد” برغبة أصدقائه في تعلم أسرار صناعة الثروات، ويبدأ بعدها في شرح مبادئ وقواعد التعامل مع المال لهم، ويروي لهم قصة نجاحه وتحقيقه لثروته الهائلة.',
        // ignore: prefer_single_quotes
        PDfurl: "https://docs.google.com/viewerng/viewer?hl=ar&t=10&url=https://www.alarabimag.com/books/23626.pdf"),
    Product(
        image: 'https://m.media-amazon.com/images/I/41-vo-Iiu3L._SX331_BO1,204,203,200_.jpg',
        name: 'اسرار عقل المليونير',
        author: 'Gedocsindividuals\rulescommonavoid-non-ascii-symbolsorge Klasson',
        describtion:
            'نبذة الناشر:هل تساءلت يوماً لماذا يبدو أن بعض الناس يحققون الثراء بمنتهى السهولة، بينما بُقدر الآخرين أن يحيوا حياة كادحة؟ هل الفرق يوجد في مستوى تعليمهم، أو ذكائهم، أو مهاراتهم، أو عادات العمل، أو إنضباطهم، أو إتصالهم، أو الحظ، أو إختيار الوظيفة المناسبة، أو نوع مشروعاتهم، أو نوع إستثماراتهم',
        // ignore: prefer_single_quotes
        PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf"),
    Product(
        image: 'https://m.media-amazon.com/images/I/41lDyVvi-GL._SX347_BO1,204,203,200_.jpg',
        name: 'إدارة الأزمات',
        author: 'كلية هارفرد لإدارة الأعمال ',
        describtion:
            'إن‭ ‬أزمةً‭ ‬واحدةً‭ ‬يمكنها‭ ‬أن‭ ‬تمنعك‭ ‬من‭ ‬تسيير‭ ‬أعمالك‭ ‬اليومية‭. ‬ولكن‭ ‬بالتخطيط‭ ‬الجيد‭ ‬تستطيع‭ ‬أن‭ ‬تخفف‭ ‬من‭ ‬تأثير‭ ‬الكوارث‭ ‬المحتملة‭. ‬تعلّمْ‭ ‬كيف‭:‬ ١-‭ ‬تعرف‭ ‬متى‭ ‬تكون‭ ‬الأزمة‭ ‬وشيكة‭ ‬الوقوع‭.‬ ٢- ‬تحتوي‭ ‬الأزمة‭ ‬وتحلّها‭.‬ ٣- ‬تتعلّم‭ ‬من‭ ‬كلّ‭ ‬أزمة‭ ‬قمت‭ ‬بحلّها‭.‬ من‭ ‬هو‭ ‬المعلم‭ ‬الخبير؟ عمل‭ ‬نورمان‭ ‬آر‭. ‬أوغسطين‭ ‬رئيسًا‭ ‬ورئيسًا‭ ‬تنفيذيًّا‭ ‬لمؤسسة‭ ‬لوكهيد‭ ‬مارتين‭, ‬ومديرًا‭ ‬لشركة‭ ‬بلاك‭ ‬آند‭ ‬ديكر‭, ‬وسكرتيرًا‭ ‬ثانيًا‭ ‬للجيش‭ ‬الأمريكي‭ ‬في‭ ‬أثناء‭ ‬حرب‭ ‬فيتنام‭.‬ عن‭ ‬سلسلة‭ ‬كتاب‭ ‬الجيب‭:‬ سلسلة‭ ‬كتاب‭ ‬الجيب‭ ‬توفر‭ ‬حلولاً‭ ‬مباشرة‭ ‬للتحديات‭ ‬المتكررة،‭ ‬التي‭ ‬تواجه‭ ‬المديرين‭ ‬يومياً،‭ ‬كل‭ ‬كتاب‭ ‬من‭ ‬هذه‭ ‬السلسلة‭ ‬مليء‭ ‬بوسائل‭ ‬عملية،‭ ‬أو‭ ‬‮«‬عدة‮»‬‭ ‬للعمل،‭ ‬سبق‭ ‬اختبارها،‭ ‬في‭ ‬ميدان‭ ‬عملي،‭ ‬وأمثلة‭ ‬واقعية،‭ ‬لمساعدتك‭ ‬لتحديد‭ ‬نقاط‭ ‬قوتك‭ ‬وضعفك‭ ‬الإدارية،‭ ‬ولتشحذ‭ ‬المهارات‭ ‬النقدية‭ ‬والإبداعية‭ ‬لدى‭ ‬المديرين‭.‬ إن‭ ‬هذه‭ ‬السلسلة‭ ‬تعالج‭ ‬احتياجاتك‭ ‬الإدارية‭ ‬اليومية،‭ ‬بسرعة‭ ‬أكبر‭ ‬وبسلامة‭ ‬أكثر‭ ‬فاعلية،‭ ‬سواء‭ ‬كنت‭ ‬على‭ ‬كرسي‭ ‬عملك‭ ‬أو‭ ‬في‭ ‬لقاء،‭ ‬أو‭ ‬في‭ ‬الطريق‭.‬ من‭ ‬عناوين‭ ‬هذه‭ ‬السلسلة ‭ ‬الإدارة‭ ‬لأعلى ‭ ‬تفويض‭ ‬العمل إدارة‭ ‬التفاعلات‭ ‬الصعبة ‭ ‬تفعيل‭ ‬الإبداع ‭ ‬إدارة‭ ‬الوقت إدارة‭ ‬الأزمات',
        // ignore: prefer_single_quotes
        PDfurl: "https://books4arabs.com/BORE02-1/BORE02-1065.pdf"),
    Product(
      image: 'https://m.media-amazon.com/images/I/31oegRmMJwL._SX331_BO1,204,203,200_.jpg',
      name: '١٠١ طريقة لتكون ناجحًا',
      author: 'various',
      describtion:
          'يتناول كتاب 101 طريقة بسيطة لتكون ناجحا مع نفسك موضوع النجاح من خلال عدة مباحث منها كن واثقا بنفسك، فأنت شخص فريد متميزا إن بإمكانك القيام بأشياء لا يمكن لغيرك القيام بها . تستطيع أن تكون شيئا لا يكونه الآخرون. إنك قادر على التأثير على الآخرين بطريقة لا يتقنها سواك، وإذا فأنت تحمل البركة في طياتك إن شاء الله.',
      // ignore: prefer_single_quotes
      PDfurl: "https://ar.frenchpdf.com/wp-content/uploads/2019/01/asrar-aaqal-lmilyonir-FrenchPDF.pdf",
    ),
  ];

  static List<Product> favorate = [];
}

class Product {
  String image;
  String name;
  String describtion;
  String author;
  String PDfurl;
  Product(
      {required this.image, required this.describtion, required this.PDfurl, required this.name, required this.author});
}
