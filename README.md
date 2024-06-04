# game_info_hub

-Türkçe-

ERCİYES ÜNİVERSİTESİ

MOBİL UYGULAMA GELİŞTİRME DERSİ FİNAL ÖDEVİ

ÖĞRETİM ELEMANI = DR. ÖĞR. ÜYESİ FEHİM KÖYLÜ

ÖĞRENCİ ADI SOYADI = AHMET EMİN YILMAZ 

PROJE ADI = GAME INFO HUB


"Game Info Hub" adlı bu uygulama, kullanıcıların çeşitli oyunlar hakkında türlerine göre detaylı bilgi almasını sağlar. "Game Info Hub" kullanıcıların bir oyun türü seçmesine, o türe ait oyunları listelemesine ve her oyun hakkında adı, çıkış tarihi, arka plan resmi ve puanı gibi ayrıntılı bilgileri görmesine olanak tanır.

"Game Info Hub" uygulaması aşağıdaki ana özelliklerden oluşmaktadır:

Tür Seçim Ekranı: Bu ekran, kullanıcıların oyun türlerinden birini seçebileceği uygulamanın ilk ekranıdır. Her tür, tıklanabilir bir konteyner içinde sunulur ve kullanıcıyı o türdeki oyunların listesine yönlendirir.

Oyun Listesi Ekranı: Bir tür seçildikten sonra, kullanıcılar Oyun Listesi Ekranı'na yönlendirilir. Bu ekran, seçilen türdeki oyunların bir listesini gösterir ve bu oyunlar RAWG Video Games Database API'dan çekilir. Her oyun, küçük bir resim, ad ve daha fazla ayrıntının görüntülenebileceğini belirten bir ok ile kart formatında gösterilir.

Oyun Detay Ekranı: Kullanıcı bir listedeki oyuna dokunduğunda, Oyun Detay Ekranı'na yönlendirilir. Bu ekran, seçilen oyun hakkında ayrıntılı bilgiler gösterir, bunlar arasında:

-Oyunun büyük bir arka plan resmi
-Oyunun adı belirgin bir konumda
-Oyunun çıkış tarihi
-Yıldız ikonu ile gösterilen oyunun puanı

Provider ile Durum Yönetimi: Uygulama, durum yönetimi için Provider paketini kullanır. GameProvider sınıfı, API'dan veri çekmek, oyun listesini yönetmek ve yükleme durumunu izlemekten sorumludur.

API Servisi: ApiService sınıfı, RAWG Video Games Database API ile yapılan tüm ağ isteklerini yönetir. Türlere göre oyunları çekmek, JSON yanıtlarını ayrıştırmak ve hataları ele almak için yöntemler içerir.

********************************************************************************************************************************************************************

-English-

ERCIYES UNIVERSITY

MOBILE APPLICATION DEVELOPMENT FINAL PROJECT

LECTURER = ASST. PROF. DR. FEHİM KÖYLÜ

STUDENT NAME = AHMET EMİN YILMAZ

PROJECT NAME = GAME INFO HUB

The application, named "Game Info Hub", is designed to provide users with detailed information about various games categorized by genre.The "Game Info Hub" allows users to select a game genre, view a list of games within that genre, and see detailed information about each game, including its name, release date, background image, and rating.

Application Content
The "Game Info Hub" application consists of several key features:

Genre Selection Screen: This is the initial screen of the application where users can select from a list of game genres. Each genre is presented in a clickable container, which navigates the user to a list of games in that genre.

Game List Screen: After selecting a genre, users are taken to the Game List Screen. This screen displays a list of games within the chosen genre, fetched from the RAWG Video Games Database API. Each game is displayed in a card format with a thumbnail image, name, and an arrow indicating more details can be viewed.

Game Detail Screen: When a user taps on a game in the list, they are navigated to the Game Detail Screen. This screen shows detailed information about the selected game, including:

-A large background image of the game
-The game’s name in a prominent position
-The release date of the game
-The rating of the game displayed with a star icon

State Management with Provider: The application uses the Provider package for state management. The GameProvider class is responsible for fetching data from the API, managing the list of games, and tracking the loading state.

API Service: The ApiService class handles all network requests to the RAWG Video Games Database API. It includes methods for fetching games by genre, parsing JSON responses, and handling errors.



MAIN PAGE (ANA SAYFA)

![Ekran Görüntüsü (226)](https://github.com/AhmetEmin1088/game_info_hub/assets/77226294/db03e9d0-7105-46f0-8059-1198cf289ed9)


GAME LIST PAGE (OYUN LİSTESİ SAYFASI)

![Ekran Görüntüsü (225)](https://github.com/AhmetEmin1088/game_info_hub/assets/77226294/0dea8c19-71a1-4e43-bb15-9d83d553d2b8)


GAME DETAIL PAGE (OYUN DETAY SAYFASI)

![Ekran Görüntüsü (224)](https://github.com/AhmetEmin1088/game_info_hub/assets/77226294/f52028e6-52a4-4b57-b0d9-f02fd85e6868)


