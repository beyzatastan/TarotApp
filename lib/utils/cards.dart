import 'package:flutter/material.dart';

class CardInfos {

final Map<String, Map<String, String>> tumTarotKartlari = {
    "Joker ": {
      "image": 'lib/assets/images/kartlar/joker.png',
      "meaning":
          "Joker kartı, hayatın beklenmedik sürprizlerini ve maceralarını simgeler. Bu kart, bir yolculuğa çıkma, bilinçli ya da bilinçsiz bir şekilde yeni başlangıçlar yapma isteğini ifade eder. Şansa güvenmek ve bilinmeyene adım atmak, ancak yine de kalpten gelen cesaretle hareket etmek gerektiğini hatırlatır."
    },
    "Büyücü ": {
      "image": 'lib/assets/images/kartlar/buyucu.png',
      "meaning":
          "Büyücü kartı, potansiyelinizi keşfetmek ve hayatınızı şekillendirme gücünüze sahip olduğunuzu gösterir. Sizin elinizdeki araçlar ve yetenekler, istediğiniz sonucu elde etme gücüne sahiptir. İleriye doğru güvenle adım atın, çünkü evren sizinle."
    },
    "Azize ": {
      "image": 'lib/assets/images/kartlar/azize.png',
      "meaning":
          "Azize kartı, içsel bilgeliği ve sezgiyi simgeler. Bu kart, derin bir anlayış ve sabırla sorulara yanıt aramanızı, ruhsal yolculuğunuzu derinleştirmenizi tavsiye eder. İç sesinizi dinlemek ve doğru yolu bulmak için zaman ayırmak önemli."
    },
    "İmparatoriçe ": {
      "image": 'lib/assets/images/kartlar/imparatorice.png',
      "meaning":
          "İmparatoriçe kartı, doğanın bereketi, yaratıcı gücü ve sevgiyle besleme anlamına gelir. Bu kart, bir şeylerin büyümesine, gelişmesine ve filizlenmesine yardımcı olmanın zamanının geldiğini gösterir. Duygusal dengeyi bulmak ve çevrenizdeki güzellikleri takdir etmek önemli."
    },
    "İmparator ": {
      "image": 'lib/assets/images/kartlar/imparator.png',
      "meaning":
          "İmparator kartı, liderlik, güç ve otoriteyi temsil eder. Bu kart, güçlü bir duruş sergileyerek, hayatta istediğiniz sonuçları elde etmek için sağlam bir temel kurmanız gerektiğini işaret eder. Kararlı olun ve önünüzdeki engelleri aşmak için disiplinli bir yaklaşım benimseyin."
    },
    "Aziz ": {
      "image": 'lib/assets/images/kartlar/aziz.png',
      "meaning":
          "Aziz kartı, ruhsal öğretmen ve rehberin simgesidir. Hayatınızda bir yönü öğrenmek, derin bir bilgiye sahip olmak ve manevi yolculuğa çıkmak için zamanınız olabilir. İçsel değerlerinize sadık kalın ve ruhsal bir uyanışa hazır olun."
    },
    "Aşıklar ": {
      "image": 'lib/assets/images/kartlar/asiklar.png',
      "meaning":
          "Aşıklar kartı, sevgi, birlik ve önemli seçimlerle ilgili bir karttır. Bu kart, yaşamınızdaki önemli bir ilişkiyi veya seçim yapmanızı simgeler. Kalbinizi dinleyin, çünkü doğru olanı bulmak için içsel sesiniz size yol gösterecektir."
    },
    "Savaş Arabası ": {
      "image": 'lib/assets/images/kartlar/araba.png',
      "meaning":
          "Savaş Arabası kartı, azim, güç ve zorluklarla başa çıkma simgesidir. Bu kart, bir hedefe doğru ilerlerken kararlılık ve irade ile hareket etmenizi ifade eder. Her ne olursa olsun, engelleri aşarak başarıya ulaşmak sizin elinizde."
    },
    "Güç ": {
      "image": 'lib/assets/images/kartlar/guc.png',
      "meaning":
          "Güç kartı, içsel cesaret ve dengeyi temsil eder. Bu kart, hem fiziksel hem de duygusal olarak güçlü olmanız gerektiğini gösterir. Kendinizi ifade etme şekliniz, başkalarına güç verebilir. Sabırlı olun ve karşınıza çıkan zorluklarla sevgiyle yüzleşin."
    },
    "Ermiş ": {
      "image": 'lib/assets/images/kartlar/ermis.png',
      "meaning":
          "Ermiş kartı, içsel bilgeliği ve yaşam tecrübesini simgeler. Bu kart, bir zamanlar aradığınız anlamı bulduğunuzu veya içsel aydınlanma arayışına girdiğinizi gösterir. Ruhsal bir rehberin izinden gitmek ve yalnız kalıp içsel bilgilerinizi keşfetmek için bir dönem olabilir."
    },
    "Kader Çarkı ": {
      "image": 'lib/assets/images/kartlar/kader.png',
      "meaning":
          "Kader Çarkı kartı, değişimin ve hayatınızdaki dönüm noktalarının habercisidir. Bu kart, yaşamın döngülerini ve kontrol edemediğiniz olayların zamanlamasını simgeler. Kaderin getirdiği fırsatları değerlendirmek için hazırlıklı olun ve sürecin sizi nereye götüreceğini kabul edin."
    },
    "Adalet ": {
      "image": 'lib/assets/images/kartlar/adalet.png',
      "meaning":
          "Adalet kartı, denge, doğruluk ve adaletin simgesidir. Bu kart, doğru olanı yapmanın ve adaletin sağlanmasının önemine işaret eder. Bir durumun sonuçlarını, objektif bir şekilde değerlendirmeniz gerektiği bir dönemdesiniz. Ne kadar dürüst olursanız, o kadar güçlü olursunuz."
    },
    "Asılan Adam ": {
      "image": 'lib/assets/images/kartlar/asilanAdam.png',
      "meaning":
          "Asılan Adam kartı, bir durumu farklı bir açıdan görmeyi ve fedakarlık yapmayı simgeler. Bu kart, zaman zaman bir şeylerden vazgeçmenin, gelecekte daha büyük bir ödül getirebileceğini gösterir. Sabırla beklemek ve yenilikçi bir bakış açısı kazanmak önemli."
    },
    "Ölüm ": {
      "image": 'lib/assets/images/kartlar/olum.png',
      "meaning":
          "Ölüm kartı, sonlanmalar ve yeniliklerin habercisidir. Bu kart, eski alışkanlıkları bırakıp yeni bir döneme geçmenin zamanı geldiğini ifade eder. Eskiyi terk etmek, daha iyisini yaratmak için gereklidir. Korkmayın, çünkü her bitiş yeni bir başlangıcın kapılarını aralar."
    },
    "Denge ": {
      "image": 'lib/assets/images/kartlar/denge.png',
      "meaning":
          "Denge kartı, içsel huzuru ve dengeyi bulmakla ilgilidir. Bu kart, hayatınızdaki dengesizlikleri düzeltmek ve huzur bulmak için zaman ayırmanız gerektiğini hatırlatır. Duygusal dengeyi bulmak, huzurlu bir yaşam için anahtar olacaktır."
    },
    "Şeytan ": {
      "image": 'lib/assets/images/kartlar/seytan.png',
      "meaning":
          "Şeytan kartı, bağımlılıklar ve korkularla yüzleşme simgesidir. Bu kart, sizi kısıtlayan inançlar veya alışkanlıklardan özgürleşmenin zamanının geldiğini gösterir. Kendinizi zincirlerinizden kurtarın ve kendi gücünüzü keşfedin."
    },
    "Kule ": {
      "image": 'lib/assets/images/kartlar/kule.png',
      "meaning":
          "Kule kartı, yıkılmayı ve yeniden doğmayı simgeler. Bu kart, istikrarını kaybetmiş bir yapının yıkılacağını gösterir. Bu yıkım aslında büyük bir dönüşüm için gereklidir. Kalbinizin ve zihninizin yeni bir yapıya kavuşmasına izin verin."
    },
    "Yıldız ": {
      "image": 'lib/assets/images/kartlar/yildiz.png',
      "meaning":
          "Yıldız kartı, umut, ilham ve iyileşme kartıdır. Bu kart, hayallerinizi gerçekleştirme yolunda cesaret bulmanızı ve evrenden gelen ilhamı almanızı simgeler. Geleceğe dair umutlu olun, çünkü güzellikler sizi bekliyor."
    },
    "Ay ": {
      "image": 'lib/assets/images/kartlar/ay.png',
      "meaning":
          "Ay kartı, sezgi, gizem ve bilinçaltı dünyaya dair mesajları simgeler. Bu kart, bilinçaltınızda gizli kalmış duyguların veya korkuların yüzeye çıkmasını işaret eder. Duygusal olarak derinlemesine bir keşif yapmanız ve sezgilerinize güvenmeniz gerekiyor."
    },
    "Güneş ": {
      "image": 'lib/assets/images/kartlar/gunes.png',
      "meaning":
          "Güneş kartı, başarı, mutluluk ve aydınlanma simgesidir. Bu kart, hayatınızdaki olumlu gelişmeleri, neşeyi ve başarıyı simgeler. Güneşin enerjisiyle ışıldayın, çünkü her şeyin yolunda gittiği bir dönemdesiniz."
    },
    "Mahkeme ": {
      "image": 'lib/assets/images/kartlar/mahkeme.png',
      "meaning":
          "Mahkeme kartı, uyanış, yargılama ve dönüm noktalarını simgeler. Bu kart, geçmişinizi değerlendirip geleceğinizi şekillendirme zamanının geldiğini işaret eder. Kendinize dürüst olun ve doğruyu bulmak için cesur adımlar atın."
    },
    "Dünya ": {
      "image": 'lib/assets/images/kartlar/dunya.png',
      "meaning":
          "Dünya kartı, tamamlanma, başarı ve bütünlük simgesidir. Bu kart, bir yolculuğun sonuna geldiğinizi ve hedeflerinize ulaşmış olduğunuzu gösterir. Yeni bir döngüye girmeye hazır olun, çünkü her son yeni bir başlangıcın habercisidir."
    },
    "Değnek Ası": {
      "image": 'lib/assets/images/kartlar/degnek-asi.png',
      "meaning":
          "Yeni başlangıçlar, ilham ve yaratıcı enerji. Büyük bir fırsat önünüzde ve cesurca harekete geçmek için zaman doğru."
    },
    "Değnek 2'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-ikilisi.png',
      "meaning":
          "Yeni planlar yapma zamanı. İleriye dönük hedeflerinizi belirleyin ve kararlılıkla ilerleyin."
    },
    "Değnek 3'lüsü": {
      "image": 'lib/assets/images/kartlar/degnek-uclusu.png',
      "meaning":
          "Başarı ve büyüme zamanı. Yapmış olduğunuz çalışmaların meyvelerini toplama aşamasına geldiniz."
    },
    "Değnek 4'lüsü": {
      "image": 'lib/assets/images/kartlar/degnek-dortlusu.png',
      "meaning":
          "Kutlama ve sevinç zamanı. Emeğinizin karşılığını aldınız, şimdi rahatlayın ve başarıyı kutlayın."
    },
    "Değnek 5'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-beslisi.png',
      "meaning":
          "Çatışmalar ve zorluklar. Karşınıza çıkabilecek engeller ve zorluklarla yüzleşmeniz gerekebilir."
    },
    "Değnek 6'lısı": {
      "image": 'lib/assets/images/kartlar/degnek-altilisi.png',
      "meaning":
          "Zafer ve başarı. Herhangi bir engeli aşarak ilerlemeyi başarırsınız."
    },
    "Değnek 7'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-yedilisi.png',
      "meaning":
          "Savunma ve direnç. Karşılaştığınız zorluklarla başa çıkmak için strateji belirlemelisiniz."
    },
    "Değnek 8'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-sekizlisi.png',
      "meaning":
          "Hızlı hareket etme ve ilerleme. Harekete geçmek ve hızla sonuç almak için doğru zaman."
    },
    "Değnek 9'lusu": {
      "image": 'lib/assets/images/kartlar/degnek-dokuzlusu.png',
      "meaning":
          "Azim ve mücadele. Zorluklarla dolu bir dönemde kararlılıkla ilerliyorsunuz."
    },
    "Değnek 10'lusu": {
      "image": 'lib/assets/images/kartlar/degnek-onlusu.png',
      "meaning":
          "Yükler ve sorumluluklar. Sorumluluklarınız sizi fazla yoruyor ve sizi ağırlaştırıyor olabilir."
    },
    "Değnek Prensi": {
      "image": 'lib/assets/images/kartlar/degnek-prensi.png',
      "meaning":
          "Genç bir lider, cesur ve enerjik bir kişilik. Hedeflere ulaşma konusunda yüksek motivasyon ve yenilikçi bir yaklaşım."
    },
    "Değnek Şövalyesi": {
      "image": 'lib/assets/images/kartlar/degnek-sovalyesi.png',
      "meaning":
          "Yeni başlangıçlar, hareket ve ilerleme. Cesur bir adım atmak için iyi bir zaman."
    },
    "Değnek Kraliçesi": {
      "image": 'lib/assets/images/kartlar/degnek-kralicesi.png',
      "meaning":
          "Duygusal denge, liderlik ve yaratıcı vizyon. Kendi gücünüzü kullanarak çevrenizdeki dünyayı şekillendirebilirsiniz."
    },
    "Değnek Kralı": {
      "image": 'lib/assets/images/kartlar/degnek-krali.png',
      "meaning":
          "Liderlik, karizma ve kontrol. İleriye dönük hedeflerinizi kontrol altında tutarak gerçekleştirebilirsiniz."
    },

    // Kupa Serisi
    "Kupa Ası": {
      "image": 'lib/assets/images/kartlar/kupa-asi.png',
      "meaning":
          "Duygusal yenilik, sevgi ve bağlantılar. İçsel huzur arayışı ve duygusal dengeye ulaşma zamanı."
    },
    "Kupa 2'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-ikilisi.png',
      "meaning":
          "İki kişi arasındaki duygusal denge ve uyum. Romantik ilişkilerde derinleşme ve yakınlaşma zamanıdır."
    },
    "Kupa 3'lüsü": {
      "image": 'lib/assets/images/kartlar/kupa-uclusu.png',
      "meaning":
          "Kutlama, mutluluk ve topluluk. Dostlar ve ailenizle birlikte sevinç dolu anlar yaşayabilirsiniz."
    },
    "Kupa 4'lüsü": {
      "image": 'lib/assets/images/kartlar/kupa-dortlusu.png',
      "meaning":
          "Duygusal boşluk ve tatminsizlik. Sizin için önemli olanı tekrar gözden geçirme zamanı."
    },
    "Kupa 5'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-beslisi.png',
      "meaning":
          "Duygusal kayıplar ve hayal kırıklıkları. Geçmişteki hatalarla yüzleşme zamanı."
    },
    "Kupa 6'lısı": {
      "image": 'lib/assets/images/kartlar/kupa-altilisi.png',
      "meaning":
          "Geçmişe duyulan özlem ve nostalji. Eski dostluklar ve ilişkiler hakkında düşünme zamanı."
    },
    "Kupa 7'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-yedilisi.png',
      "meaning":
          "Farklı seçenekler ve kararsızlık. Duygusal ve maddi arzular arasında denge kurmaya çalışıyorsunuz."
    },
    "Kupa 8'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-sekizlisi.png',
      "meaning":
          "Yeni bir yön ve fırsatlar. Geride bıraktığınız geçmişe veda etme zamanı."
    },
    "Kupa 9'lusu": {
      "image": 'lib/assets/images/kartlar/kupa-dokuzlusu.png',
      "meaning":
          "Duygusal tatmin ve huzur. İstediğiniz duygusal dengeyi yakalayabilirsiniz."
    },
    "Kupa 10'lusu": {
      "image": 'lib/assets/images/kartlar/kupa-onlusu.png',
      "meaning":
          "Aile, arkadaşlar ve duygusal bağlar. Mutluluğun ve huzurun simgesi."
    },
    "Kupa Prensi": {
      "image": 'lib/assets/images/kartlar/kupa-prensi.png',
      "meaning":
          "Duygusal derinlik, yaratıcı bir genç ruh. Başkalarına duygusal olarak yaklaşma yeteneği."
    },
    "Kupa Şövalyesi": {
      "image": 'lib/assets/images/kartlar/kupa-sovalyesi.png',
      "meaning":
          "Romantizm ve duygusal açıklık. Yeni duygusal keşifler ve ilişkiler."
    },
    "Kupa Kraliçesi": {
      "image": 'lib/assets/images/kartlar/kupa-kralicesi.png',
      "meaning":
          "Duygusal zekâ, sezgi ve şefkat. Başkalarına yardım etmeye ve kendinizi duygusal olarak ifade etmeye hazır olduğunuz bir zaman."
    },
    "Kupa Kralı": {
      "image": 'lib/assets/images/kartlar/kupa-krali.png',
      "meaning":
          "Duygusal denge ve güven. Sevdiklerinizle derin duygusal bağlar kurmak ve korumak için hazır bir zaman."
    },

    // Kılıç Serisi
    "Kılıç Ası": {
      "image": 'lib/assets/images/kartlar/kilic-asi.png',
      "meaning":
          "Zihinsel netlik, dürüstlük ve güçlü fikirler. Gerçekleri kabul etme zamanı."
    },
    "Kılıç 2'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-ikilisi.png',
      "meaning":
          "Kararsızlık, zor seçimler. İki farklı yol arasında kalabilirsiniz."
    },
    "Kılıç 3'lüsü": {
      "image": 'lib/assets/images/kartlar/kilic-uclusu.png',
      "meaning":
          "Acı, kayıplar ve ihanet. Duygusal yaralarınızı iyileştirme zamanı."
    },
    "Kılıç 4'lüsü": {
      "image": 'lib/assets/images/kartlar/kilic-dortlusu.png',
      "meaning":
          "Dinlenme ve iyileşme. Zihinsel yenilenme ve dinginlik zamanıdır."
    },
    "Kılıç 5'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-beslisi.png',
      "meaning":
          "Yaralar ve kayıplar. Kişisel çatışmalar ve zorluklarla yüzleşme zamanı."
    },
    "Kılıç 6'lısı": {
      "image": 'lib/assets/images/kartlar/kilic-altilisi.png',
      "meaning":
          "Huzura doğru ilerleme. Zihinsel ve duygusal bir yolculuğa çıkma zamanı."
    },
    "Kılıç 7'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-yedilisi.png',
      "meaning": "Strateji ve planlama. Düşüncelerinizi eyleme dökme zamanı."
    },
    "Kılıç 8'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-sekizlisi.png',
      "meaning":
          "Sınırlar ve engeller. Zihinsel baskılarla başa çıkmanız gerekebilir."
    },
    "Kılıç 9'lusu": {
      "image": 'lib/assets/images/kartlar/kilic-dokuzlusu.png',
      "meaning":
          "Endişeler ve korkular. Zihinsel olarak sıkıntılı bir dönemden geçiyorsunuz."
    },
    "Kılıç 10'lusu": {
      "image": 'lib/assets/images/kartlar/kilic-onlusu.png',
      "meaning":
          "Zihinsel bitiş ve kriz. Bir dönemin sonlanması ve yeni bir başlangıç."
    },
    "Kılıç Prensi": {
      "image": 'lib/assets/images/kartlar/kilic-prensi.png',
      "meaning":
          "Keskin zekâ, yeni fikirler. Durumları net bir şekilde analiz edebilen bir kişilik."
    },
    "Kılıç Şövalyesi": {
      "image": 'lib/assets/images/kartlar/kilic-sovalyesi.png',
      "meaning":
          "Cesaret ve hareket. Zihinsel olarak güçlü, hızlı düşünme yeteneğine sahip bir kişilik."
    },
    "Kılıç Kraliçesi": {
      "image": 'lib/assets/images/kartlar/kilic-kralicesi.png',
      "meaning":
          "Zihinsel denge, sezgi. İçsel gücünüzle başkalarına yol gösterme yeteneği."
    },
    "Kılıç Kralı": {
      "image": 'lib/assets/images/kartlar/kilic-krali.png',
      "meaning":
          "Liderlik, adalet ve mantıklı düşünme. Zihinsel gücünüzü adaletli bir şekilde kullanın."
    },

    // Tılsım Serisi
    "Tılsım Ası": {
      "image": 'lib/assets/images/kartlar/tilsim-asi.png',
      "meaning":
          "Yeni bir maddi fırsat ve zenginlik. Başarılı bir başlangıç ve iş fırsatları."
    },
    "Tılsım 2'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-ikilisi.png',
      "meaning":
          "Denge ve uyum. İş ve özel yaşamda dengeyi bulmak, iki taraflı bir karar verme süreci."
    },
    "Tılsım 3'lüsü": {
      "image": 'lib/assets/images/kartlar/tilsim-uclusu.png',
      "meaning":
          "Ekip çalışması ve işbirliği. Başarıya ulaşmak için işbirliği ve ortak çaba gereklidir."
    },
    "Tılsım 4'lüsü": {
      "image": 'lib/assets/images/kartlar/tilsim-dortlusu.png',
      "meaning":
          "Maddi güvence ve istikrar. Mevcut kaynakları koruma ve maddi güvenliği sağlama isteği."
    },
    "Tılsım 5'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-beslisi.png',
      "meaning":
          "Maddi kayıplar ve zorluklar. Maddi açıdan zor bir dönem geçirme, geçici bir zayıflık."
    },
    "Tılsım 6'lısı": {
      "image": 'lib/assets/images/kartlar/tilsim-altilisi.png',
      "meaning":
          "Paylaşma ve yardım. Başkalarına yardım etme ve karşılıklı fayda sağlama."
    },
    "Tılsım 7'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-yedilisi.png',
      "meaning":
          "Sabır ve değerlendirme. Yatırım ve çabaların karşılığını almak için sabırlı olma."
    },
    "Tılsım 8'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-sekizlisi.png',
      "meaning":
          "İş ve kariyerde başarı. Çalışma hayatındaki verimlilik ve profesyonel başarı."
    },
    "Tılsım 9'lusu": {
      "image": 'lib/assets/images/kartlar/tilsim-dokuzlusu.png',
      "meaning":
          "Kendi başarılarından tatmin olmak. Maddi rahatlık ve finansal bağımsızlık."
    },
    "Tılsım 10'lusu": {
      "image": 'lib/assets/images/kartlar/tilsim-onlusu.png',
      "meaning":
          "Aile ve miras. Maddi zenginlik, ailevi güvence ve uzun süreli başarı."
    },
    "Tılsım Prensi": {
      "image": 'lib/assets/images/kartlar/tilsim-prensi.png',
      "meaning":
          "Yaratıcı girişimler ve maddi projelere başlama. Kararlı ve pratik bir yaklaşım."
    },
    "Tılsım Şövalyesi": {
      "image": 'lib/assets/images/kartlar/tilsim-sovalyesi.png',
      "meaning":
          "Yeni fırsatlar ve girişimler. İleriye dönük planlar ve çalışkan bir tutum."
    },
    "Tılsım Kraliçesi": {
      "image": 'lib/assets/images/kartlar/tilsim-kralicesi.png',
      "meaning":
          "Maddi güvenlik ve büyüme. Doğal yeteneklerin ve maddi becerilerin kullanılması."
    },
    "Tılsım Kralı": {
      "image": 'lib/assets/images/kartlar/tilsim-krali.png',
      "meaning":
          "Yönetim ve liderlik. Maddi başarıyı kontrol etme ve sorumlulukları taşıma."
    },
    // Minor Arkana - Değ
  };

