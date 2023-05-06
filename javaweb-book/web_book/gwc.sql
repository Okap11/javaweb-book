/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : gwc

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 25/04/2023 21:40:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gwc_book
-- ----------------------------
DROP TABLE IF EXISTS `gwc_book`;
CREATE TABLE `gwc_book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` int NOT NULL DEFAULT 0,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `press` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `abstract` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gwc_book
-- ----------------------------
INSERT INTO `gwc_book` VALUES (1, '父母效能训练手册', 74, '戈登', '天津社会科学院出版社', '《父母效能训练手册:让你和孩子更贴心》父母效能训（P.E.T.）由美国著名心理学家托马斯•戈登于40多年前创立，是美国第一个全国性的父母训练教程，向父母传授与孩子有效沟通的技巧，并循序渐进地提出建议，以解决家庭冲突，让每个人在冲突中都赢。', 1, 'https://up.bookresource.net/up/fa/aa/78/faaa78377447e90007a462cc41d5c3a2.jpg');
INSERT INTO `gwc_book` VALUES (20, '打造儿童阅读环境', 12, '[英] 艾登·钱伯斯', '南海出版公司', '《打造儿童阅读环境》为常年与儿童、图书打交道的老师和家长而写，它能有效地帮助你规划、建立一个让孩子能快速进入状态的阅读环境，学习、实践一种让孩子与别人分享阅读并拓展个人阅读的方法。', 1, 'https://up.bookresource.net/up/67/2b/b6/672bb651b52457679c6c333c78a64e35.jpg');
INSERT INTO `gwc_book` VALUES (21, '孩子,把你的手给我', 49, '[美] 海姆·G.吉诺特', '京华出版社', '大多数父母没有意识到语言的破坏力量。他们发现自己说出来的话正是以前自己的父母对他们说过的，发现他们正用一种自己也不喜欢的语气跟孩子说话，他们原本没打算这样的。', 1, 'https://up.bookresource.net/up/47/b6/7c/47b67ce8ea8533606ea5d46870b1d6dc.jpg');
INSERT INTO `gwc_book` VALUES (22, '耶鲁大学公开课:死亡', 49, '[美]谢利·卡根', '北京联合出版公司', '在这本通俗易懂的哲学著作中，谢利·卡根教授挑战了对于死亡，许多我们习以为常或未经深思的观点，邀请读者系统反思死亡的哲学之谜，以更清晰的概念探讨死亡的意义为何，从形而上学到价值观，认真、理性地思考生命和死亡的真相。', 1, 'https://up.bookresource.net/up/f2/76/e0/8a65bddf504eb0aefa51c1ec96e076f2.jpg');
INSERT INTO `gwc_book` VALUES (23, '做孩子一生的贵人', 25, '蔡礼旭', '团结出版社', '《做孩子一生的贵人》是蔡礼旭老师近年来最热门的传统文化讲座之一，在出版之前，已经有大量的光碟流通，不少学校组织老师、学生和家长观看，收到的热烈的欢迎。', 1, 'https://up.bookresource.net/up/39/14/21/0832008493c4d665dc8850623a211439.jpg');
INSERT INTO `gwc_book` VALUES (24, '耶鲁大学的公开课', 31, '吴涵', '陕西师范大学出版社', '本书收录了耶鲁大学公开课中最热门的五门课程——《金融市场》、《欧洲文明》、《全球人口增长问题》等，涉及了经济、哲学、文化、社会等问题。', 1, 'https://up.bookresource.net/up/19/f1/60/e4ef6bc3396d7cd0a48ef10f8760f119.jpg');
INSERT INTO `gwc_book` VALUES (25, '数学沉思录:古今数学思想的发展与演变', 51, '[美]李维(Mario Livio)', '人民邮电出版社', '数学无处不在，无所不能。它渗透在所有领域，能解释宇宙万物，完全超越了人类的能力。本书按照数学关键概念的演化过程来组织结构，引经据典地从哲学角度全方位阐释数学的本质，以及数学和我们的物质世界、人类思维之间的关系。', 1, 'https://up.bookresource.net/up/50/65/ae/31750d5d3163d9f7c4dd49e653ae6550.jpg');
INSERT INTO `gwc_book` VALUES (26, '数学分析八讲', 25, '[苏] А. Я. 辛钦', '人民邮电出版社', '短短八个讲座，让你不仅了解数学分析的概貌，更让你领会数学分析的精髓。这本由伟大的数学教育家辛钦潜心编著的经典教材，思路清晰、引人入胜，全面梳理了数学分析的主要内容。', 1, 'https://up.bookresource.net/up/5f/bf/1b/df0e6e53a9bd6061b7067d7a8c1bbf5f.jpg');
INSERT INTO `gwc_book` VALUES (27, '哈佛非虚构写作课:怎样讲好一个故事', 40, '马克•克雷默 (Mark Kramer) / 温迪•考尔 (Wendy Call)', '中国文史出版社', '《哈佛非虚构写作课:怎样讲好一个故事》是由全球久负盛名的哈佛大学尼曼基金会集聚全美杰出新闻记者和非虚构作者，分享他们独到的创作经验。', 1, 'https://up.bookresource.net/up/ac/7f/3f/68881b9ffc2a9ba321728fb9133f7fac.jpg');
INSERT INTO `gwc_book` VALUES (28, '快速阅读力训练手册', 38, '沃尔特·皮特金', '中国发展出版社', '这是一本对每个人来说都可谓开卷有益的书，人人都可从中找得到自己所需要的东西。无论你平日只阅读一些报纸，无论你是一家出版社的编辑，你都可以从阅读此书中得到启迪。它将帮助你读破万卷书，获得渊博的知识。', 1, 'https://up.bookresource.net/up/ad/a5/23/d1e82c0556b26163f5017dcf6123a5ad.jpg');
INSERT INTO `gwc_book` VALUES (29, '醉汉的脚步', 82, '[英] Leonard Mlodinow', '湖南科学技术出版社', '《醉汉的脚步》带给你的。不仅是在随机性、偶然性和概率中的一次漫游，还是一个看待世界的全新视角。它同时提醒着我们，生活中的许多事情。大致就如同刚在酒吧待了一夜的家伙那蹒跚的步履一般难以预测。', 1, 'https://up.bookresource.net/up/4a/6b/fa/f3450386c3f4b63b92ace51535fa6b4a.jpg');
INSERT INTO `gwc_book` VALUES (30, '规矩和爱', 46, '王涛', '北京理工大学出版社', '不依规矩不成方圆，这句中国的老话正在被越来越多的现代心理学和教育学研究所验证。所谓做规矩就是设定界限遵循规矩,即使在崇尚个人自由的美国，无论是科学的杂志还是通俗的育儿必读都强调要给孩子从小设定界限......', 1, 'https://up.bookresource.net/up/98/63/64/5c44ed828c24deedd706b7d612646398.jpg');
INSERT INTO `gwc_book` VALUES (31, '看穿一切数字的统计学', 86, '[日] 西内启', '中信出版社', '《看穿一切数字的统计学》，一点儿也不无聊的统计学入门书，不用艰深的数学式，就能理解统计学的基本概念，用故事点出主题，让你学得透彻，看得过瘾。学会统计学，看穿一切数字背后的真相！', 1, 'https://up.bookresource.net/up/29/1b/1e/b27de59e3581fec34f6b60dc061e1b29.jpg');
INSERT INTO `gwc_book` VALUES (32, '我想遇见你的人生', 67, '杨照', '广西师范大学出版社', '本书以类似对话、日记、独白的散文诗形式抒写父女俩日常生活中的点点滴滴和人生感悟。这不是一个人的创作，是父亲、母亲、女儿，一家三口，共同创作了独一无二的互动文本，爱是弥漫其中的内核。', 1, 'https://up.bookresource.net/up/8b/5a/04/8b0eb40797428be6815a843a53045a8b.jpg');
INSERT INTO `gwc_book` VALUES (33, '结构思考力', 84, '李忠秋', '电子工业出版社', '本书的核心理念源自芭芭拉﹒明托的《金字塔原理》，运用更符合中国企业及中国人的特点进行诠释。', 1, 'https://up.bookresource.net/up/09/81/4e/3325a70d40071d69f78e49a6d04e8109.jpg');
INSERT INTO `gwc_book` VALUES (34, '谁了解孩子成长的秘密', 30, '李跃儿', '广西科学技术出版社', '《谁了解孩子成长的秘密》是儿童教育专家李跃儿把西方主流教育思想应用于东方儿童教育的全面总结，是帮助父母从本质上认识自己的孩子，了解孩子成长规律，把握系统爱育方法的通俗读物。', 1, 'https://up.bookresource.net/up/ed/99/05/56e0929bec81f909ec57f514cf0599ed.jpg');
INSERT INTO `gwc_book` VALUES (35, '去情绪化管教:帮助孩子养成高情商,有教养的大脑', 27, '丹尼尔•西格尔 / 蒂娜•佩妮•布赖森', '机械工业出版社', '\"本书为家长指出一个有效又有爱的管教方式：通过爱与欢声笑语，而不是严厉训斥，来获取对于孩子更为有效的约束效果。', 1, 'https://up.bookresource.net/up/5d/0c/f4/0c022e8c24d0584663076d0c6df40c5d.jpg');
INSERT INTO `gwc_book` VALUES (36, '儿童的人格形成及其培养', 13, '[奥地利] 阿德勒', '河北人民出版社', '本书围绕如何帮助儿童形成一个正常、健康的人格这一问题，提出了一个全新的教育理念，着重强调要用正确的方法帮助培养孩子的独立、自信、勇敢不畏困难的品质，以及与他人合作的意识和能力。', 1, 'https://up.bookresource.net/up/0f/e6/96/b121158555b5dcc9b646c4108e96e60f.jpg');
INSERT INTO `gwc_book` VALUES (37, '逻辑思维训练500题', 66, '于雷', '中国言实出版社', '现今社会，逻辑思维能力越来越被人看重。不仅考MBA有逻辑题，而且公务员考试也开始加试逻辑测试题。此外，在一些跨国公司的招聘面试中，这类逻辑能力训练题目更是经常出现...', 1, 'https://up.bookresource.net/up/34/53/48/22c1e32638815ec372aa492227485334.jpg');
INSERT INTO `gwc_book` VALUES (38, '学会生存:教育世界的今天和明天', 40, '联合国教科文组织国际教育发展委员会 编著', '教育科学出版社', '联合国教科文组织自成立以来，始终致力于通过教育、科学和文化的国际交流合作，促进人类和平与发展。在教育领域，联合国教科文组织出版的一系列重要著作成为指导各国教育事业发展的重要纲领。', 1, 'https://up.bookresource.net/up/5e/46/0d/c065bad8dd5b2d2f771ad56a290d465e.jpg');
INSERT INTO `gwc_book` VALUES (39, '心灵的觉醒:理解教师叙事探究', 87, '吴国珍', '北京师范大学出版集团', '教育心灵旅程就是那永恒之神向教师抛来的东西，像条蜿蜒幽深的小径，若隐若现于无疆之域，非任何科学探针可触及其爱与善、美与圣、灵性与超越。', 1, 'https://up.bookresource.net/up/f6/45/68/952aed6b1937456193cbf1026f6845f6.jpg');
INSERT INTO `gwc_book` VALUES (40, '复盘:对过去的事情做思维演练', 75, '陈中', '机械工业出版社', '复盘是围棋中的一种学习方法，指的是在写完一盘棋之后，要重新摆一遍，看看哪里下得好，哪里下得不好，对下得好和不好的，都要进行分析和推演。', 1, 'https://up.bookresource.net/up/09/05/01/ee3d2defdf6679d170be27bf38010509.jpg');
INSERT INTO `gwc_book` VALUES (41, '刻意练习:如何成为一个高手', 62, '[美] 道格•莱莫夫/艾丽卡•伍尔韦/凯蒂•叶兹', '中国青年出版社', '刻意练习是一种简单到极易被人忽略，却又无比强大的成功模式！练习极简单，又极复杂，每个渴望进步的人，无论从事什么行业，无论是领导者还是员工，都希望掌握练习的方法，抓住练习的规律，以把事情做到极致。', 1, 'https://up.bookresource.net/up/37/73/50/29a3c793f8cda9c16cb89b3181507337.jpg');
INSERT INTO `gwc_book` VALUES (42, '最强大脑:写给中国人的记忆魔法书', 31, '王峰/陈林/刘苏', '北京大学出版社', '世界记忆大师王峰和他的团队，将高效的记忆方法，做了最新、最权威的总结，并将这些方法巧妙地与中学各学科的知识点结合起来，让你在学习语文、英语、政治、历史、地理、物理、生物等学科时更轻松，更省力，快速提高考试成绩。', 1, 'https://up.bookresource.net/up/26/a5/0b/cbaf349e86bb9ddc76a15136ee0ba526.jpg');
INSERT INTO `gwc_book` VALUES (43, '大脑勇士', 83, '(美)丹尼尔•亚蒙(Daniel G. Amen) / 塔娜•亚蒙(Tana Amen)', '湛庐文化/浙江人民出版社', '你是否经常因为自己的拖延、低自控力、容易抑郁、冲动、偏执、愤怒而烦恼？', 1, 'https://up.bookresource.net/up/69/da/47/69a1e2c8e9788b176b00ecca2647da69.jpg');
INSERT INTO `gwc_book` VALUES (44, '孩子是个哲学家', 52, '[意]皮耶罗•费鲁奇', '上海社会科学院出版社', '《孩子是个哲学家》是一本写给天下父母亲的书。', 1, 'https://up.bookresource.net/up/ca/e4/4f/a8df9c375f81af2d126c8383824fe4ca.jpg');
INSERT INTO `gwc_book` VALUES (45, '宝贝,宝贝', 45, '周国平', '江苏人民出版社', '当年的《妞妞》，以哲学的悲恸感动了无数人，几乎所有的父母都不忍却又忍不住去读她。', 1, 'https://up.bookresource.net/up/07/03/a8/47a1e75fa26cdf7213833da3efa80307.jpg');
INSERT INTO `gwc_book` VALUES (46, '孩子是如何学习的', 22, 'John Holt', '陕西人民美术出版社', '《孩子是如何失败的》(畅销美国200多万册的教子经典)注重的是描述有效的学习方式，而不是注重于解释或者给出一个学习的理论。', 1, 'https://up.bookresource.net/up/ba/74/44/845e384d05bca6aef91cfd46234474ba.jpg');
INSERT INTO `gwc_book` VALUES (47, '游戏心理学', 12, '陈京炜 著 / 何晓抒 插图', '中国传媒大学出版社', '《游戏心理学》是数字游戏设计专业基础理论教材。', 1, 'https://up.bookresource.net/up/76/c5/df/fe2b5a517323e37eca8fd043d7dfc576.jpg');
INSERT INTO `gwc_book` VALUES (48, '新闻学概论(第3版)', 18, '李良荣', '复旦大学', '《新闻学概论(第3版)(新世纪版)》是《新闻学概论》被教育部列为“十一五”国家级规划教材，并被评为国家级精品课程后，作者进行修订后的第3版。', 1, 'https://up.bookresource.net/up/16/99/6e/b428524a004473a0fe11d2466e6e9916.jpg');
INSERT INTO `gwc_book` VALUES (49, 'HIPPY计划：以家庭为中心的澳大利亚学前教育', 37, 'Avima Lombard', '中文科技期刊数据库', '这是一个关于澳大利亚政府扶持的HIPPY学前教育计划书，书中为读者介绍了关于一些学前教育的经验分享。', 1, 'https://up.bookresource.net/up/73/0e/d9/75664b824d8b7b2ebe40c17b2bd90e73.jpg');
INSERT INTO `gwc_book` VALUES (50, '从小读到大', 95, '尹建莉', '长江文艺出版社', '\"“阅读是父母给孩子的*宝物”', 1, 'https://up.bookresource.net/up/ca/e1/5b/2957f018c56dec40799286cea05be1ca.jpg');
INSERT INTO `gwc_book` VALUES (51, '分心的孩子这样教', 70, '[美] 爱德华•哈洛韦尔 / [美] 彼得•詹森', '山西教育出版社', '孩子，你能不能不丢三落四、不磨磨蹭蹭，老实坐一会儿？你为什么不能像其他孩子那样乖乖的？我该拿你怎么办？', 1, 'https://up.bookresource.net/up/7c/6e/d6/1fbf6658db414bfc76174633c2d66e7c.jpg');
INSERT INTO `gwc_book` VALUES (52, '自适应学习', 71, '李韧', '清华大学出版社', '本书可作为高等院校教育学、教育技术、计算机高年级本科生、研究生的教材，也可作为广大教育科技工作者和教育管理者的参考用书。', 1, 'https://up.bookresource.net/up/b0/a7/c3/d3fa74e55d8032046f7c5016c5c3a7b0.jpg');
INSERT INTO `gwc_book` VALUES (53, '与童年创伤和解', 47, '秋丽安·斯莫尔', '中国友谊出版公司', '许多成年人未解决的童年依恋创伤往往会影响其自我认同。', 1, 'https://up.bookresource.net/up/25/28/1d/5910a6a5cd9b4254a375a252b51d2825.jpg');
INSERT INTO `gwc_book` VALUES (54, '你的4岁孩子', 55, '玉冰', '江西科学技术出版社', '\"郑重地向所有的家长们推荐这套路易丝·埃姆斯等编著的《全球阶梯教养圣经(共3册)》，这是迄今为止对家长育儿最有帮助的书；郑重地向老师们推荐这本书，因为有了这本书。忙碌的老师们就再也不用为发展心理学中的那些生涩的字词而头痛了。妈妈和老师不想成为理论研究者，他们只想在帮助孩子的同时懂得孩子。他们只想知道一个两岁的孩子眼皮都不抬地乱扔东西是否正常：他们只想知道当孩子乱扔东西时，他们该怎样帮助孩子。', 1, 'https://up.bookresource.net/up/12/a8/c4/98debe4d249973a108abe18bb1c4a812.jpg');
INSERT INTO `gwc_book` VALUES (56, '大J小D新书 打造儿童超级大脑', 33, '大J 著', '中国妇女出版社', '每天只需半小时，您就能让孩子更乐观、更自信！快快翻开《大忙人这样陪孩子,半小时胜过一整天》，让美国资深育儿专家手把手教您掌握高效育儿技巧吧！其实，只要掌握陪伴技巧，大忙人也能事半功倍，轻松教出乐观、自信的孩子。《大忙人这样陪孩子,半小时胜过一整天》专为大忙人设计，书中的方法科学、简单、易操作。用这样的方法陪孩子，大忙人的陪伴质量立刻提升，轻松拥有温馨家庭：大忙人专用育儿宝典，迅速拉近您和孩子的心灵距离，巧妙激发孩子的自觉性！\"', 1, 'https://up.bookresource.net/up/bf/19/bf/b13602d588470978af5cbee38ebf19bf.jpg');
INSERT INTO `gwc_book` VALUES (57, '学习树:系统解决孩子学习问题的新思维', 74, '斯坦利·格林斯潘 (Stanley I. Greenspan) / 南希·桑代克·格林斯潘 (Nancy Thorndike Greenspan)', '浙江人民出版社', '\"好的老师是父母，好的早教在家庭。儿童的早期教育和潜能开发问题越来越受到家长和社会各界的重视，家长们通过订阅育儿类公众号、上早教班和兴趣班、参加夏令营、国外游学等多种形式，致力于培养高智商、高情商的孩子。但很多情况下，家长做出这些决定是因为周围的人都这么做，所以自己也跟风这么做。', 1, 'https://up.bookresource.net/up/f4/34/a0/b77fabde08530b1910915482c5a034f4.jpg');
INSERT INTO `gwc_book` VALUES (58, '人的教育', 73, '福禄培尔', '人民教育', '但是作为家长，你是否从一开始就知道把自己的孩子培养成什么样的人？是否从一开始就对孩子未来的发展设计好了蓝图？本书正是出于这个目的——为家长提供全面、科学、系统的全脑开发知识体系，让家长在了解孩子大脑发展规律的前提下，有针对性地培养孩子的语言能力、思考能力、质疑精神、专注力、记忆力等16种关键能力，为打造高情商、高智商的孩子做好充分的准备。', 1, 'https://up.bookresource.net/up/82/2d/88/a79e5df9cd20c4e0d450ca6224882d82.jpg');
INSERT INTO `gwc_book` VALUES (59, '特别的女生撒哈拉', 91, '爱斯米·科德尔', '陕西师范大学出版社', '本书不是高高在上的理论堆砌，更不是假大空的鸡汤，而是一本所有父母都能理解、每个家庭都能上手实践，而且具有坚实理论支撑的完整知识体系。\"', 1, 'https://up.bookresource.net/up/36/29/a6/e1135cd55c17ef547f286efd4ba62936.jpg');
INSERT INTO `gwc_book` VALUES (60, '科学学习', 31, '【美】丹尼尔 L. 施瓦茨（Daniel L. Schwartz） / 杰西卡', '机械工业出版社', '\" 随着年龄的增长，每个人思维能力的发展都经历了9个层层递进的过程。无论在哪一层次出现问题，都会给下一层次的发展带来阻碍。这9个思维层次分别：注意世界、参与世界、互动与交流、共同解决问题、利用有意义的想法、逻辑思维、多因素思维、比较/灰色地带思维和反思性思维。', 1, 'https://up.bookresource.net/up/7b/5e/ec/bff6f06288ddb077b6a462f170ec5e7b.jpg');
INSERT INTO `gwc_book` VALUES (61, '如何唤醒数学脑', 53, '[日] 永野裕之 著', '北京时代华文书局', ' 学习树的树根代表儿童吸收信息和制定行动计划的各种不同的方法；学习树的树干代表思维能力，即日益复杂的思维方式的发展；学习树的树枝代表阅读、数学、口语表达、写作以及组织能力等基本的学业技能。', 1, 'https://up.bookresource.net/up/d9/ae/44/58ea89007761317996dbc1886344aed9.jpg');
INSERT INTO `gwc_book` VALUES (62, '学习的科学', 75, '爱德华·D.赫斯', '中国青年出版社', ' 我们身体的感觉系统每天都在接受各种纷乱复杂的外部信息，但是不同孩子对同一信息的理解可能完全不同。', 1, 'https://up.bookresource.net/up/a2/17/7b/0b7fc295c705866fd4fa5ce1ab7b17a2.jpg');
INSERT INTO `gwc_book` VALUES (63, '战略与结构', 83, '[美] 艾尔弗雷德·D.钱德勒', '云南人民出版社', ' 解决学习困难的关键在于能充分调动孩子的情感，激起他们的兴趣，然后再在此基础上反复练习各种思维能力。无论是寻宝游戏还是类比举例，最终都是为了给孩子设置他们熟悉或令他们感兴趣的情感环境，使他们自然而然地参与其中学习。\"', 1, 'https://up.bookresource.net/up/af/01/22/af0122aa15341c011f55e2e5dc5fd2ad.jpg');
INSERT INTO `gwc_book` VALUES (64, '中国改革三步走', 47, '[新加坡] 郑永年', '东方出版社', '《人的教育》一书是一本著名的教育论著，作者福禄培尔是德国著名的教育理论家和教育实践家，近代学前教育理论的奠基人，被称作“幼儿教育之父”。他的关于学前教育的理论和实践活动，是他一生活动的主要方面。《人的教育》就是一部泛论儿童时期学前和学校教育的书。书中，福禄培尔主张教育要适应儿童的天性，反对强制性教育和压制儿童的发展，重视儿童积极活动和发展儿童个性以及强调早期教育的重要意义，主张人的一切发展阶段教育的连续性等。', 2, 'https://up.bookresource.net/up/42/f9/b2/09dac030dd8dbf57484cd5d8c2b2f942.jpg');
INSERT INTO `gwc_book` VALUES (65, '简化', 34, '[美]卡斯·桑斯坦（Cass Sunstein ）', '中信出版社', '萨哈拉？呵呵，这不是地名，是人名！这个女孩心中的秘密象撒哈拉沙漠那么大、那么宽。在学校，在老师同学眼里，她是一个需要“特别的帮助”的笨学生，她不写作业，不开口读书，不学习。但是实际上，萨哈拉热爱阅读，疯狂地喜欢写作，甚至还写了一本属于自己的书，偷偷地藏在图书馆里，期望有一天有人能看到自己的作品。萨哈拉本以为“真正的自己”只有最好的朋友瑞秋才知道，直到一个“行为怪异”的波迪老师成了她的新老师，崭新的生活也在萨哈拉面前展开，一场奇妙的旅程就这样开始了……', 2, 'https://up.bookresource.net/up/e0/8a/86/8b74ab2b8c135fb6b987398bf0868ae0.jpg');
INSERT INTO `gwc_book` VALUES (66, '民粹主义大爆炸: 经济大衰退如何改变美国和欧洲政治', 94, '[美] 约翰·朱迪斯', '中信出版集团·见识城邦', '\"本书领衔作者施瓦茨教授是斯坦福教育学院院长、学习科学领域专家，开设过18门学习相关的课程，本书源于其在斯坦福开设的一门广受欢迎的经典学习课。', 2, 'https://up.bookresource.net/up/5e/66/1d/160d28d55f463aea6626dd5ffa1d665e.jpg');
INSERT INTO `gwc_book` VALUES (67, '谁统治美国？公司富豪的胜利', 69, '[美] G. 威廉•多姆霍夫（G. William Domhoff）', '外语教学与研究出版社', '精炼：根据多年科研、教学和实践经验，作者以学习科学领域成千上万的文献资料为基础，提炼出有代表性、较为成熟、实证有效的26种学习法则，以26个字母的顺序呈现出来。\"', 2, 'https://up.bookresource.net/up/d9/dd/09/1e8a18984cabdf5b2bdb17700809ddd9.jpg');
INSERT INTO `gwc_book` VALUES (68, '平等何时重要:为什么不平等至关重要', 93, '[美]托马斯·斯坎伦', '中信出版集团', '每个人天生都有数学力，有着内建的“数学式思维模式”，若能有效发挥，就能在学校、职场、人际关系中表现出来，从容不迫地获得更好的效率及成就感。但这种思维模式会受到周围情境、心理状态等因素的影响，总是“灵光一闪”、“无意识”地显现，让我们难以掌握，在必要时反而无法使其发挥作用。', 2, 'https://up.bookresource.net/up/d3/74/37/8cb6b148f8accc65ce2c4955843774d3.jpg');
INSERT INTO `gwc_book` VALUES (69, '暴政', 55, '提摩希・史奈德', '中信出版集团', '\"《学习的科学》讲的是如何学习，从个人和组织的角度审视了学习过程和学习方法。', 2, 'https://up.bookresource.net/up/02/b9/e4/387f773f6f50d41ccb970e9611e4b902.jpeg');
INSERT INTO `gwc_book` VALUES (70, '实践理性批判（注释本）', 57, '[德] 伊曼努尔·康德', '中国人民大学出版社', '《学习的科学》将神经科学、心理学、行为经济学和高效企业的*案列相结合，打造了一幅极具操作性的学习路线图。\"', 2, 'https://up.bookresource.net/up/43/8d/f9/cb03db6cd42f73821b975124a7f98d43.jpg');
INSERT INTO `gwc_book` VALUES (71, '无处可藏', 70, '[美]格伦·格林沃尔德', '中信出版社', '《战略与结构》是2002年10月云南人民出版社出版的图书，作者是艾尔弗雷德·D.钱德勒。', 2, 'https://up.bookresource.net/up/d4/6b/5a/fb36decf8fcd1c34af2e05bae05a6bd4.jpg');
INSERT INTO `gwc_book` VALUES (72, '我是谁？如果有我，有几个我？', 24, '[德]理查德•大卫•普列斯特（Richard David Precht）', '会科学文献出版社·甲骨文', '《中国改革三步走》作为一项系统的历史工程，任何改革都具有历史连续性。对改革问题的研究必须回答“从哪里来，到哪里去”的问题。再者，改革既具有系统性，也必须具有阶段性。改革具有系统性。', 2, 'https://up.bookresource.net/up/11/6d/44/fa8a0571c40ca271dc925a9cd6446d11.jpg');
INSERT INTO `gwc_book` VALUES (73, '为什么不平等至关重要', 66, '[美]托马斯·斯坎伦', '江苏教育出版社', '哈佛哲学教授，教我们如何对抗996，应对不平等。作为罗尔斯、内格尔同道。左右当代哲学进程的一代哲人，斯坎伦揭露了贫富差距的凶手，给“为什么不平等至关重要”一个说法。', 2, 'https://up.bookresource.net/up/d3/74/37/8cb6b148f8accc65ce2c4955843774d3.jpg');
INSERT INTO `gwc_book` VALUES (74, '西方政治思想的社会史：公民到领主', 33, '[美]艾伦·梅克辛斯·伍德 (Ellen Meiksins Wood)', '中国妇女出版社', '提摩希‧史奈德（《黑土》作者、知名历史学家）：捨弃事实就是捨弃自由。现实世界并没有「成人」。我们得自己收拾残局。自20世纪提炼出的20则历史教训！不分阶级、行业、领域，永久受用！', 2, 'https://up.bookresource.net/up/7d/9c/47/e80df2074896ddc0d53721c347479c7d.jpg');
INSERT INTO `gwc_book` VALUES (75, '民粹主义大爆炸', 74, '[美] 约翰·朱迪斯', '浙江人民出版社', '由中国人民大学哲学院教授李秋零主编、主译的《康德著作全集》（9卷本），以普鲁士王家科学院本（通称“科学院版”）为底本，全部直接从德文译出，原文为拉丁文的则直接从拉丁文译出。科学院版《全集》包含了康德生前公开发表的所有著作和文章，并且经过了德文编辑者的详细校勘。中译者在翻译过程中参考了已有的各种译本，同时也对一些名词、术语提出了自己的独到见解。中译者以其在西方哲学、宗教学、语言学方面的深厚学养，以及十年如一日的苦心孤诣，为我们提供了一个可信、可读的康德著作文本，对康德翻译与研究作出了不朽的贡献。本“康德著作注释本”系列是中译者将康德著作中最有代表性的进行详细注解后推出的单行本系列，对于专业人士的研究和非专业人士的学习，皆有极大助益。', 2, 'https://up.bookresource.net/up/5e/66/1d/160d28d55f463aea6626dd5ffa1d665e.jpg');
INSERT INTO `gwc_book` VALUES (76, '西方政治思想的社会史：自由与财产', 73, '[加拿大] 艾伦·梅克辛斯·伍德', '人民教育', '2013年5月，格伦•格林沃尔德前往香港与一位匿名知情人会面，他自称掌握了美国政府正在实施无孔不入的监控的惊人证据，并执意通过高度加密的通信渠道进行交流。这位知情人，就是29岁国安局承包商前雇员爱德华•斯诺登。事实证明，对美国国安局的这一大规模系统性监控行为的爆料，是近 年来最具爆炸性的重磅新闻，引发了对国家安全和信息隐私权的激烈讨论。很显然，斯诺登泄密事件引发的余震远未停歇。', 2, 'https://up.bookresource.net/up/64/76/2d/45f0a0ad70d9a9d27610c605c22d7664.jpg');
INSERT INTO `gwc_book` VALUES (77, '幸福哲学书', 91, '【美】格雷琴·鲁宾（Gretchen Rubin）', '陕西师范大学出版社', '这不是一部哲学史导论，也不是脑筋急转弯的哲学入门；它以“人是什么”的问题为起点，以现代科学研究成果为工具，探讨人的认知、伦理、信仰、自由和爱的意义等我们在生命里终究要面对的重要课题。', 2, 'https://up.bookresource.net/up/2d/89/eb/3700125020e4e3a0f3480ad9a5eb892d.jpg');
INSERT INTO `gwc_book` VALUES (78, '罗素哲学概论', 31, '[法] 高宣扬', '机械工业出版社', '《为什么不平等至关重要》的主要框架来自托马斯·斯坎伦1996年的林德利讲座，题目为《对不平等的反驳的多样性》。讲稿在2003年被斯坎伦收入《宽容之难》这本论文集中。自林德利讲座之后，斯坎伦不断为这个主题添加新的内容，并且以《平等何时重要？》为题多处发表演讲。这些内容经扩充和打磨后，最终形成了当下这本书。', 2, 'https://up.bookresource.net/up/cd/07/5a/e3187ed4316a9c7254eb06213a5a07cd.jpg');
INSERT INTO `gwc_book` VALUES (79, '结构主义', 53, '[法] 高宣扬', '北京时代华文书局', '在她看来，从古代到中世纪，有产阶层、劳动阶层和国家之间的复杂互动以及私有财产权和国家权力之间的紧张关系形塑了后世的政治理论，主导了西方政治的发展。伍德以社会史的创新视角重述了政治理论史。', 2, 'https://up.bookresource.net/up/05/41/dc/566801323c93bad7bbe044d8cadc4105.jpg');
INSERT INTO `gwc_book` VALUES (80, '实用主义和语用论', 75, '高宣扬', '中国青年出版社', '\"内容简介 · · · · · ·', 2, 'https://up.bookresource.net/up/cc/1b/8c/92eec24d1633dda21500d604d38c1bcc.jpg');
INSERT INTO `gwc_book` VALUES (81, '新教伦理与资本主义精神（译文经典）', 83, '[德] 马克斯·韦伯', '云南人民出版社', '混圈层，读政治基本盘，', 2, 'https://up.bookresource.net/up/ef/39/7e/760507f4cba42f7c66842e04227e39ef.jpg');
INSERT INTO `gwc_book` VALUES (82, '西方的没落（译林人文精选）', 47, '[德]奥斯瓦尔德·斯宾格勒', '东方出版社', '想了解特朗普的总统升迁韬略？', 2, 'https://up.bookresource.net/up/a0/0c/4a/99e12d8cccb009198a755fdc654a0ca0.jpg');
INSERT INTO `gwc_book` VALUES (83, '光棍危机', 34, '（美）瓦莱丽.M. 赫德森 / （英）安德莉亚.M. 邓波尔', '中信出版社', '请看《纽时》《华尔街日报》《经济学人》相中的预言神书。\"', 2, 'https://up.bookresource.net/up/4d/ec/00/cce0be65a9f4646732a2c4cbe800ec4d.jpg');
INSERT INTO `gwc_book` VALUES (84, '不要害怕中国', 94, '[法] 菲利普.巴莱（原名：Philippe Barret）', '中信出版集团·见识城邦', '现代国家的形成、资本主义的兴起、文艺复兴的改革、科技发展和启蒙运动都被划归为“现代早期”。人们对于这一时期的几乎所有历史事件都存有争议，但有一件事是肯定的：它在西方历史中留下了无与伦比的丰厚政治遗产。自由、平等、财产、人权、革命等概念皆生成于这一时期，在动荡的岁月中不断影响和形塑今天的政治话语。', 2, 'https://up.bookresource.net/up/0c/34/90/01f6834a9ad69912ecced1898a90340c.jpg');
INSERT INTO `gwc_book` VALUES (85, '小逻辑（ “贺麟全集”第一卷）', 69, '[德] 黑格尔', '外语教学与研究出版社', '基于格雷琴对幸福生活的体悟与剖析，她从健康、婚姻、职业规划、育儿、交友等12个方面阐述了拥有幸福生活的秘诀', 2, 'https://up.bookresource.net/up/70/81/1d/65c2b102ba39f39af6ece677151d8170.jpg');
INSERT INTO `gwc_book` VALUES (86, '江湖中国', 93, '于阳', '中信出版集团', '本书以凝练的语言介绍了影响人类思想进程的伟大哲学家伯特兰·罗素的哲学思想与充满激情的生命实践。全书共分六章，依次介绍了罗素哲学思想的形成与发展，逻辑原子论和实在论，罗素的道德哲学、社会哲学、文化哲学以及罗素哲学对整个人类文明的影响。', 2, 'https://up.bookresource.net/up/9e/a8/ca/84a63f57ce4e7462f275d3d0cacaa89e.jpg');
INSERT INTO `gwc_book` VALUES (87, '美国国家安全局', 55, '[法]克劳德·德莱斯', '', '自20世纪50年代起，列维-斯特劳斯和他所奠定的结构主义轰动了整个欧洲，嬗变成一股影响深远的社会思潮，它不仅是哲学的、也是人类学的、社会学的、心理学的、文学艺术的、更是实际生活经验的。它代表的是一种对整个世界、整个人类社会及历史新的思想体系和研究方法。本书从结构主义的渊源、形成及发展，综述它和各学科之间的联系，引导我们进入结构主义极具革命性的、丰富有趣的世界观和方法论的中心。', 2, 'https://up.bookresource.net/up/7f/2a/27/e6df09c047b9833047b7b2bb72272a7f.jpg');
INSERT INTO `gwc_book` VALUES (88, '叛逆的思想家', 57, '[意]皮耶尔乔治·奥迪弗雷迪', '中国人民大学出版社', '实用主义是兴起于19世纪末、盛行于20世纪上半叶的美国主流哲学思想，其对于整个20世纪世界哲学的发展有深远影响。全书系统详细地阐述了美国实用主义的起源及流变，以及受实用主义影响的欧洲逻辑实证主义，介绍了实用主义创始人及代表人物皮尔士、詹姆斯和杜威的思想渊源及传承，以及在语言学领域的影响形成了一股语用论的思潮。', 2, 'https://up.bookresource.net/up/a7/41/71/75c6273ad5360ede2e2563a0e37141a7.jpg');
INSERT INTO `gwc_book` VALUES (89, '马克思博士论文（“贺麟全集”第九卷）', 70, '[德] 卡尔·马克思', '中信出版社', '《新教伦理与资本主义精神》是马克斯·韦伯的重要著作，它通过考察基督教的经济伦理观，探讨了宗教文化对于英美等国民族的精神文化气质，以及它们的社会经济发展之间的内在关系。由此，韦伯试图回答：近代资本主义为什么仅仅出现在西方，而同时期的东方却呈现出停滞之势。', 2, 'https://up.bookresource.net/up/c6/98/b4/5e320157f14522a6a2ed182947b498c6.jpg');
INSERT INTO `gwc_book` VALUES (90, '黑格尔早期神学著作（“贺麟全集”第八卷）', 24, '[德] 黑格尔', '会科学文献出版社·甲骨文', '\"作者简介 · · · · · ·', 2, 'https://up.bookresource.net/up/3d/44/ba/a6570476eaadbd59b15af0bbdeba443d.jpg');
INSERT INTO `gwc_book` VALUES (91, '黑格尔学述（ “贺麟全集”第十卷）', 33, '[英]开尔德 / [美]鲁一士', '中信出版集团', '斯宾格勒原先只是一名普通的中学教师，20世纪二三十年代，他因《西方的没落》一书一举成名，挤身于二十世纪最有影响的历史学家之列。\"', 2, 'https://up.bookresource.net/up/50/5f/80/ab1d6dc08e2265b040bc611531805f50.jpg');
INSERT INTO `gwc_book` VALUES (92, '每个行业都离不开心理学（套装共5册）', 74, '王梓等', '译林出版社', '瓦莱丽·M. 赫德森（ValerieM. Hudson），美国俄亥俄州立大学博士，为美国杨百翰大学政治系教授，并曾任教于西北大学、罗格斯大学，也曾担任过作家、编辑。著作包括《政治心理学及国际政策》、《国家自治的极限》。研究着重于国际政策分析、安全学研究、计算机统计模型等。', 2, 'https://up.bookresource.net/up/8c/95/2c/77917a8945dbc799d47a8889e52c958c.jpg');
INSERT INTO `gwc_book` VALUES (93, '哲学史讲演录（4卷）', 12, '贺麟', '中信出版集团·见识城邦', '要认识中国。孟德斯鸠曾说：“识时局之人不能对中国一无所知”。在今天，该警示是绝对必要的。要认识中国，因为目前和将来，中国在世界上扮演着重要角色；要认识中国，因为她和西方国家不一样，她拥有獨一无二的文明、文化和思想。', 2, 'https://up.bookresource.net/up/55/65/f1/b4b153e73ceeac64aeb8bbfa97f16555.jpg');
INSERT INTO `gwc_book` VALUES (94, '现代西方哲学讲演集', 49, '贺麟', '译林出版社', '\"内容简介 · · · · · ·', 2, 'https://up.bookresource.net/up/87/78/09/37ce259f69b9b252dc32a04949097887.jpg');
INSERT INTO `gwc_book` VALUES (95, '五十年来的中国哲学', 49, '贺麟', '中信出版集团', '本书是《哲学全书纲要》的第一部分，通称《小逻辑》，以区别于《大逻辑》（即逻辑学）。全书除导言外，共分:存在论、本质论、概念论三篇，反映了黑格尔哲学体系的基本框架。黑格尔的《小逻辑》是构成他的《哲学全书》的一个主要环节，它的好处在于把握住全系统的轮廓和重点，材料分配均匀，文字简奥紧凑，而义蕴深厚。初看似颇难解，及细加咀嚼，愈觉意味无穷，启发人深思。他的学生在他逝世后编订全集时，再附加以学生笔记作为附释，于是使得这书又有了明白晓畅，亲切感人的特点。\"', 2, 'https://up.bookresource.net/up/81/74/d5/d80281f9950ae2307849d68e04d57481.jpg');
INSERT INTO `gwc_book` VALUES (96, '精神现象学（上、下卷）', 25, '贺麟', '上海交通大学出版社', '学者朱学勤曾说，于阳先生潜心十年研究的成果《江湖中国》是一部了不起的著作，是应该静下心来仔细研读的图书。它解释了当今社会很多的陋规，即广泛存在的潜规则。他将狭义的江湖理解为帮派等组织，将广义的江湖理解为江湖化了的人群，例如广泛存在的关系网。该书通俗易懂，但又站在学术的立场上进行解释，可谓高屋建瓴，具有很强的批判使用价值。', 2, 'https://up.bookresource.net/up/f6/a4/ff/1b4a40107b7f1bf6196176adf9ffa4f6.jpg');
INSERT INTO `gwc_book` VALUES (97, '看懂世界格局的第一本书：中国周边', 31, '王伟', '上海交通大学出版社', 'NSA，美国国家安全局，全世界超级庞大的电子情报机构。它监视着全世界，从恐怖分子到网络黑客，从大工业家到基层员工，从国家首脑到寻常市民……它的运行机制是怎样的？它承担着哪些任务？它的目标又是什么？它曾经爆发过哪些丑闻？斯诺登事件对它又会产生哪些影响？', 2, 'https://up.bookresource.net/up/6d/42/27/ca497bddaa51aa9c8e3f950bff27426d.jpg');
INSERT INTO `gwc_book` VALUES (98, '马基雅维利语录', 51, '[日] 盐野七生', '上海交通大学出版社', '这本书不仅是单纯的科普作品，更是一部真正的思想史漫谈。就连作者自己也很难准确定义它——它到底是一场噩梦，一出闹剧，一则寓言，一篇讽刺文学，一场心灵游戏，一场赌局，一句讽喻，一种观点，还是对一切观点的讽刺？或许，只有游历了八大领域的诸多人类思想，才能找到答案。', 2, 'https://up.bookresource.net/up/67/4d/53/3213164a5940f517df51f07374534d67.jpg');
INSERT INTO `gwc_book` VALUES (99, '我们的自信', 25, '陈曙光', '上海译文出版社', '《马克思博士论文 黑格尔辩证法和哲学一般的批判》（“贺麟全集”第九卷）是贺麟译述马克思早年经典哲学论著的重要成果。收入发表于1842年的博士论文《德谟克里特的自然哲学与伊壁鸠鲁的自然哲学的差别》，该文对于用辩证法观点研究古代自然哲学史有很大贡献，1958年由贺麟完成中译，1961年人民出版社出版单行本，后收入《马恩全集》。《黑格尔辩证法和哲学一般的批判》于1955年翻译出版，对黑格尔哲学批判研究很有指导作用。本书另收入四篇贺麟所撰相关文章，以备研究参考之用。', 2, 'https://up.bookresource.net/up/77/dd/a2/2db151141df64429083c717e01a2dd77.jpg');
INSERT INTO `gwc_book` VALUES (100, '哲学是怎样炼成的', 40, '[英]蒂莫西·威廉森（Timothy Williamson）', '万卷出版公司', '\"内容简介 · · · · · ·', 2, 'https://up.bookresource.net/up/dd/18/18/a55c3ecf0b7814447f5dca813e1818dd.jpg');
INSERT INTO `gwc_book` VALUES (101, '硬球：政治是这样玩的（2015版）', 38, '[美]克里斯·马修斯', '中央编译出版社', '《黑格尔早期神学著作》（“贺麟全集”第八卷）是著名哲学家、翻译家贺麟的重要译著之一，以八十岁高龄自诺尔编黑格尔著《早期神学著作》的德文原版翻译而成，并参考诺克斯与克朗纳的英译本。本书也是身为译介黑格尔至中国第一人的贺麟先生，生前最后一部黑格尔相关译著。其中收入黑格尔著《民众宗教和基督教》《耶稣传》《基督教的权威性》《基督教的精神及其命运》及《1800年体系残篇》等五篇论文，是了解和研究黑格尔早期神学思想的第一手资料。\"', 2, 'https://up.bookresource.net/up/f8/94/20/217812f6c10b91c20cf665d14e2094f8.jpg');
INSERT INTO `gwc_book` VALUES (102, '辩护的政治', 82, '陈肖生', '中国友谊出版公司', '“我所以喜欢这几种谈黑格尔哲学的书，即因为这几种书既不抽象傅会，又不呆板乏味，而著者又皆是能负荷黑氏哲学，有独立思想，在哲学史上占相当地位的哲学家。而且他们皆将全部哲学史烂熟胸中，明了黑格尔的时代，的背境，的个性，将其全部思想融会于心，而能以批评的眼光，自己的辞句，流畅的文字，表达出来。我相信这样的著作，不唯可以领导我们认识黑格尔，且可以领导我们认识什么是真正的哲学。”', 2, 'https://up.bookresource.net/up/f0/01/01/78eb7804b415bd2a8e033f5da40101f0.jpg');
INSERT INTO `gwc_book` VALUES (103, '小呆呆', 123, '超人强', 'wo', '猪猪侠', 2, '图片');

