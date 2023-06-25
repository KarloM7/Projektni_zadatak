-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Jun 25, 2023 at 11:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--
CREATE DATABASE IF NOT EXISTS `projekt` DEFAULT CHARACTER SET latin2 COLLATE latin2_croatian_ci;
USE `projekt`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(1, 'Marko', 'Horvat', 'mhorvat', '$2y$10$faHa2mfbsnew3.aPeMP2f.xmZPVk20c3VTPAyDbI3aPOEDuaYCYl6', 0),
(2, 'Ana', 'Šarić', 'asaric', '$2y$10$aiBeLXCuUU8iyPDA4Pcwt.GomPiDLbkhPaM7a/Ypt1b0Xzx9Xu6r.', 0),
(3, 'Josip', 'Ivančić', 'jivancic', '$2y$10$Abhnbx3KXwS9KXcHA6h6BOHA9Xgy0Bf5khCmsgccpz/psDRBsRtce', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) NOT NULL,
  `sazetak` text NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(64) NOT NULL,
  `kategorija` varchar(64) NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(1, '25.06.2023.', 'Evo kakvo nas vrijeme očekuje', 'Vremenska prognoza', 'Djelomice, a na Jadranu i pretežno sunčano. Malo kiše ili pokojeg kratkotrajnog pljuska može biti na istoku i jugu zemlje. Vjetar slab do umjeren sjeveroistočni i sjeverozapadni. Na Jadranu će puhati umjerena i jaka bura, do podneva podno Velebita s olujnim udarima, a poslijepodne na srednjem i južnom dijelu u okretanju na sjeverozapadnjak. Najniža jutarnja temperatura zraka od 13 do 17, a na Jadranu od 20 do 24 °C. Najviša dnevna uglavnom između 25 i 28, a na Jadranu 28 i 31 °C.', 'Sl1.jpg', 'Novosti', 1),