final majorArkanaKartlari = {
    "Joker ": {
      "image": 'lib/assets/images/kartlar/joker.png',
      "meaning":
          "Joker kartı, hayatın beklenmedik sürprizlerini ve maceralarını simgeler. Bu kart, bir yolculuğa çıkma, bilinçli ya da bilinçsiz bir şekilde yeni başlangıçlar yapma isteğini ifade eder. Şansa güvenmek ve bilinmeyene adım atmak, ancak yine de kalpten gelen cesaretle hareket etmek gerektiğini hatırlatır."
    },
    "Büyücü ": {
      "image": 'lib/assets/images/kartlar/buyucu.png',
      "meaning":
          "Büyücü kartı, potansiyelinizi keşfetmek ve hayatınızı şekillendirme gücünüze sahip olduğunuzu gösterir. Sizin elinizdeki araçlar ve yetenekler, istediğiniz sonucu elde etme gücüne sahiptir. İleriye doğru güvenle adım atın, çünkü evren sizinle."
    },
    "Azize ": {
      "image": 'lib/assets/images/kartlar/azize.png',
      "meaning":
          "Azize kartı, içsel bilgeliği ve sezgiyi simgeler. Bu kart, derin bir anlayış ve sabırla sorulara yanıt aramanızı, ruhsal yolculuğunuzu derinleştirmenizi tavsiye eder. İç sesinizi dinlemek ve doğru yolu bulmak için zaman ayırmak önemli."
    },
    "İmparatoriçe ": {
      "image": 'lib/assets/images/kartlar/imparatorice.png',
      "meaning":
          "İmparatoriçe kartı, doğanın bereketi, yaratıcı gücü ve sevgiyle besleme anlamına gelir. Bu kart, bir şeylerin büyümesine, gelişmesine ve filizlenmesine yardımcı olmanın zamanının geldiğini gösterir. Duygusal dengeyi bulmak ve çevrenizdeki güzellikleri takdir etmek önemli."
    },
    "İmparator ": {
      "image": 'lib/assets/images/kartlar/imparator.png',
      "meaning":
          "İmparator kartı, liderlik, güç ve otoriteyi temsil eder. Bu kart, güçlü bir duruş sergileyerek, hayatta istediğiniz sonuçları elde etmek için sağlam bir temel kurmanız gerektiğini işaret eder. Kararlı olun ve önünüzdeki engelleri aşmak için disiplinli bir yaklaşım benimseyin."
    },
    "Aziz ": {
      "image": 'lib/assets/images/kartlar/aziz.png',
      "meaning":
          "Aziz kartı, ruhsal öğretmen ve rehberin simgesidir. Hayatınızda bir yönü öğrenmek, derin bir bilgiye sahip olmak ve manevi yolculuğa çıkmak için zamanınız olabilir. İçsel değerlerinize sadık kalın ve ruhsal bir uyanışa hazır olun."
    },
    "Aşıklar ": {
      "image": 'lib/assets/images/kartlar/asiklar.png',
      "meaning":
          "Aşıklar kartı, sevgi, birlik ve önemli seçimlerle ilgili bir karttır. Bu kart, yaşamınızdaki önemli bir ilişkiyi veya seçim yapmanızı simgeler. Kalbinizi dinleyin, çünkü doğru olanı bulmak için içsel sesiniz size yol gösterecektir."
    },
    "Savaş Arabası ": {
      "image": 'lib/assets/images/kartlar/araba.png',
      "meaning":
          "Savaş Arabası kartı, azim, güç ve zorluklarla başa çıkma simgesidir. Bu kart, bir hedefe doğru ilerlerken kararlılık ve irade ile hareket etmenizi ifade eder. Her ne olursa olsun, engelleri aşarak başarıya ulaşmak sizin elinizde."
    },
    "Güç ": {
      "image": 'lib/assets/images/kartlar/guc.png',
      "meaning":
          "Güç kartı, içsel cesaret ve dengeyi temsil eder. Bu kart, hem fiziksel hem de duygusal olarak güçlü olmanız gerektiğini gösterir. Kendinizi ifade etme şekliniz, başkalarına güç verebilir. Sabırlı olun ve karşınıza çıkan zorluklarla sevgiyle yüzleşin."
    },
    "Ermiş ": {
      "image": 'lib/assets/images/kartlar/ermis.png',
      "meaning":
          "Ermiş kartı, içsel bilgeliği ve yaşam tecrübesini simgeler. Bu kart, bir zamanlar aradığınız anlamı bulduğunuzu veya içsel aydınlanma arayışına girdiğinizi gösterir. Ruhsal bir rehberin izinden gitmek ve yalnız kalıp içsel bilgilerinizi keşfetmek için bir dönem olabilir."
    },
    "Kader Çarkı ": {
      "image": 'lib/assets/images/kartlar/kader.png',
      "meaning":
          "Kader Çarkı kartı, değişimin ve hayatınızdaki dönüm noktalarının habercisidir. Bu kart, yaşamın döngülerini ve kontrol edemediğiniz olayların zamanlamasını simgeler. Kaderin getirdiği fırsatları değerlendirmek için hazırlıklı olun ve sürecin sizi nereye götüreceğini kabul edin."
    },
    "Adalet ": {
      "image": 'lib/assets/images/kartlar/adalet.png',
      "meaning":
          "Adalet kartı, denge, doğruluk ve adaletin simgesidir. Bu kart, doğru olanı yapmanın ve adaletin sağlanmasının önemine işaret eder. Bir durumun sonuçlarını, objektif bir şekilde değerlendirmeniz gerektiği bir dönemdesiniz. Ne kadar dürüst olursanız, o kadar güçlü olursunuz."
    },
    "Asılan Adam ": {
      "image": 'lib/assets/images/kartlar/asilanAdam.png',
      "meaning":
          "Asılan Adam kartı, bir durumu farklı bir açıdan görmeyi ve fedakarlık yapmayı simgeler. Bu kart, zaman zaman bir şeylerden vazgeçmenin, gelecekte daha büyük bir ödül getirebileceğini gösterir. Sabırla beklemek ve yenilikçi bir bakış açısı kazanmak önemli."
    },
    "Ölüm ": {
      "image": 'lib/assets/images/kartlar/olum.png',
      "meaning":
          "Ölüm kartı, sonlanmalar ve yeniliklerin habercisidir. Bu kart, eski alışkanlıkları bırakıp yeni bir döneme geçmenin zamanı geldiğini ifade eder. Eskiyi terk etmek, daha iyisini yaratmak için gereklidir. Korkmayın, çünkü her bitiş yeni bir başlangıcın kapılarını aralar."
    },
    "Denge ": {
      "image": 'lib/assets/images/kartlar/denge.png',
      "meaning":
          "Denge kartı, içsel huzuru ve dengeyi bulmakla ilgilidir. Bu kart, hayatınızdaki dengesizlikleri düzeltmek ve huzur bulmak için zaman ayırmanız gerektiğini hatırlatır. Duygusal dengeyi bulmak, huzurlu bir yaşam için anahtar olacaktır."
    },
    "Şeytan ": {
      "image": 'lib/assets/images/kartlar/seytan.png',
      "meaning":
          "Şeytan kartı, bağımlılıklar ve korkularla yüzleşme simgesidir. Bu kart, sizi kısıtlayan inançlar veya alışkanlıklardan özgürleşmenin zamanının geldiğini gösterir. Kendinizi zincirlerinizden kurtarın ve kendi gücünüzü keşfedin."
    },
    "Kule ": {
      "image": 'lib/assets/images/kartlar/kule.png',
      "meaning":
          "Kule kartı, yıkılmayı ve yeniden doğmayı simgeler. Bu kart, istikrarını kaybetmiş bir yapının yıkılacağını gösterir. Bu yıkım aslında büyük bir dönüşüm için gereklidir. Kalbinizin ve zihninizin yeni bir yapıya kavuşmasına izin verin."
    },
    "Yıldız ": {
      "image": 'lib/assets/images/kartlar/yildiz.png',
      "meaning":
          "Yıldız kartı, umut, ilham ve iyileşme kartıdır. Bu kart, hayallerinizi gerçekleştirme yolunda cesaret bulmanızı ve evrenden gelen ilhamı almanızı simgeler. Geleceğe dair umutlu olun, çünkü güzellikler sizi bekliyor."
    },
    "Ay ": {
      "image": 'lib/assets/images/kartlar/ay.png',
      "meaning":
          "Ay kartı, sezgi, gizem ve bilinçaltı dünyaya dair mesajları simgeler. Bu kart, bilinçaltınızda gizli kalmış duyguların veya korkuların yüzeye çıkmasını işaret eder. Duygusal olarak derinlemesine bir keşif yapmanız ve sezgilerinize güvenmeniz gerekiyor."
    },
    "Güneş ": {
      "image": 'lib/assets/images/kartlar/gunes.png',
      "meaning":
          "Güneş kartı, başarı, mutluluk ve aydınlanma simgesidir. Bu kart, hayatınızdaki olumlu gelişmeleri, neşeyi ve başarıyı simgeler. Güneşin enerjisiyle ışıldayın, çünkü her şeyin yolunda gittiği bir dönemdesiniz."
    },
    "Mahkeme ": {
      "image": 'lib/assets/images/kartlar/mahkeme.png',
      "meaning":
          "Mahkeme kartı, uyanış, yargılama ve dönüm noktalarını simgeler. Bu kart, geçmişinizi değerlendirip geleceğinizi şekillendirme zamanının geldiğini işaret eder. Kendinize dürüst olun ve doğruyu bulmak için cesur adımlar atın."
    },
    "Dünya ": {
      "image": 'lib/assets/images/kartlar/dunya.png',
      "meaning":
          "Dünya kartı, tamamlanma, başarı ve bütünlük simgesidir. Bu kart, bir yolculuğun sonuna geldiğinizi ve hedeflerinize ulaşmış olduğunuzu gösterir. Yeni bir döngüye girmeye hazır olun, çünkü her son yeni bir başlangıcın habercisidir."
    },
  };

