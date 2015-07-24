/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : app

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2013-05-07 18:14:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `ID` varchar(32) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `IS_ENABLED` tinyint(1) DEFAULT NULL,
  `CIVILITY` varchar(5) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `BIRTH_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `VERSION` int(10) DEFAULT '0',
  `PHOTO` longblob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PERSON_UNIQUE_1_INDEX_8` (`LOGIN`),
  UNIQUE KEY `PERSON_UNIQUE_2_INDEX_8` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('0000000000000000000000000000001', 'admin', 'admin', 'admin@example.com', '1', 'MR', 'Admin', 'Berjaya', '1989-05-03 00:00:00', '9', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B474277674842676B494277674B43676B4C445259504451774D445273554652415749423069496941644878386B4B4451734A4359784A7838664C5430744D5455334F6A6F364979732F52443834517A51354F6A634243676F4B4451774E47673850476A636C487955334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E2F2F41414245494147384162774D4249674143455145444551482F784141634141414341674D42415141414141414141414141414141464267514841674D494151442F7841413945414142417749444251554741776345417741414141414241674D454252454145694547457A464259534A5263594752427851796F6248425174486846534E53596F4B79384352796B73496D4D364C2F7841416141514143417745424141414141414141414141414141414442414543425141472F3851414A784541416749424241494241775541414141414141414141514941417845454569457845304652496D4678425251796762482F3267414D41774541416845444551412F414C4A703952695347387948456B5734446A676F7A4333624F6F47645A4B313953667934655746656A5557464671456454436C646C5763704A30302F556A44524A6B715773744E6D7841412F71556244303150706A6C3348754748414257527477564A4B3761453665474937794E326B71793374774866307764445341674A547741734D5133325134383268504146536C65576E315079784D4D6C2F7A41376F55327A5A4A75736B414871547878716D4B44546147676530345167643972366E352F504539624A587566346E566C51384F48304E3861586F652B716151654465554454543853762B6F784D4F4C566D434E567230736C4E682F6E714D596F55515767527173456E457A3363694A49554F493368506C653332786936794646536B57374462695150357267444854764D4A477A4B393253376238495566446E6A6134436A496F6A73357370382B66726245316D494674754E636832664B77503378746A4D7479497145714E77363166547535343655613843526E493533615342727645442F414F68664544614B6A6966547A4A516E3937484B696B676171527A4879763564634670622B376973324255357170595478374931506B62596D4F50496159736B44496C5044706972414559693573596E695568575168724D456B6549777545356C584A785A6C5732545A6C716433446D55685A41484B334566496A43354A324A6E74712F644B53735957464C724B574D753648505A6C585A6464687A4A557931326E41306D7774797566714D4E6C4F6B6C352F6548554631626E703242387234522F5A506C616F4E517963557953542F414D453461646E6C5A6F4346445779516B2B4F702B2B47554F526D4F557172306868476C4D734158504C455A75616C706B754569345A54783737456E412B57365552486C647A616A38734C732B7067786F375963735845705351447271414C655048457A6870673355632F6547663270466970494B6D5743736A7548776A476D4E494474544369644653584C6543554144366E3177724D3142357964506D7374707547564943334657374949354445706C365A47454E3537636C4A5158446C75434D326E6E777842505567366248455069526E32656C7663467262556F6443556A38386552316B4A6E714E724239777031354A312F754F413337515169674C4255416B62734B36416B44375977703152553976474351432B7074436636686D5072326A696379763763344A68756A7A43367371566F53577952335861312B616361366655457453457345384A4479452B4237663659587054377365536C53486E5732317963746B32476953736362646359564E4C315071724B74345668434733465A674C334B67447738546975377145476D4250356A6330366A4D2B6258566E556D2F546A39385132705A584262373875587A476E32784567794E362F4B546651504B2B51534D52597A75536E754B5034486E666C6D4F4C79777043795A426C78584757316C314F5659736B333432302B7777524462537832466A31787A314971556F624A30346F64576C625535394E777269436C7458314A786847327A724D5A4E6B53316E784E3853486D5A634D766B5236396C5436536D7051776669536C7933714439734E327A774C564953534C465468424238626662434A374B47334656655849476A6147636975704B67522F6163574D32326C744161514C4433685678346B717747722B416A3268596E54726D624A366437466B4E66784D712B6D46476E776A76346B6E5656354953745231746131766F634E4D74307252505333386262566834327639384136302F774337554B44437052496E5665527534376E4A72385333543335516B717431474C506E48455A6133784A6D65316C44644945684A6562533034586B397078493073434F4A4855655743736B6C2B4E4451416774377453413432734B4368626B52706F63555A4569497164626A526D336B78325A4D684C535A4D6979334667717476467150456E6A3363736442557259326D6250764E4B706131494B6D796D53327369306766786C49734D774E74626337486C594A4F3463656F716451774933434B3769316F674A51346B7042444A55434F59493039517242616978536D61354B5744753246414A366C4B4D76315638734D55366C525A6A4332566F79686162456F3049376A6953307968686F49614146756D4933385172366A6375424B78327432706851354359317936746C3446787476496B493175515672495344773031506662486B6E61707571705571584366697679554A3931575368545479516F4535567055515666792B654B39714B6B4D375370716B2B495859496E4C79736B57446A6146396F5834584E376E7163573957716E443271765361644765695359426A7A51363679427579484536424F763462343557553851506B6457426D65797158437A4A64652B4E62366952652B704A4A2B767977496D7A584253717368704A4A5A626B4F43334E52756B5739546778733053337634797669617356325046524A4A2B5A74674761677A5349535A636C6C54794A556A4B74745048646B4C37583130384D4D35474D6D50757971475A754967516F3376477A715935624B6C4A6463574C4468644B4239734C616D736A705352714D5862375061625464354B5A4C725568705275796F38536E6B434F5248504348743354574932307A7A4D5A41516759585836535354785050444B4D576338522B324A70725647702B34556F46356561533866345538455838726E317758596C4A64375639643632736A757A697747413651723356455A4A50764E5363436C6B385130503048706943395632327031527362424B5576702F32744F4A2B784F474267635466727243707831474B4734465661653272564A57426279534D593750776F7238397469633361564155366D4D38654F5653436B6764436B702F3434695258502F49716767472B67576B65682F4C426B6F61637142624B79327061557251366E696C514A4149372B58726972384C6D52656F4B344D51396F396761544668556C696274445471584D615A49665334522B39462F6946794466394D4F4779444B4A56656C3157477439644F52446168526E5853624F6C4A4A57704E2B58774334346B48444C4E7073576F734A61714444623175656F736568346A47364C47596873686D4B79686C7050424461624165574567674279496753534F5A7578396A3748324C53496D31326E784B624469526B624C4C724C596B4F764957454A58755671555663447747766870695441675077573539596D424B617055557042624877734A534F796E7262556B2F706870774432766C6F68305A346B674F764A335466667278743559717144646D5851626D4378563262644C596D4F453845334A50676F2F62417262486470577A455362507845705744774469464474414476475548774A7875684F6C6D685448523854704345396548324A7749323055354C6C5135444B53744D6C6C4B644E65326D3455506D505844646F4F7A45503841715162784841794363474F57796C4C6A552B454B6F682F4D434C6C504C47695273784432746E75544733696851304977476F6B53612F4552546E586E59374A31566B566C58707142673554594B3663584759632B516844684A7343437050533547496F30746C674258675447302B6B6530426C77464847497573317266795A4D764D4E347042796B6345493443336E77364A56333452616A583831526333592F634B51746C5A4A2B4A4B6B6C4A2B74384574745954757A45783269496B42776B42626A67304B68794851573564634C6B5344446C52486C765478486653514732314E335372516B335666545541634F642B574C486744664E545561764943724C616950467574516E477A6D33385A764B542B4B37594B622B4E683634614549512B5936726B396C53416F636538487A415072697471424F564D3257706331427649674C4D527933656768545A383045442B6B34734F4C4962495138306273754A533867394C582F74755036634547444757506B6F4444342F7947346B38747153784C49422F43767677544242467877774B6C786B504D6C4B726161676E545845614C4B6B52657A66654E6A384B754977726258735032694E5A38672B38505A52636E6E6A367776666E694731564971394675427058384C6E5A78374D6E7378347A6A363345495A625356726557624A536B43354E3844556275704A34376B6831314C61626E5538674F654B466C562B7062513757564E366F71794E7779754D797767396C73425242385363747963584E54353053714D4A6B775A62556C706642787459494F4B5664434B645536342B396F567A704C79683349446967505732476C7243695830684C5863394353366874417A4252476950416C74613146536B2F6849747236714938734D4F7A63634B6E6D714A6533734654485A476136576E626A4E3632424236327854386D53354B664333447150715353666D546978505A6A46674F525856706D795066435476497948696B425041477774667A76686D6745754D5268645362484B2B6F783161706F43314B42416353624A4B5471507A78697A4C6C774845755334366D307558435376533975377978496C734E77466F6B5A573074737143776B6F427565362F584154616A6171465566646B4C756F703753576D547A7471536F6A44316C7A5632716F55624432666639526F75696659524F32396371446D3073782B717830523544707A627444715841453875306B6D2B6D424649704D3674797844706A4F2B6B4C425545584173426135756648466D7A396C4B6456716D2F4D4859336A4151456F534F79765874654E7244416950554B6237504A35596B7748706A3767336A4D70746155715343534C57504139516462384D4A5736646B3550557A48307051376D3668503256374E76302B52576F39656A71475254594564523743694172746A6B5259324238634D304A4463482F5169514370744B6E554974634E6A4E6370767A49304A48694D5678565061564E6D4F425542684C4B45574933707A4C5741623230304150446E7069773670423373655056615555715A6D4E4A6E5269675747637042635262716E74572F6C4977454D4D34454E545A574434775A4E6C567045615A536F7A3654755A655A684C6C2F6764545970422F774277754C39366575444B6D794C5A6751654237385147614842326C32655A6B4F754F4E71495334685564566C73506F307A704A35673335634467364A61475A4C6158484D376762435671793635744E666E694877567759737743325A51666D51476D6C4A6E4D4A6351346B6351564A4946384A653330742F614769546165784B625956456458766B6733442B374A30364334763544466E4E53642B6E4D675A30704A5057773773633478646E71704E327A4E466461655A58496655743445327379546D55712F437848447259644D516F5776676A4F59536F37724E7A44715770735A482F5A5778314F434541796A4843323275613346363639426D314F454B72624737537A4B54564B6736687442337269313778646C4C62624A746C36477856723334746B42716B7244434571734549514C4571566C534C63763831774C6E5669464A6B496F3035786E4E4D526B45514C4A635879796B446B52663077544845756945416E356C43514B4A55357A4564364A436464524B644C4C42412F397177435342666A5941335044544732496D7230714D3156493763754C48667A4E6F6C4A53556F583370763336634D582B56763058616D6A30783249774B556D4F347469536C476F65536D775277736A736C56755A395267765736564872477A4D716B747473427553777044514B6579685A344B386A72694F755245794E764B79675964647164546A694249654C7261446D7A472B5A524A356E456D52545371415A4C517A504E4B42534C636236483634597137734F4E68346A5651616B47614370434F303378586C4A556F6A6B6E75484C47373263546D4A3039516B7856764E6F5A797047537954626D6538345774567272414332494B78487563626E685A7844744A716134716C6C345A51764E6276372F5443483757353744736D4447533072666F5158464F4854736E533358682F6C384F54435A6361754F4B6D535338484779764F5278413049493658474B6F32327243717A585858677137546637747653335A75625931377979304B726E4C653574613173565950634452695065477833714178305A735252356C4B325770385774503778714B70546A4357314B3749556270756538584E75577654484F634A4A564D59546269346E3634757A325A5643703132695447467653464D5256626B4635784B68773041307A634C6353634A5537532B444D335468532B4448445A64324E467A77334855714C723772696C6A736B41714F55414A74594157486C67744D70366C4F72655141346C56723355654E774E4D5678572F615053715132334439304438324D764938476B5A65584E522B6D75434E56323271533967496D307445644D6633695875697738684B3869426D4241363354652F58466456585659685678783852697A41732B67383952396A5534754D6F544A557364734C7974714B516B673374636352303538384B47316C58587337732F554E6F4B343148657145685A683039684B624A536A4D5369353436356336746551417469757178375264704B7177762F5669476B4E6874516958526E76784A313436637547445874316B4B587378736F67465253346B754735346B4E6F2F4D3447726875765546645539584C6479757057323230737452584A724D7250624B464E7144656E6432625932374C767A334B395435305A3650373269596B70564C667942776932685564546539744E634C4F4A43376943774F397861766F4D535431466978505A6E5773704C3875476C447249533834426E526D436B4A506465326F36327750682B38496653513036456F56613637424938686A6E335A6232676251624E4F4A54476C475245436970555638356B714A36385235484248615832716252317452544864464D6A6C4F55747854326A6669633531486C62484D675A31664A34686C747775334575376275576B624F76786D6C4C7A75464B565A44384B43626B6B397874627A785756456266694E72636846534332347042556E782F58436A5474727178555A54444661716B7158486151513268785677447071653839546334614B5A5630732B394D74713744697773584854394D4E5562474F3167447A372B497A6F2F453346676E2F2F5A);