(2, '25.06.2023.', 'Ljepota Plitvničkih jezera', 'Prirodne ljepote RH', 'Ljepota Plitvičkih jezera vrlo je često sinonim za Hrvatsku i rijetko tko ih propušta posjetiti. Tirkizna jezera uz koja vas vode brojne staze, slapovi i bogata šumska vegetacija stvaraju uistinu idiličan krajolik koji možete posjetiti u svako doba godine. Plitvička jezera najstariji su i najveći hrvatski nacionalni park koji je zbog krajolika nastalog procesom osedravanja upisan na UNESCO-vu listu svjetske baštine 1997. godine.', 'Sl2.jpg', 'Novosti', 1),
(3, '25.06.2023.', 'Počinje nova turistička sezona', 'Turistička sezona samo što nije počela', 'Turistička sezona je pred vratima. Hoće li nadmašiti 2019.godinu? Kako riješiti problem nedostatka sezonskih radnika kojih prema procjenama nedostaje oko 30 tisuća? Kakve nas cijene očekuju? Kako se za sezonu pripremaju konkurenti Španjolska, Portugal, Grčka? Kakva će biti sudbina HUP-ova prijedloga da se iznajmljivačima poveća porez kako rad više ne bi bio oporezovan više od rentanja? O svemu ovome U mreži Prvog govorili su Tonči Glavina iz Ministarstva turizma i sporta, Barbara Marković iz Hrvatske udruge obiteljskog smještaja i Boris Žgomba iz Udruženja putničkih agencija pri HGK. Pitanje \"hoće li ova sezona nadmašiti 2019. godinu\" je pitanje svih pitanja.', 'Sl3.jpg', 'Novosti', 1),
(4, '25.06.2023.', 'EU fondovi', 'Sve što morate znati', 'Europski fondovi su financijski instrumenti za provedbu pojedine javne politike Europske unije u zemljama članicama. Navedene javne politike Europske unije, država članica i država kandidatkinja temelj su za određivanje ciljeva čije ostvarenje će se poticati financiranjem kroz EU fondove. EU fondovi su novac europskih građana koji se, sukladno određenim pravilima i procedurama, dodjeljuju raznim korisnicima za provedbu projekata koji trebaju pridonijeti postizanju spomenutih ključnih javnih politika EU. Europske javne politike donose se za razdoblje od 7 godina te se nazivaju financijskom perspektivom. Trenutno se nalazimo u financijskoj perspektivi 2014.-2020. kojoj je prethodila financijska perspektiva 2007.-2013.', 'Sl4.jpg', 'Novosti', 1),
(5, '25.06.2023.', 'Ronaldo srušio novi rekord', 'Ronaldo postao igrač s najviše reprezentativnih nastupa', 'Dosad je prvo mjesto dijelio s Kuvajćaninom Al-Mutawom, no večeras se odvojio. Hrvatski rekord drži Luka Modrić... Cristiano Ronaldo postao je igrač s najviše reprezentativnih nastupa u povijesti nakon što je u četvrtak 197. put zaigrao za Portugal. Ronaldo je zaigrao od prve minute za Portugal u susretu protiv Lihtenštajna na otvaranju kvalifikacija za Euro 2024. godine upisavši 197. nastup u nacionalnom dresu. Do večerašnjeg ogleda dijelio je rekord s kuvajtskim napadačem Baderom Al-Mutawom.', 'Sl5.jpg', 'Sport', 1),
(6, '25.06.2023.', 'Hrvatska u skupini D za OI', 'Nova košarkaška uzbuđenja', 'Muška hrvatska košarkaška reprezentacija svrstana je u skupinu D europskih pretkvalifikacija za Olimpijske igre 2024., a suparnici će joj biti izabrane vrste Nizozemske, Belgije i Švedske. Domaćin turnira bit će Istanbul, u kojem će biti odigrane grupna i finalna faza. Uz skupinu D, Istanbul će ugostiti i skupinu C u kojoj su Turska, Ukrajina, Bugarska i Island. Turnir će biti održan od 12. do 20. kolovoza ove godine.', 'Sl6.jpg', 'Sport', 1),
(7, '25.06.2023.', 'Gvardiol prelazi u City!?', 'Sprema se jedan od najvećih nogometnih transfera u povijesti', 'O interesu engleskog prvaka za talentiranog Hrvata već je dosta toga napisano, ali svako malo procure neki novi detalji. Fabrizio Romano, napoznatiji stručnjak za transfere, nedavno je otkrio da su City i Gvardiol u kontaktu, interes itekako postoji, ali probleme bi mogao raditi RB Leipzig, koji će tražiti rekordnu odštetu za svog dragulja. Svjesni su da ga neće moći još dugo zadržati u klubu, tako da žele ispisati povijest i učiniti Gvardiola najskupljim braničem dosad. Tražit će za njega odštetu veću od 100 milijuna eura, tako da će City morati duboko zagrabiti u vreću novca.', 'Sl7.jpg', 'Sport', 1),
(8, '25.06.2023.', 'Borna Ćorić opet izgubio', 'Trava mu baš i nije sretna: Nekad je tu pobijedio Federera, a sada je izletio iz prvog kola', 'U dvoboju dvojice partnera iz turnira parova, Kazahstanac Aleksander Bublik svladao je najboljeg hrvatskog tenisača Bornu Ćorića s uvjerljivih 6-3, 6-1 na ATP 250 turniru u njemačkom Halleu. Dvoboj je trajao 68 minuta, a Bublik je iskoristio četiri od 10 prilika za oduzimanje servisa te spasio sve četiri break-lopte s kojima je bio suočen. Kazahstanac je do prvog breaka došao u četvrtom gemu, a kad je u desetom servirao za osvajanje prvog seta, Ćorić nije uspio realizirati dvije break-lopte (15-40).', 'Sl8.jpg', 'Sport', 1),
(9, '25.06.2023.', 'Nevrijeme poharalo Hrvatsku', 'Tuča veličine oraha razbijala krovove, vjetar rušio stabla', 'Za dvije hrvatske regije DHMZ je upalio crveni meteoalarm, odnosno upozorio na izuzetno opasno vrijeme. U Hrvatsku je, kako je ranije i najavljeno, stigla promjena vremena. Naime, Državni hidrometeorološki zavod (DHMZ) kazao je ranije kako se krajem dana i noćas na kopnu očekuje izraženija promjena vremena s pljuskovima i grmljavinom, a u subotu i na Jadranu kad će posvuda osvježiti.', 'Sl9.jpg', 'Novosti', 0),
(10, '25.06.2023.', 'Audi obnovio A6 i A7', 'Audi sve oduševio', 'Nova modelska godina dolazi s novom šminkom. Nema sumnje da je već generacijama Audi A6 jedna od najbolje osmišljenih poslovnih limuzina, dok je njegova dinamičnija verzija u obliku atraktivnijeg A7 jedan od najatraktivnijih modela u cjelokupnoj Audijevoj ponudi. Audi se svojih pulena još ne odriče te ih uvodi u još jednu modelsku godinu. A6 i A7 bi na tržištu trebali opstati još dvije godine, pa im je sada ponuda dodatno obogaćena. Tako se sad sve izvedbe standardno nude s digitalnim kokpitom koji koristi 12.3-inčni zaslon u full HD tehnologiji. Bazne izvedbe dobivaju i full LED prednja svjetla, dok se na popisu standardne opreme našao i napredniji parking assist plus sustav.', 'Sl10.jpg', 'Novosti', 0),
(11, '25.06.2023.', 'Važnost voća i povrća', 'Zašto je važno jesti voće i povrće?', 'Ovaj će članak obratiti pozornost na korisne aspekte unosa voća i povrća u odnosu na suplemente i odgovoriti na pitanje: zašto je važno jesti voće i povrće? Provedeno je istraživanje o prednostima voća i povrća nad suplementima koji se sve više koriste. Glavna je teza da nutrijenti tj. korisne tvari za naš organizam i zdravlje u voću i povrću zajedno djeluju. Pokazano je da vitaminski suplementi jednostavno nisu jednako korisni za nas i naš organizam kao voće i povrće. Razlog tome je što prirodna hrana sadrži vitamine i sastojke koji se razvijaju prirodnim putem te su stoga pogodniji i korisniji za organizam i zdravlje. Nadalje, voće i povrće igra vrlo važnu ulogu u prevenciji mnogih bolesti. Konzumiranje voća i povrća može smanjiti rizik od moždanog udara, kardiovaskularnih bolesti, dijabetesa tipa 2, te čak i nekih oblika raka. Istraživanje provedeno na uzorku od 110 000 ljudi u razdoblju od 14 godina pokazalo je da što više voća i povrća ljudi dnevno konzumiraju, manja je mogućnost da će razviti kardiovaskularne bolesti.', 'Sl11.jpg', 'Novosti', 0),
(12, '25.06.2023.', 'Je li brza hrana stvarno loša?', 'Restorani brze prehrane su posvuda', 'U prehranu treba uvesti mnogo svježeg voća i povrća, što više nije pitanje novca i ekonomičnosti, nego ponajprije zdravlja. Što bi se dogodilo da 30 dana jedem samo u restoranima brze prehrane? Bi li se udebljao? Bi li to bilo nerazumno i opasno? Tim pitanjima počinje film amaterskog redatelja Morgana Spurlocka, dobitnika nagrade za najbolju režiju. Brza hrana je nezdrava. Ali zašto? Vidimo posljedice, ali ne znamo točan uzrok. Divovi prehrambene industrije ne žele da se spoznaju činjenice sve većeg problema pretilosti, poslije pušenja, najvećeg uzroka smrtnosti današnjice. U Americi je pretilost proglašena epidemijom. Tko je odgovoran za to? Gdje prestaje osobna odgovornost? Možemo li jednostavno reći - neću jesti u restoranu brze prehrane jer znam da je to nezdravo. Restorani brze prehrane svuda su oko nas i prehranjuju velik dio svjetske populacije.', 'Sl12.jpg', 'Novosti', 0),
(13, '25.06.2023.', 'Mladi Vatreni opet poraženi', 'Španjolci ipak prejaki, naši ispali iz svih kombinacija za četvrtfinale', 'Nakon 0:2 poraza od Ukrajine U-21 mladi hrvatski nogometaši na Euru su upisali drugi poraz u skupini B, Španjolska U21 je slavila s 1:0 i time je Hrvatska U21 izgubila svaku šansu za plasman u četvrtfinale. U skupini B nakon dva kola Španjolska U21 i Ukrajina U21 imaju maksimalnih šest bodova i izborili su prolaz među osam najboljih, dok su mladi Hrvati i Rumunji ispali već nakon 180 minuta igre.Španjolska U21 je trebala točno dvadeset sekundi za pogodak na stadionu u Bukureštu. Sergio Gomez je probio bok, ubacio je u hrvatski šesnaesterac gdje je Abel Ruiz lakoćom pogodio mrežu. Bio je to ujedno najbrži pogodak u povijesti europskih prvenstava do 21 godine i jedini na ovoj utakmici.', 'Sl13.jpg', 'Sport', 0),
(14, '25.06.2023.', 'Vatreni opet izgubili zlato', 'Izbornik i Modrić zaslužili su ovaj trofej! Vatreni su razočarani.', 'Hrvatska je izgubila i svoje drugo finale, protiv Vatrenih, Furija je imala na golu sjajnog Simona, koji je u raspucavanju obranio udarce Majera i Petkovića, a onda je Carvahal panenkom zabio za 5:4 i trofej Lige nacija za Španjolce. Finale je bilo tvrdo, Španjolci su imali više loptu u nogama i bili su za nijansu opasniji prema naprijed, naročito nakon ulaska Fatija, ali na kraju nakon 120 minuta bilo je bez pobjednika na ?De Kuipu?. U lutriji penala za  zabili su, Vlašić, Brozović i Modrić, i Joselu, Rodri, Merino, onda Simon brani Majeru, a Asensio pogađa za Furiju pa zabija Perišić za Vatrene, da bi Laport pogodio prečku, ali Simon brani Petkoviću i na kraju Carvahal panekom vodi Furiju do pobjede.', 'Sl14.jpg', 'Sport', 0),
(15, '25.06.2023.', 'Mbappe ušao u povijesti PSG-a', 'Mladi Francuz srušio novi rekord', 'Novu prvenstvenu pobjedu upisao je PSG koji se malo namučio protiv Nantesa, ali ipak je upisao domaću pobjedu od 4:2. Tako zadržava veliku prednost pred prvim pratiteljem. Činilo se da sve ide svojim tokom nakon prvih 17 minuta u kojima su Parižani stigli do dva pogotka prednosti. Prvo je zabio Leo Messi, a nakon toga autogol je pripisan Jaouenu Hadjamu. Međutim, u razmaku od 31. do 38. minute Nantes se potpuno vraća i dolazi do poravnanja. Zabijali su Ludovic Blas i Ignatius Ganago. PSG se u vodstvo vratio nakon točno sat vremena igre. Ubacio je Kylian Mbappe, a glavom zabio Danilo Pereira. Povijesni trenutak dogodio se u 92. minuti kada je svoj 201. pogodak za PSG postigao Mbappe i tako postao najbolji strijelac u povijesti kluba. Prestigao je Edinsona Cavanija koji je imao okruglih 200.', 'Sl15.jpg', 'Sport', 0),
(16, '25.06.2023.', 'Najmoderniji stadion na svijetu!', 'Novi Bernabeu bit će centar Madrida i pravo remek-djelo', 'Za posao izgradnje bilo je predviđeno da će se utrošiti 525 milijuna eura. Real je 2019. godine podigao kredit na trideset godina i jedna će mu tranša biti kao plaća jednog boljeg igrača. Doduše tako je izgledalo, jer je kriza zbog pandemija, a potom i rat u Ukrajini, potpuno promijenio odnose. Već u studenom je Perez tražio dozvolu dioničara da se zbog nastalih promjena na tržištu sirovina Real zaduži još 225 milijuna eura. Zbog rata je poskupljena cijena materijala i sada se već govori o 800 milijuna eura troška, sa trendom rasta jer izgradnja kasni, za sada 6 mjeseci... Novi Bernabeu biti će još 12 metara viši i primati će 90 tisuća gledatelja. Sva mjesta biti će sjedeća, komforna i sa 87% nagiba, što omogućuje odličnu vizuru iz svakog kuta stadiona, dakako biti će i natkrivena. Zbog navedenih novih sadržaja, sportova i zabava, izgrađen je krov, koji će u 15 minuta Realov stadion pretvoriti u velebnu dvoranu...', 'Sl16.jpg', 'Sport', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