-- ----------------------------
-- Table structure for gwc_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `gwc_shopcar`;
CREATE TABLE `gwc_shopcar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` int NOT NULL,
  `abstract` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `checked` int NULL DEFAULT 0,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `number` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gwc_shopcar
-- ----------------------------
INSERT INTO `gwc_shopcar` VALUES (2, 2, '父母效能训练手册', 74, '《父母效能训练手册:让你和孩子更贴心》父母效能训（P.E.T.）由美国著名心理学家托马斯?戈登于40多年前创立，是美国第一个全国性的父母训练教程，向父母传授与孩子有效沟通的技巧，并循序渐进地提出建议，以解决家庭冲突，让每个人在冲突中都赢。', '戈登', 0, 'https://up.bookresource.net/up/fa/aa/78/faaa78377447e90007a462cc41d5c3a2.jpg', 1);
INSERT INTO `gwc_shopcar` VALUES (3, 2, '打造儿童阅读环境', 12, '《打造儿童阅读环境》为常年与儿童、图书打交道的老师和家长而写，它能有效地帮助你规划、建立一个让孩子能快速进入状态的阅读环境，学习、实践一种让孩子与别人分享阅读并拓展个人阅读的方法。', '[英] 艾登?钱伯斯', 0, 'https://up.bookresource.net/up/67/2b/b6/672bb651b52457679c6c333c78a64e35.jpg', 1);
INSERT INTO `gwc_shopcar` VALUES (4, 2, '做孩子一生的贵人', 25, '《做孩子一生的贵人》是蔡礼旭老师近年来最热门的传统文化讲座之一，在出版之前，已经有大量的光碟流通，不少学校组织老师、学生和家长观看，收到的热烈的欢迎。', '蔡礼旭', 0, 'https://up.bookresource.net/up/39/14/21/0832008493c4d665dc8850623a211439.jpg', 1);
INSERT INTO `gwc_shopcar` VALUES (7, 1, '打造儿童阅读环境', 12, '《打造儿童阅读环境》为常年与儿童、图书打交道的老师和家长而写，它能有效地帮助你规划、建立一个让孩子能快速进入状态的阅读环境，学习、实践一种让孩子与别人分享阅读并拓展个人阅读的方法。', '[英] 艾登?钱伯斯', 0, 'https://up.bookresource.net/up/67/2b/b6/672bb651b52457679c6c333c78a64e35.jpg', 1);

-- ----------------------------
-- Table structure for gwc_user
-- ----------------------------
DROP TABLE IF EXISTS `gwc_user`;
CREATE TABLE `gwc_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `admin` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gwc_user
-- ----------------------------
INSERT INTO `gwc_user` VALUES (1, '0627', '123', 1);
INSERT INTO `gwc_user` VALUES (2, '123', '123', 0);
INSERT INTO `gwc_user` VALUES (4, '1234', '25446234', 0);

SET FOREIGN_KEY_CHECKS = 1;