INSERT INTO `person` VALUES ('0000000000000000000000000000002', 'user', 'user', 'user@example.com', '1', 'MS', 'User', '1', '1990-05-23 00:00:00', '2', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277424441416B474277674842676B494277674B43676B4C445259504451774D445273554652415749423069496941644878386B4B4451734A4359784A7838664C5430744D5455334F6A6F364979732F52443834517A51354F6A662F3277424441516F4B4367304D44526F5044786F334A52386C4E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A63334E7A662F7741415243414251414641444153494141684542417845422F3851414767414241514542415145424141414141414141414141414277594642414D4341502F454144495141414942417749454241514642514541414141414141454341774145455155684268497851524D6955574548464847524A444A436766456A5573485234574C2F7841415A415141434177454141414141414141414141414141414143417741424241582F784141664551414341674D42415141444141414141414141414141414151495241794578424349544930482F3267414D41774541416845444551412F4147614D42455A7A327A55467831646D5454704555344A474B764C76793272416632305963574D5A6261515A2B74444C624E4F4257374457337335372F5534624A554A444F43357854786F46716C70625278674255515947324B4E4F4472514C714B4E49417A794D5744653370537962645874476A59486C59594F446A616A66526B31576A35764C35594157474A4548586B3669732B61366975464A6A624F3354765562715043643561616D4A395076726752416C755553486D4A375A7A736170725747534C54544C6442524B715A63696F7952696B6A443467552B4558554462656F76565845674A5838324D697450584F4C4C4A7561334E775958372F30793233375650797A42784736537249684F4F5A527363306A496A5A6972683136666568306A636E7A4963476C6A6836373853326A584F5177322B6F363045654F316E664666304D63347067344B6E3858544C4E6875664550327173656D4C394B54566C35667971734A516E7A4D4E68526E72666E4E78477736353566725353716F304C584578475758492F3841496F383469484D38785546546E6E54506366785448307A59656B31774E4359654C6D526D626B644F59416E623971596E6C5659794B48624B66354C5762533537422B526A37482F744B4D6A53584E6F506C32555359324C44497A3730566A4D734B5A375272347334586C4A42394B2B654A555348534A4651594C43764F4F344968444F6A525371504D4163345031394B7939633152726931384D67466A746E4E58656756467553492F554E44744C69314C5377426D4334446A5A674D656F6F2F734A5549756F59396F306B4B706A734256377874784A426F75694E437042765A314B784A334871783968526E6F4F557370705736426853706348776E2B796B646B71473975496C5273536441615A666874703931466F6B4C586946537245714433464758426D6A796131716F554B516B666D4C64674B663756466A6752452F4B7167437278725948706E536F356279375731676B68755741384D5A42374D6F2F7A304651327333526E682B597831596E36317661327775302B5863387135596B6A7476553972584974734978366241646830714D444569597578686A4636726B66347047344D315035717A574B55346C515933372B394756792F3479636B2B564D494B73744355785149796E44416452564A374E47564A784B3355304C6E6D526D522B6E4D74486E462B7432664438777572707A645870423843444F4D65353942372F617444697A696938306A545A47684D627A4D4D4A7A726D6858555A37725572795336764A476C6D6B4F575A714F7850306F306A30754A4C376948554A62363863466D506D64746C5564675038415655647659526933537A694264676645634C55784446494753504A77447350536C76346361537433484B37674670664B535275414F744C6C74304D7852574F4C6B2B6D6A3850555343627731414741632F742F4E4A5674475168394161693948736A48784D70743178624F437565334D4F744941514B6F41365533477447623053546C5A44366979753742534D35334652577358724361354A7A6C5A4656665943757A5662326547363859456A49357179395A5A4E516838654479755143796E316F65443863614D53314C584B7578367450735059436B445333354C52426A666C4648764473456A5834676250553442704F7449414642413655496333386F692B4B726561356553535965554479696F673279525738747977364D4551652F6330776135616961306B47426E46474F6F32636A5779784C32636B2F6571624468556B636D6C5771755137626B6E616C6E3464326F456E79374F79527A354446657654706E745250594F39766643435159354433706334636235614B43524E696D44564C6F4F562F46495134644F534B3468384E41735543595441376D75786C7858704449737353534C2B5667434B2F4F4B304A6E4B636D2B67767263674E7A4B72727A516C65586271426A475257587152534C5435355967765047716E3669746E55312F486C483253645373626632734257507238545357614C476F4479526547773936442B4852697A4867766D73626D4F374D4A6442756558714161524E49314333314B31575731634545626A754B786250684F346531556C346A68426B456E2F5662764350437A5773444F5A304347516C4F5548492F355171444C7954685632644538504F684246512B736161384E784B776A4A6A4F643862413971586F744B7477504F576B5032466332736150446457545168465559386F4178673066346D304A68364646676864327356325264723557626641374D4F6F71313455756647303556592B6444796D6F2F556F33307A5670624B6359446B6766587457357758506B7A7233553449704E4E505A706D303432686D34666B3854536F632F707976324E614A724334536D35374F57496E64487A392F34726570364F564E564A6E2F2F5A);
INSERT INTO `person` VALUES ('0000000000000000000000000000003', 'demo', 'demo', 'demo@example.com', '1', 'MR', 'Dina', 'Richard', '1983-05-04 00:00:00', '2', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B47426851474252555345784D5646425156475277594742675946783466485277664742776547527359467877644853596547526F6A4778775A49433868497967714C437773484234794E5441714E5363744C536B4243516F4B4451734E47513450476A496B485351314E4449734E4338774C4377304E4377744C4455304C4377314C4451734B536B734C4451734C4377734C4377734E696B734C436B304C4377704C4377704C4451734C502F41414245494146414155414D4249674143455145444551482F7841416241414143417745424151414141414141414141414141414642674D454277494241502F4541446751414145434177554642774945427745414141414141414543455141444241555349544642426A4A525959455446434A786F6248426B644643636F4C774979516C4D314A693452582F7841415A415141444151454241414141414141414141414141414143417751424141582F7841416645514144414149444151414441414141414141414141414141514944455249684D5545694D6C482F3267414D41774541416845444551412F414B30797A474178794D427473617A754D6C4D70423853334A35415130546B76496A4F4C62724F2F573274655942756A70683934383344504A396A64736F33635769314B5578595A36386F676C686F73537062664D572B414579413047396E626158596C53566F7A596A506A78356E6E4168496679487646366C6C7375484B3030413448696F714456556C4D554B48624A4A53764573784149426665446E6F78343461665946534C51734A4B727431777968774F52592B63592F5A316C4B6D326535444D5844366B6365546B526F6D796C72685655704367776D6D38447755336942344B4A78367770306C51664270436A74395A6E637255524D30586651667A416A48716C6A41513033624E6749303761657A684D6B4B6D7275744C55434172385742414439534F70685570615A4E536277537A3541615070427270624A712F6252526D41475759796C536269794F425637787174644F5453304331713355704A4D5A58664E51366A6756456C7546346B74456542656C6A4F6B65414436784C4C582B2F6D504B53696D577057585A61584F4851633450554F7835544E4861716D416636705333755350704471704C30325962384B4648494E544E4355676B36444F4E4173485A5130794C793242346350506E4679774C476C5545703559636E55352B73464A39707070537A4B55526F6B664A7768484C624B5A6A69646432416B464F6B567248714F7872794E513559366C4F4A41346B6A3335785A706253373250375A48366B6B2B38413671714E4474536B416277436B76677842623142614E702F555A53364E44326A435657476F6C4E354B6733516A413949564C4B6B66795159674B54776830433031746B4A2F7855416E6F6F4E396F56374C6F2B78424249654B466B576A7A716837324B4672307666624A6D4947616B6B447A306A4D35636779796C4B6864494C4563434E50724774706C434D3732736B643374355A30556F4B2B44375250686677705A66734B67562F345A75344B5563547841777767335A396B4A6C714A556C546147396937466E2B76504B4B2B793951394B33412B384E63755632737542716D6D7974593155706C665A32616F3142536F75305762596F6A4F304A546A6743324F6835785632654E36316C636F5A564D6B73593645754F7A6E376F57374A7346534A67494E306A456C33664159614E6B533462504B4F7471615875395A547A632F4570506F495A4A5945735251326D57685666496C4B33774141426D3679464B504A6B74444B57317342366C6144746D56462F5A352B42486F732F61413949486D7279336A37783752565A6C32535A6537645878624A617A6E7962326968533169616442765455416B343475666F497A46524A6D57675371315A4B4D3571656D5074436874624E6C31796B716C6D387759344565386364736C4A7761504B6B3974536C68674D53637868726C367873715A37527962623749746E612F753151487933543845786F314C503841344D5A4B446358682B4C412F454F6D7A4E72642F6F726974354F45446C6E3656346236347359614E4270717371537069644D4F4D4D426C756B467965427A396F546B3255544E4A4955726E6567315A316D69524A64696E6B352B2B4A6746704972755A53564A68366C48654A34546F2B4A35616D42746C566B75316C7A7173593370696C4A35424C70546E694D416B747A675A74506179725073354D744B533838396D70594F36437743527A566B2F4A746350714D476D736F53556A46584431504E344E76556B4E2F6C5A50544B2F70696934443772366E4E2B754D436955336E41474F4D4D6B75516D544F6C7059654678694F422F35454630305653626F4441354E4852697039496E79354A33736D6C30795A4177536B6441495474764C57464C52396D44347067492F547166694A39707473354E6A724B55457A35684A384B63456A387975486B3568436D5470746F7A6C564D3058697263546B46463244634A6158474F734D5362375A78416D56326B77493434665439694346697A564370537256587848745052396A4D42337271514834714F4B6C65524C4470424F79714964736E6C425054544778744E446E5A747045537645494B4A716A50794451477030736F434361543259695A4A374C4E6F7372536C5366473130596C39473169436C6F33706A4D4372684C584844736E6E6A7238785271702F6537556C79644E39664D4464486C683751537035774D796153636C503043632F4C4F4736354E667843576A6956576863384976425330447873437766454F644358793834745446706E56443545395957646B7761696B565055474D395A6D644D6B446F6C6F59715756656E50446553696D6B4C72424C365A2F2F32513D3D);
INSERT INTO `person` VALUES ('0000000000000000000000000000004', 'user04', 'user04', 'user04@example.com', '1', 'MR', 'gigiyomi', 'Suman', '1991-07-03 00:00:00', '2', null);
INSERT INTO `person` VALUES ('2c9737853e7d7f8c013e7d81ee040000', 'user4', '12345', 'user4@email.com', null, 'MRS', 'User', 'Four', '1983-05-03 00:00:00', '2', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B474268515242516B5545785157465255564742736146784D594668635A484263634A426B63485238614942305848796F664768386C48683459487A41674A5363704C537773484238784E5441714E5363334C436B4243516F4B4467734E4751385047536B6B487951314C4338734B6977754B5377734B5441734C436B704C4377734B536B734B7977754B5377734C4377704C436B734C4377734C4377704B536B714C4377734B5455704E662F41414245494146414155414D4249674143455145444551482F7841415A4141414441514542414141414141414141414141414141464267634541774C2F7841413545414142416751444267514442774D46414141414141414241684541417751684254464242684A52595847424970477877534F6838424D6B4D6B4C52346645484A5849554654513155762F4541426F4241414D424151454241414141414141414141414141414D45425145414167622F7841416A45514143416749444141454641514141414141414141414141514944455345534D55457A49694D79635945542F396F4144414D4241414952417845415077426B7843635454415A684C4277644E626362656B59454F416F752F42343731332F5854516B6549717A2F41462B7444412B6455504B427941486E4879632B792F483854524C6E6E37525274622B49363174556D584B336C6B4D41433735643445534B30424B2F6E396459577176456C564661707936456C676E516B6139426B42786A7136756233306A484C78423258744B6C5A384D7559522F364C42374D3747384363586C7A4631536C6F515343316755676867327563643657535754592B6B4535556B67616A3577786D4E62796B6134636C746B776E54464A784A62756D393071424248592B7364464B63467245472B57555554463842525655705351424D4138432F626D4471496D39516B494B6E53415134494A31314555717249327258596862564B7037364D32486C713958623145477470792F77426A30675452547761686D5A674838784272614E4877556367386462383054494C37624C485579782F6F53514263676E6C6D33724376694D33646B6C4C36655433396F624B7955545356624573416C68777A76667443586A494C477A574478496B746F66692F705946714D54497732646C6C4157545546477A59554C4B49642B44362F4F5065494C2B444F486C4858434D4F4654675574416677704752317A3652527168695039467565332B6A6E4A77784579726C7564344A5343535353564865446C7A336A55764770394650536437666C456B62692F7741764A4A7A54597756774C5A3153566F45354457626543337430626D59323751624E425532576753706B78444D64315942746C6E5A386F6363564A346179674B636C74505951704B784D32676C7A4A5A644A754F523148574A7A744A4B53646F71344174347434647866316830772F427A68366B49556F2F5A7A7A34416F42304C41756B746134792F784D495749564958744857484D4F336B473959556F716464736C3448766D70314A76737830456743754869424A2F55516632692F3430722F4577427739503931466D636A6C2B61446D3036764449364E424C766D694272315579326B4F4A7158423367626442435A6A55732B4E674D732B664F484A4D6769616E584F2F496776436E69672B37544133346248793145537035304F51394A6C6A3954756B387A42502B6D6C6439396E797964415238336A446965464B714B685457536B6E65577A67634261426B75696E306C6369596D7853624B4677655866684632704C2F50424F6B354B6649733156556F537551436F427A727235586733527A4171556B676851304968467754455556644C4B564E515571476F7578367730555574457152384D6379636E3674484A6A475632412F366E596B6847435377564D6F71425259334B62365A667645686F35373145776E4D33687A322F6F5A7452696979484F346C3070346A5675663751687946654F43515361794C5779664C4867547777482F645576722B73477470443471667637774B777939624C766C42446146547A5A485177725A753542595046624C6C4B6E2F4851624D5658766B4C2F414633686678656C655656687A714C394F4D476C5379547933674F32394137474142557A682F445248626542364B4146485245345A4A556C696C5365414236656343367641304A535A594C6C617439577261664F4E6D4331437063757151465743794E3330615055715434564C4E7954632B336C7046647A55594A674E746E544461524B4532454755547668774C7045456B51546B537753777647526C6B4531737856464E3971764B77794E77423368433275324D4D6C61707373756E4E517534346D34754971534A594376654F4E645268644D6F454F432F6F33704874536C426D4F4B6B746B567759663343572F4E344B34346C366D6E48492B6F6A4D61583748484A30746A34566B41484E6E74386D6A5269713345677830336D314D387857497446736E58436D49647751476A486A367676432B444472776A65516447362B396F4462524C615768527A55682B6C3469396C4243536C536A6A537433387854626D2F3665304D61557375544C5470395035336864774D766931556F6B6545426871393349375737386F61634A6C627369664F4F617677394C2B376E7349646E306B2F414D65386E516F41536F44496544392F614E4B725569564A50506A5A766F4E4136726C6C5747795570666575546F376B36787477357A68444B4E77534834616A7672416C6C50495A78535757654B4370336B42383965757346415068777455553070724A696565587435764232584E655844735A5A57785A726938434874356865356939424F46684E436B6B6A696E7079493674432F586B376B703231376E6A464632767041765A4F576F73387459556E753449386F6E6D4A666752314D59703561523461654D6E2F396B3D);
INSERT INTO `person` VALUES ('402881093e7fdc1b013e7fe2f1c40000', 'usergg', '12345', 'usergg@email.com', null, 'MS', 'User', 'GG', '1996-02-21 00:00:00', '1', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B474268494742516B5345785157465251574452676147526758474341594752776448434D6847783863484349594853736648526F6C4852385848793867497963704C446773485234784E5441714E5359744C536B4243516F4B4451734E4751384F476A556B486951314E536F314B5377764B54517A4D6A51714B5377734C4377304E5338314C4377314C4455314B5451704C436B734C436B754C4377734C4377704C436B304C4377734E502F41414245494146414155414D4249674143455145444551482F78414163414141444151454241414D41414141414141414141414146426763454177494141516A2F7841412B4541414241675145416763474177554A41414141414141424168454141775168425159534D55465245794A686359475273525179644B4842384462523451636C556D507846694D6B516D4A6B63344B532F3851414767454141674D4241514141414141414141414141414141416755414177514242762F45414345524141494341514D4641514141414141414141414141414142416845444242496842524D78515646782F396F4144414D4241414952417845415077436B5A737A41724161325151335851786676334861482B6365426D6232544C633957363073456B7463714A627968502F616E6936546E5368706C5761536C515633714C672B43593634736B4C77316A37704F6F3933652F66464B6B314E706D72543465354E4A6D4F73784264544D51716173724A56596E354E62614F456C505456566C626C757A6B305A3653755375557272445356645237472F71624750633671536D596D374F6F73646E4932596666474C564964354D53634846657A3475556341786E704158575641574F79655237377854634D7A4E4A78664C383955736C305332556C566C4173772F72456C6E314335387461316B4173534139755847504746593271676E72596B425568622B477A2B494564625175793661347065304F6D46703035587146385A396374582F56485648685A2F474A6E6D4C3852312F77447A71395970702F77754259584B2F67705154337136782B6B544C4D5130356B7841667A316573524B6F6F577A647A5A7670736E4C714D4E6B54656C6C4A5374477069533444746468784E6F414561564564734D7546313954535336636F703561786F444F4E51493242496637595176565568564E567A554B444B5373676A7469416C4E7A746C3859722B317A4456472F39776761534C47366E643937506273675A6E75704569524E5141523155704462625039666C4646784C426B54733043704A5538715147415A6E36312F6E45707A3556764D4737714B69336F6252513037646A5470367562667748344E582B32304A54594649306C754C33423837526F705A706D4A5546443356574F374873345875497759524A47483069775843314B647934543567635071494A547142556B544C67414B423935743975484E3446574F33343541315A56475A55545263764D4444672B2F6B4E7A476D696C43747853524C42634B49543450632B734373524371576357314A4B6C424C76732B3764723267706C475830574D306F65795648763332506B5446694D4D7253622B4644784764306C577676627969625A6B4C356C78443468587244394F567156332F414668427A4A2B4A73522B49563678657A7A70706C7A4555324642536B39496F796B70554E524143436250316665737A68586841696F6E6530314D78624E71555377324438494E47724E4E6C795541552F7743553947556851472F58553534386D674A4E6D394E4F557067484F79517738427767547065387A34443764577A4A2B746153696E466B6D78596B73664F4A5669615456596B6B724B6945704A636A64754862774D576A47356F524A6E6A6E4B4E752B49356A6C52374767676B6B36505463577465305A39796259363662536A4B7A366C563661656A6C545348534F76704C68773543573858505061426674453746637864637153684B69573241757750363778736D56536C5958537977434664476B4859757A6250786A53677070364A5A76724B514C6A6676507A69444B584B74697A4E7068557A356A635A682F4B2F4B4457414439376F5A7778613435432F6E41696E4258564C30675753353833626C7732686B77536E4B6139536A794A49626144396D53623234704E687861757559526379427379346A38517231683253703350337A2F4143684C7A503841696E457669562B73587338366442492F63694370612B6A367579456B50657A6C514A626C32774B6D68496D71306B6B50596B4D664A79336E4257716E465741796B6B6851415357424C6F4274737A585962486965634349453658764D7549657A3472702F6C694A2F6D39596D7A4A595367456B365352754F4C2B6F3859644D7A68483970316D5953414A435347346D396F534D5251616958657A4D516549652F4873614B4A527133394E2F543176792F674E6F5A53707970626B756C397244394F32386563577251744B674C70534E682F70732F6E4241705452534672346C4A5A54577443387563716649577465366C6E62362B4A6A6948655A314867503555776B54734C494B62726D755A6A374A4676742B634768685576447A4D43464B49555836322F64596252796F4A686F634D6B6F4667456878322F7742586A353763535338614970486E4D755763725638485832653049325A2F78566958784B2F5748695857416945664D393831596E385376316735555A6C5A394C784C703842364967395651306B4F7A586656646E37514F6344594F7A4B6C5650674943544D51516C42505755515571325038494436685A75473934425141525A4D3556426C356E5747743053495735374C3652546E63466A35647868747A645147666A6931414B39784F774C517554614A5955426F5566412F6C464D6E7962644E6B37556B37414F4E7A784B77386F534E4A4E7474337554792F563431354B7743566A6D5A4A556D61366B435271594854634D5274333752677857686E565535414574624A577847676A6276384170444E2B7A756C56515A676D54466A53544B586559365277347445586B3336724E485936593059376C366B776D6B535369596F7155775A5249666539785A6E4C5077614F65475A636F71796A314C43705A31456156546274774A765A78667867765734696D704B4571564C4C462B717533337662756A6769716C79796D344A74757478627867376C66675338556530354670474442663841374D512F4E69644F623856482B376D6573666F435869776D79797970517577314C6149426D322B634D572B4C6D65706777546254306171764C36456B71306E5470536C4B57314F6574373776774A50434635637379706842424247344D455A6D4D61384B6C7977344B57306C5056626D43526337664D774E556F7255535335356D49512F2F396B3D);
INSERT INTO `person` VALUES ('ff8080813e78fd41013e78fec4aa0000', 'kaiz', '12345', 'kaiz@email.com', '1', 'MR', 'Kira', 'Kun', '1998-05-14 00:00:00', '1', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B474267674742525549427851554652514B47534561475267594678346449426F664679516E49423067486830624853596B4843496A495234634A43386B4A7963704C697777485234394E544132506959724C436B4243516F4B4451734E4751344F4754556B486951754E5455314E6A55314D44517A4C5455304E5451314E5455314E4451314C7938784E5330734C7A55734C4451304C4455714C4338794E4451314E4451734E4451794C502F41414245494146414155414D4249674143455145444551482F7841416241414142425145424141414141414141414141414141414641674D454267634141662F45414473514141454441675143434151444267634141414141414145434178454542514153495445475151636955574678675A4768457A4A433052537877534D6B4D314A7938425644596D4F43302F482F7841415A415141444151454241414141414141414141414141414143417751464141482F784141714551414341514D4342415546415141414141414141414142416741444554455349515154516641694932477877554A525571487846502F61414177444151414345514D52414438416E634330434B323946357761557163772F714A67656D7038734379756F3431343863645957744C564B597A416B51684D675A535071557153443973515775494B3278304C7171465148786B7764416532496E59696364614C35583253315A615A4B4D7A304B50554849616569522B65454B51424E536D54545671677A67664D733964777453494837706D54484C63414466513636654F4246525A586D5443564A50742B654C54774456566439754472315A6C4C6243636D69596C546D34386B6A582B73597148457264797464795851564B31537963795641664D6E365644746B534433673445326B6F4A76476E4B5A357235687433345A7A345A716E48574B6A344C2F7A4B45677A6F5A45704950596F4752353877526870743954724D7030554E4E65522B324174446B76506A776B4B3335595962634B6D6770596A4D4E7662394436484347366A4D345731364B54376A74474F6E74357A7A79307241574153334A536F4A367975616B7149333035376E513638705158496B6338524B746F564E4F55656D4737613476384142424C67676F303875587447444F34764B48504D7068756F325078453152557049534F5A2F76384158426E3454503452327057554A464979456A4D6F4A426363304770504A4F632B6E6267533668644F38706C3451706F6C4B6833704D4833474C4261654A4765464B37385137547066636251674E6C53347946517A4F4649794B31555641534F535272474352645567723851555655454A5762696A685377576F55363636716E356C6C704B6B6F7A4B33672F443141324538734F564E35345534776454544975427A4A6E4C385A417A416E2B565A435A424D536B6B67386F4D4844692B6D367162564439454950384176482F726A47643338304639346A585632356A344C6452427961514652316F6A51416E585959647978496A57493344532B565041747A71726362645549436C30665870336B487172544D71614A33515A4D6F6B47435644626366626243743138554E59436C46662F4141583870684C672B6C592B6D594B56494A30556B455471535A365075493632323255556453302B2B687465554B51416F6F5352494242494A45794E4E744D50386338535664585931557445792B77687853557155734242574642525542426B6241456E664E674F55622B6B496359756E316C5262646F4B4E316473766451684B57436F704C4D4F6C4B7A413179676B6F4D61706B616A616468483475307272556F667155496855465756594953647A436B646D73632F504636702B6C63575A67554E706F456F625945424963496A3062315076675078643067306E476C6756513174494575677932344841724B5A45376F4241496B524A6E544263736661647A7A2B55446C7451612B4B677057676D4174426C4A3844796E6544423773526D7955756B63763750362B32492F443147756E754754366167467453664564556B646F55427234344D635032722F48723469677A3541354A4B6F6D416B5359486268627270784B754734677347553939326850704A74787433474B33514F7257674F44782B5658755063596570714158473374315947727142367047552B3666664672365272457135384E46396A5656424B774F65583677504C575039497749364F796D35384D71707871716A575948616C6657486F5A776165427247536354357450576E53564A4E71667147416C576F5270484D486D446958624C417075714F305A645935476441652F6646386534647071687A346967515475556B6966474D544C6259476B454962544355372F3841764D6E44735A6D57474C4779356B6E68433070746C6E456A7250484E39734F385532784E7A73696B5271694644797753655757577745446D4234444377704C6959784E723856357366352F4A3064332F414C4D61756C73645965517072535A48644A326E783177504E675775564F516E636B6E4771334B784E6B6C43784B484F3341397268716C5A634467436A6C327A4B4A41384163556A666354484C465351325A556D725561573247706354316D47796F2B4B52707233474D4E3946704C6E4841412F793231483167597531366F50772F4339516F6A56544B7A34444B59392F7741735A62772B39634C64646B7274674A6372573141414354456B474F2B45346E716D35326D7477615751733358326D38454169447A786C6E426270346336536E375079634A43423235446D51504E424978716D4B5A627259697236566179706353436C687476795763716766455A54363464555856614C6F746F764C716C444C796338417A33444467454342694D557151764F316F54763248782B2B4845314B646E4F71652F62313277686C4B356C4E4D6F3236356958613170687A4C55536B636C4564552B59323834776C4677596457455538726E2B556144764A322F584572636159384A6753634C6A3772624837373935322B6D47314A5A5A476367434F374356564B546F31317679396674684151564C7A75366B65673850766869717A596B39516F4E327A416E474B335538485642624572714535456A7663495342373470746E7337394878366C2B6C546D5A73356270316B62677152316C527A4764514A374D7737446A52626B3230614D75764A4B68546674416C4D795333714241333132486247494843567065744E6B2F66503431577054727639626D70482F456165574836426343494654596B39595A77323154744D4C55706F414634356C527A4F306E7941394D4F343744497165596833533730566D6F46566C77574574732F4D6454456D4E6834346750635A574E71366D337650705170737770526B4A424830353479672B656D4663627373316E5233567051556C4B6D466B454551636F7A44575933413534366F47706B4231494237326A55703668653866736C36745845414C746E64533468487A5A43524235534442477835596C566A6A46434337566D454A6A724B6B6763767A2F5047636443537151567455797947737A62624F7155516F3567724E6D2F614C54456748716D4E6557776E644F4653797268786D334B67717158436F44346D55674E706B6E4B59437872454567535269617735676C503057764C3078585531532B74686C514B716335566A55464A4942414D6763694435346B597A2F6F50706D36626F312F455051412B3674524A30414359544D6E626266466C702B4D4C492F64786257486B725773776B69536B6E2B554C6A4B56654231785771757A454B704E704D314F7776654738646A7364675971662F32513D3D);