final minorArkanaKartlari = {
    "Değnek Ası": {
      "image": 'lib/assets/images/kartlar/degnek-asi.png',
      "meaning":
          "Yeni başlangıçlar, ilham ve yaratıcı enerji. Büyük bir fırsat önünüzde ve cesurca harekete geçmek için zaman doğru."
    },
    "Değnek 2'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-ikilisi.png',
      "meaning":
          "Yeni planlar yapma zamanı. İleriye dönük hedeflerinizi belirleyin ve kararlılıkla ilerleyin."
    },
    "Değnek 3'lüsü": {
      "image": 'lib/assets/images/kartlar/degnek-uclusu.png',
      "meaning":
          "Başarı ve büyüme zamanı. Yapmış olduğunuz çalışmaların meyvelerini toplama aşamasına geldiniz."
    },
    "Değnek 4'lüsü": {
      "image": 'lib/assets/images/kartlar/degnek-dortlusu.png',
      "meaning":
          "Kutlama ve sevinç zamanı. Emeğinizin karşılığını aldınız, şimdi rahatlayın ve başarıyı kutlayın."
    },
    "Değnek 5'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-beslisi.png',
      "meaning":
          "Çatışmalar ve zorluklar. Karşınıza çıkabilecek engeller ve zorluklarla yüzleşmeniz gerekebilir."
    },
    "Değnek 6'lısı": {
      "image": 'lib/assets/images/kartlar/degnek-altilisi.png',
      "meaning":
          "Zafer ve başarı. Herhangi bir engeli aşarak ilerlemeyi başarırsınız."
    },
    "Değnek 7'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-yedilisi.png',
      "meaning":
          "Savunma ve direnç. Karşılaştığınız zorluklarla başa çıkmak için strateji belirlemelisiniz."
    },
    "Değnek 8'lisi": {
      "image": 'lib/assets/images/kartlar/degnek-sekizlisi.png',
      "meaning":
          "Hızlı hareket etme ve ilerleme. Harekete geçmek ve hızla sonuç almak için doğru zaman."
    },
    "Değnek 9'lusu": {
      "image": 'lib/assets/images/kartlar/degnek-dokuzlusu.png',
      "meaning":
          "Azim ve mücadele. Zorluklarla dolu bir dönemde kararlılıkla ilerliyorsunuz."
    },
    "Değnek 10'lusu": {
      "image": 'lib/assets/images/kartlar/degnek-onlusu.png',
      "meaning":
          "Yükler ve sorumluluklar. Sorumluluklarınız sizi fazla yoruyor ve sizi ağırlaştırıyor olabilir."
    },
    "Değnek Prensi": {
      "image": 'lib/assets/images/kartlar/degnek-prensi.png',
      "meaning":
          "Genç bir lider, cesur ve enerjik bir kişilik. Hedeflere ulaşma konusunda yüksek motivasyon ve yenilikçi bir yaklaşım."
    },
    "Değnek Şövalyesi": {
      "image": 'lib/assets/images/kartlar/degnek-sovalyesi.png',
      "meaning":
          "Yeni başlangıçlar, hareket ve ilerleme. Cesur bir adım atmak için iyi bir zaman."
    },
    "Değnek Kraliçesi": {
      "image": 'lib/assets/images/kartlar/degnek-kralicesi.png',
      "meaning":
          "Duygusal denge, liderlik ve yaratıcı vizyon. Kendi gücünüzü kullanarak çevrenizdeki dünyayı şekillendirebilirsiniz."
    },
    "Değnek Kralı": {
      "image": 'lib/assets/images/kartlar/degnek-krali.png',
      "meaning":
          "Liderlik, karizma ve kontrol. İleriye dönük hedeflerinizi kontrol altında tutarak gerçekleştirebilirsiniz."
    },

    // Kupa Serisi
    "Kupa Ası": {
      "image": 'lib/assets/images/kartlar/kupa-asi.png',
      "meaning":
          "Duygusal yenilik, sevgi ve bağlantılar. İçsel huzur arayışı ve duygusal dengeye ulaşma zamanı."
    },
    "Kupa 2'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-ikilisi.png',
      "meaning":
          "İki kişi arasındaki duygusal denge ve uyum. Romantik ilişkilerde derinleşme ve yakınlaşma zamanıdır."
    },
    "Kupa 3'lüsü": {
      "image": 'lib/assets/images/kartlar/kupa-uclusu.png',
      "meaning":
          "Kutlama, mutluluk ve topluluk. Dostlar ve ailenizle birlikte sevinç dolu anlar yaşayabilirsiniz."
    },
    "Kupa 4'lüsü": {
      "image": 'lib/assets/images/kartlar/kupa-dortlusu.png',
      "meaning":
          "Duygusal boşluk ve tatminsizlik. Sizin için önemli olanı tekrar gözden geçirme zamanı."
    },
    "Kupa 5'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-beslisi.png',
      "meaning":
          "Duygusal kayıplar ve hayal kırıklıkları. Geçmişteki hatalarla yüzleşme zamanı."
    },
    "Kupa 6'lısı": {
      "image": 'lib/assets/images/kartlar/kupa-altilisi.png',
      "meaning":
          "Geçmişe duyulan özlem ve nostalji. Eski dostluklar ve ilişkiler hakkında düşünme zamanı."
    },
    "Kupa 7'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-yedilisi.png',
      "meaning":
          "Farklı seçenekler ve kararsızlık. Duygusal ve maddi arzular arasında denge kurmaya çalışıyorsunuz."
    },
    "Kupa 8'lisi": {
      "image": 'lib/assets/images/kartlar/kupa-sekizlisi.png',
      "meaning":
          "Yeni bir yön ve fırsatlar. Geride bıraktığınız geçmişe veda etme zamanı."
    },
    "Kupa 9'lusu": {
      "image": 'lib/assets/images/kartlar/kupa-dokuzlusu.png',
      "meaning":
          "Duygusal tatmin ve huzur. İstediğiniz duygusal dengeyi yakalayabilirsiniz."
    },
    "Kupa 10'lusu": {
      "image": 'lib/assets/images/kartlar/kupa-onlusu.png',
      "meaning":
          "Aile, arkadaşlar ve duygusal bağlar. Mutluluğun ve huzurun simgesi."
    },
    "Kupa Prensi": {
      "image": 'lib/assets/images/kartlar/kupa-prensi.png',
      "meaning":
          "Duygusal derinlik, yaratıcı bir genç ruh. Başkalarına duygusal olarak yaklaşma yeteneği."
    },
    "Kupa Şövalyesi": {
      "image": 'lib/assets/images/kartlar/kupa-sovalyesi.png',
      "meaning":
          "Romantizm ve duygusal açıklık. Yeni duygusal keşifler ve ilişkiler."
    },
    "Kupa Kraliçesi": {
      "image": 'lib/assets/images/kartlar/kupa-kralicesi.png',
      "meaning":
          "Duygusal zekâ, sezgi ve şefkat. Başkalarına yardım etmeye ve kendinizi duygusal olarak ifade etmeye hazır olduğunuz bir zaman."
    },
    "Kupa Kralı": {
      "image": 'lib/assets/images/kartlar/kupa-krali.png',
      "meaning":
          "Duygusal denge ve güven. Sevdiklerinizle derin duygusal bağlar kurmak ve korumak için hazır bir zaman."
    },

    // Kılıç Serisi
    "Kılıç Ası": {
      "image": 'lib/assets/images/kartlar/kilic-asi.png',
      "meaning":
          "Zihinsel netlik, dürüstlük ve güçlü fikirler. Gerçekleri kabul etme zamanı."
    },
    "Kılıç 2'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-ikilisi.png',
      "meaning":
          "Kararsızlık, zor seçimler. İki farklı yol arasında kalabilirsiniz."
    },
    "Kılıç 3'lüsü": {
      "image": 'lib/assets/images/kartlar/kilic-uclusu.png',
      "meaning":
          "Acı, kayıplar ve ihanet. Duygusal yaralarınızı iyileştirme zamanı."
    },
    "Kılıç 4'lüsü": {
      "image": 'lib/assets/images/kartlar/kilic-dortlusu.png',
      "meaning":
          "Dinlenme ve iyileşme. Zihinsel yenilenme ve dinginlik zamanıdır."
    },
    "Kılıç 5'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-beslisi.png',
      "meaning":
          "Yaralar ve kayıplar. Kişisel çatışmalar ve zorluklarla yüzleşme zamanı."
    },
    "Kılıç 6'lısı": {
      "image": 'lib/assets/images/kartlar/kilic-altilisi.png',
      "meaning":
          "Huzura doğru ilerleme. Zihinsel ve duygusal bir yolculuğa çıkma zamanı."
    },
    "Kılıç 7'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-yedilisi.png',
      "meaning": "Strateji ve planlama. Düşüncelerinizi eyleme dökme zamanı."
    },
    "Kılıç 8'lisi": {
      "image": 'lib/assets/images/kartlar/kilic-sekizlisi.png',
      "meaning":
          "Sınırlar ve engeller. Zihinsel baskılarla başa çıkmanız gerekebilir."
    },
    "Kılıç 9'lusu": {
      "image": 'lib/assets/images/kartlar/kilic-dokuzlusu.png',
      "meaning":
          "Endişeler ve korkular. Zihinsel olarak sıkıntılı bir dönemden geçiyorsunuz."
    },
    "Kılıç 10'lusu": {
      "image": 'lib/assets/images/kartlar/kilic-onlusu.png',
      "meaning":
          "Zihinsel bitiş ve kriz. Bir dönemin sonlanması ve yeni bir başlangıç."
    },
    "Kılıç Prensi": {
      "image": 'lib/assets/images/kartlar/kilic-prensi.png',
      "meaning":
          "Keskin zekâ, yeni fikirler. Durumları net bir şekilde analiz edebilen bir kişilik."
    },
    "Kılıç Şövalyesi": {
      "image": 'lib/assets/images/kartlar/kilic-sovalyesi.png',
      "meaning":
          "Cesaret ve hareket. Zihinsel olarak güçlü, hızlı düşünme yeteneğine sahip bir kişilik."
    },
    "Kılıç Kraliçesi": {
      "image": 'lib/assets/images/kartlar/kilic-kralicesi.png',
      "meaning":
          "Zihinsel denge, sezgi. İçsel gücünüzle başkalarına yol gösterme yeteneği."
    },
    "Kılıç Kralı": {
      "image": 'lib/assets/images/kartlar/kilic-krali.png',
      "meaning":
          "Liderlik, adalet ve mantıklı düşünme. Zihinsel gücünüzü adaletli bir şekilde kullanın."
    },

    // Tılsım Serisi
    "Tılsım Ası": {
      "image": 'lib/assets/images/kartlar/tilsim-asi.png',
      "meaning":
          "Yeni bir maddi fırsat ve zenginlik. Başarılı bir başlangıç ve iş fırsatları."
    },
    "Tılsım 2'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-ikilisi.png',
      "meaning":
          "Denge ve uyum. İş ve özel yaşamda dengeyi bulmak, iki taraflı bir karar verme süreci."
    },
    "Tılsım 3'lüsü": {
      "image": 'lib/assets/images/kartlar/tilsim-uclusu.png',
      "meaning":
          "Ekip çalışması ve işbirliği. Başarıya ulaşmak için işbirliği ve ortak çaba gereklidir."
    },
    "Tılsım 4'lüsü": {
      "image": 'lib/assets/images/kartlar/tilsim-dortlusu.png',
      "meaning":
          "Maddi güvence ve istikrar. Mevcut kaynakları koruma ve maddi güvenliği sağlama isteği."
    },
    "Tılsım 5'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-beslisi.png',
      "meaning":
          "Maddi kayıplar ve zorluklar. Maddi açıdan zor bir dönem geçirme, geçici bir zayıflık."
    },
    "Tılsım 6'lısı": {
      "image": 'lib/assets/images/kartlar/tilsim-altilisi.png',
      "meaning":
          "Paylaşma ve yardım. Başkalarına yardım etme ve karşılıklı fayda sağlama."
    },
    "Tılsım 7'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-yedilisi.png',
      "meaning":
          "Sabır ve değerlendirme. Yatırım ve çabaların karşılığını almak için sabırlı olma."
    },
    "Tılsım 8'lisi": {
      "image": 'lib/assets/images/kartlar/tilsim-sekizlisi.png',
      "meaning":
          "İş ve kariyerde başarı. Çalışma hayatındaki verimlilik ve profesyonel başarı."
    },
    "Tılsım 9'lusu": {
      "image": 'lib/assets/images/kartlar/tilsim-dokuzlusu.png',
      "meaning":
          "Kendi başarılarından tatmin olmak. Maddi rahatlık ve finansal bağımsızlık."
    },
    "Tılsım 10'lusu": {
      "image": 'lib/assets/images/kartlar/tilsim-onlusu.png',
      "meaning":
          "Aile ve miras. Maddi zenginlik, ailevi güvence ve uzun süreli başarı."
    },
    "Tılsım Prensi": {
      "image": 'lib/assets/images/kartlar/tilsim-prensi.png',
      "meaning":
          "Yaratıcı girişimler ve maddi projelere başlama. Kararlı ve pratik bir yaklaşım."
    },
    "Tılsım Şövalyesi": {
      "image": 'lib/assets/images/kartlar/tilsim-sovalyesi.png',
      "meaning":
          "Yeni fırsatlar ve girişimler. İleriye dönük planlar ve çalışkan bir tutum."
    },
    "Tılsım Kraliçesi": {
      "image": 'lib/assets/images/kartlar/tilsim-kralicesi.png',
      "meaning":
          "Maddi güvenlik ve büyüme. Doğal yeteneklerin ve maddi becerilerin kullanılması."
    },
    "Tılsım Kralı": {
      "image": 'lib/assets/images/kartlar/tilsim-krali.png',
      "meaning":
          "Yönetim ve liderlik. Maddi başarıyı kontrol etme ve sorumlulukları taşıma."
    },
  };

}