-- ----------------------------
-- Table structure for `person_role`
-- ----------------------------
DROP TABLE IF EXISTS `person_role`;
CREATE TABLE `person_role` (
  `PERSON_ID` varchar(32) NOT NULL,
  `ROLE_ID` int(10) NOT NULL,
  PRIMARY KEY (`PERSON_ID`,`ROLE_ID`),
  KEY `PERSON_ROLE_FK_1_INDEX_6` (`PERSON_ID`),
  KEY `PERSON_ROLE_FK_2_INDEX_6` (`ROLE_ID`),
  CONSTRAINT `PERSON_ROLE_FK_1` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`ID`),
  CONSTRAINT `PERSON_ROLE_FK_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of person_role
-- ----------------------------
INSERT INTO `person_role` VALUES ('0000000000000000000000000000001', '1');
INSERT INTO `person_role` VALUES ('0000000000000000000000000000004', '1');
INSERT INTO `person_role` VALUES ('0000000000000000000000000000001', '2');
INSERT INTO `person_role` VALUES ('0000000000000000000000000000002', '2');
INSERT INTO `person_role` VALUES ('0000000000000000000000000000003', '2');
INSERT INTO `person_role` VALUES ('0000000000000000000000000000004', '2');
INSERT INTO `person_role` VALUES ('2c9737853e7d7f8c013e7d81ee040000', '2');
INSERT INTO `person_role` VALUES ('402881093e7fdc1b013e7fe2f1c40000', '2');
INSERT INTO `person_role` VALUES ('ff8080813e78fd41013e78fec4aa0000', '2');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(255) NOT NULL,
  `ROLE_DESC` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_UNIQUE_1_INDEX_2` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_ADMIN', 'ROLE_ADMIN');
INSERT INTO `role` VALUES ('2', 'ROLE_USER', 'ROLE_USER');
