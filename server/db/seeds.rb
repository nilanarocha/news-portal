# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

News.destroy_all
Author.destroy_all
NewsCategory.destroy_all

# -----------------------------------------------------------------------
puts 'Creating author'

Author.create(
  name: 'Whitney Friedlande',
  image: 'https://pbs.twimg.com/media/Diz1ruYU4AAt3eE.jpg',
  description: 'Experienced online and print editor and writer who has covered television, film, fashion, entertainment and pop culture for Los Angeles Times, Variety, Toronto Star, Vulture, Esquire.com, Cosmo, MarieClaire.com, The Washington Post and more. Television Critics Association member. Member of GALECA: The Society of LGBTQ Entertainment Critics.'
)
Author.create(
  name: 'Eliza Mackintosh',
  image: 'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=beautiful-blur-blurred-background-733872.jpg&fm=jpg',
  description: 'Eliza Mackintosh is a London-based digital producer covering Europe, the Middle East and Africa for CNN International.'
)

# -----------------------------------------------------------------------
puts 'Creating news category'

NewsCategory.create(name: 'World')
NewsCategory.create(name: 'Economy')
NewsCategory.create(name: 'Entertainment')

# -----------------------------------------------------------------------
puts 'Creating news'

News.create(
  title: 'No one thought a UK Prime Minister could be worse than Theresa May. Until now',
  headline: 'By the end of her inglorious three-year stint in Downing Street, even her most loyal supporters admitted that the robotic May would never be regarded as one of the greatest British leaders.',
  image: 'https://cdn.cnn.com/cnnnext/dam/assets/190904125613-02-uk-parliament-0904-exlarge-169.jpg',
  date: Date.new(2019, 9, 5),
  description: "London (CNN)Could someone be worse than Theresa May, the UK Prime Minister widely panned as 'the Maybot'? By the end of her inglorious three-year stint in Downing Street, even her most loyal supporters admitted that the robotic May would never be regarded as one of the greatest British leaders. By comparison, Boris Johnson's off-the-cuff, sunny disposition made him a darling of Conservative Party members who chose him for the top job when May finally resigned, defeated by her inability to get a Brexit deal through Parliament. On his first day as Prime Minister, Johnson promised a bold new Brexit deal, bashing the 'doubters, doomsters, gloomsters' and the political class who he said had forgotten about the British people they serve. It was as if an upbeat attitude alone could be enough to overcome any adversity on the United Kingdom's path to exiting the European Union. A legacy of failure: Theresa May was a disaster as Prime Minister A legacy of failure: Theresa May was a disaster as Prime Minister For a moment, it seemed he would breathe new life and, in his words, 'positive energy,' into the Brexit process. Some thought, just maybe, he could manage to do what May did not. How quickly it all went wrong. Johnson has lost every one of his first votes in parliament, an unprecedented record in the modern era. Undeterred, the Prime Minister purged 21 members of his parliamentary party who voted against him, blowing apart his majority. Then, his efforts to secure a snap general election -- with the goal of replacing the sacked lawmakers with a new slate of candidates more aligned with his hard-Brexit views -- were scuppered when opposition Labour leader Jeremy Corbyn refused to play along. Now, he is effectively trapped in Downing Street, with Corbyn holding the keys. The government plans to propose new elections again on Monday, but the opposition leader says his party will only support the move when its efforts to prevent a no-deal Brexit are locked down. 'Certainly his biggest tactical mistake so far was not to realize that it was Corbyn, as leader of the opposition, who effectively had veto power over when a general election could be held,' said Professor Tony Travers, director of the Institute of Public Affairs at the London School of Economics. Boris Johnson reacts to Jeremy Corbyn during his first Prime Minister&#39;s Questions Wednesday. Boris Johnson reacts to Jeremy Corbyn during his first Prime Minister's Questions Wednesday. 'It looks as if the Conservatives and their advisers thought that if they offered a general election to the Labour Party it would jump at the opportunity, but the way things have turned out -- the coming together of the no-deal bill and the possibility that the opposition can frustrate a general election -- creates the possibility of keeping the Prime Minister trapped in government, unable to fulfill his commitment to leave the EU come what may.' Now the newly minted PM finds himself in a position that May never was -- on his knees, begging the opposition for a general election. How did it come to this? The bad luck set in with Johnson's decision to prorogue, or suspend, Parliament from mid-September, effectively shortening the time available to lawmakers to block a no-deal Brexit. It will be the longest suspension of Parliament since World War II, and it jolted the fractured opposition parties. Divided on Brexit, they were united in their opposition to what they perceived as an all-out assault on British constitutional conventions. The &#39;mother of parliaments&#39; is falling apart on live TV The 'mother of parliaments' is falling apart on live TV Since then, the blows have kept on coming -- many of them self-inflicted. The conduct of Johnson's shadowy chief adviser, Dominic Cummings, has riled many senior Conservatives. First, there was a decision to fire an aide to the chancellor, Sajid Javid, who was reportedly marched out of Downing Street by an armed police officer after Cummings accused her of not being open about her contacts with more Remain-minded members of the party. All the more galling, for some, was the fact that the aide in question was an ardent Brexiteer. Then, more explosively, was the decision to fire 21 rebellious MPs who voted with opposition lawmakers in favor of a bill to prevent a no-deal Brexit, widely seen as a plan hatched by Cummings. The list included eight former Cabinet ministers, two former finance secretaries, the longest-serving member of the House of Commons and the grandson of Winston Churchill. Former Conservative Prime Minister John Major urged Johnson to ditch his aides. 'Get rid of these advisers before they poison the political atmosphere beyond repair. And do it quickly,' he said in a speech in Glasgow. On Thursday, in the most potent of humiliations, Johnson's own brother quit his ministerial post and said he would stand down as an MP -- that rare breed of politician to leave his job in order to spend less time with his family. 'In recent weeks I've been torn between family loyalty and the national interest - it's an unresolvable tension & time for others to take on my roles as MP & Minister,' Jo Johnson tweeted on Thursday. Boris Johnson with his brother Jo, left, at the launch of his leadership campaign. Boris Johnson with his brother Jo, left, at the launch of his leadership campaign. That seemed to hang like a cloud over the Prime Minister when he made a speech that might have been the opening salvo of an election campaign, under other circumstances. In front of a wall of police cadets in West Yorkshire, Johnson attempted to recite the caution that police deliver to suspects when they make an arrest, only to stumble over the words and abandon the joke halfway through. He then lurched into some lackluster remarks that had commentators cringing. Finally, in the heat, one of the cadets behind him sat down, apparently to avoid fainting. Johnson turned to ask her if she was okay, promised to end the event, but carried on anyway. Journalists' questions were brutal. 'Aren't people entitled to ask, if your own brother can't back you, why should anyone else?' one asked. It is indeed an open question. Certainly, an election is a gamble. But it is a risk that Johnson and his advisers have taken in the hopes that, by turning the broad church coalition of the Conservative Party into a group of Euroskeptics, that it will reconfigure the Brexit alliance and prove enough to win a general election. Boris Johnson makes a speech flanked by police cadets in West Yorkshire Thursday. Boris Johnson makes a speech flanked by police cadets in West Yorkshire Thursday. If Johnson is able to pull it off, his decision to kick out moderate Conservative members will have effectively set him up to have a far more consolidated, hard-line pro-Brexit party -- saving his skin and redefining the Tories all at once. But, if his bumbling and, at times, awkward speech Thursday was any indication, he may have lost some of the winning luster that had previously seemed so promising. His predecessor was endlessly slammed for her poor performances in speeches -- from her robotic dancing to losing her voice -- but she never lined up dozens of bemused police officers as a backdrop to a political stunt. Yet, unlike May, Johnson was able to ram home the core political message that he intends to take the UK out of the EU 'no ifs or buts' by October 31 -- a stark contrast to her central failure to find consensus. Asked if he could promise the British public that he would not go to Brussels and ask for another delay to Brexit, Johnson said: 'Yes I can. I'd rather be dead in a ditch.'",
  authors_id: Author.find_by(name: 'Eliza Mackintosh').id,
  news_categories_id: NewsCategory.find_by(name: 'World').id
)

News.create(
  title: "Europe's migrant crisis isn't going away, but it is changing",
  headline: 'Much has changed since the height of the refugee crisis that gripped Europe in the summer of 2015. Since the shocking images of drowned Syrian toddler Alan Kurdi went viral, the crisis has largely been out of international headlines.',
  image: 'https://cdn.cnn.com/cnnnext/dam/assets/170817142019-02-mediterranean-crisis-reset-super-169.jpg',
  date: Date.new(2019, 9, 6),
  description: "Much has changed since the height of the refugee crisis that gripped Europe in the summer of 2015. Since the shocking images of drowned Syrian toddler Alan Kurdi went viral, the crisis has largely been out of international headlines.

  But it doesn't show any signs of stopping.
  Since 2015, Europe has scrambled to cope with the arrival of around 1.5 million people by sea.
  In an effort to stem this flow, many European countries have tightened their policies and borders. In 2016, the European Union forged a controversial \"one in, one out\" deal with Turkey to stop the tide of migrants and refugees fleeing to the continent from the Middle East. And, this year, Italy has adopted an aggressive approach to halting migration across the Mediterranean from North Africa, backing the Libyan coast guard's rescue efforts and cracking down on nongovernmental organizations (NGOs) operating off the country's coast.
  With each new twist and turn, the number of arrivals has dropped. But new migrant routes keep cropping up. People seeking alternative passages have moved westward -- seen in the recent spike in migrants arriving in Spain from northern Morocco -- while others are turning in desperation to new destinations such as Yemen.
  Footage that surfaced on social media in early August showed stunned sunbathers watching as a dinghy packed with dozens of African migrants landed on a Spanish beach -- the latest sign of an evolving crisis.

  Here's what has been happening in the Mediterranean:
  Why are NGOs suspending migrant search-and-rescue (SAR) operations in the Mediterranean?
  Three aid groups operating in the Mediterranean -- Doctors Without Borders (MSF), Save the Children and Sea Eye -- suspended their rescue operations in August, citing security concerns after Libya blocked foreign vessels from a stretch of sea off its coast. The MSF said an increasingly \"hostile environment\" had made their efforts untenable, while Sea Eye alleged that the Libyan government had issued an \"explicit threat\" against NGOs.
  What is the Libyan coast guard doing?
  Libya has extended its SAR zone into international waters, restricting access to humanitarian vessels. The Libyan navy, emboldened by its agreement with Italy, has recently fired warning shots at humanitarian aid vessels patrolling in this area. Libyan Navy spokesman Brigadier Ayoub Qassem told CNN: \"We are fed up with these organizations. They increased the number of immigrants and empowered smugglers. Meanwhile, they criticize us for not respecting human rights.\"
  A Libyan coastguardsman patrols the SAR zone between Sabratha and Zawiyah in July 2017.
  A Libyan coastguardsman patrols the SAR zone between Sabratha and Zawiyah in July 2017.
  Libya has asserted its right to operate beyond the territorial limit of 12 nautical miles from the coast. According to Save the Children, Libya has extended its SAR zone to 70 nautical miles from its shoreline. The move has led to clashes with NGO vessels at the edge of Libyan waters.
  What assistance is Italy providing to the Libyan coast guard and why?
  In August, Italy announced it would deploy two naval ships to Libya -- a patrol vessel and a technical and logistical support unit -- in an effort to deter illegal migration and human smuggling into Europe. The move came after Libya's UN-recognized government of national accord requested help. The initiative has been widely panned by NGOs, which have warned that the move will expose migrants to far more danger and abuse.
  A member of Aquarius, a rescue ship run by NGO SOS Méditerranée and Doctors Without Borders, brings a young girl on board in August 2017.
  A member of Aquarius, a rescue ship run by NGO SOS Méditerranée and Doctors Without Borders, brings a young girl on board in August 2017.
  What restrictions has Italy imposed on NGOs?

  In late July, Italy's Parliament passed a controversial \"code of conduct\" for NGOs operating search-and-rescue missions in the Mediterranean. Among the measures are:
  • Ban on entering Libyan waters except in situations of grave or imminent danger
  • Ban on phone calls to help migrant departures
  • Ban on transferring rescued migrants to other vessels
  • Commitment to allow armed police onto vessels to monitor activities
  A child, who was aboard the Aquarius rescue ship, receives flip-flops upon her arrival in the port of Pozzallo, Italy, in August 2017.
  A child, who was aboard the Aquarius rescue ship, receives flip-flops upon her arrival in the port of Pozzallo, Italy, in August 2017.
  Three of the eight humanitarian groups operating in the Mediterranean agreed to the terms, while Doctors Without Borders refused to sign, saying it could increase deaths at sea. The mayor of Catania, Italy, told CNN that he believes the code of conduct is behind the recent drop in migrant arrivals there; critics say it is too early to tell.
  What is happening to migrant arrivals in Italy?
  Migrant arrivals to Italy dropped in July -- cut in half from the same month last year -- figures from Italy's interior ministry showed. According to the International Organization for Migration (IOM), 94,802 migrants have reached Italian shores so far this year -- 85% of all arrivals in Europe.
  How is that affecting migrant arrivals elsewhere?

  The UN says over 9,000 migrants have arrived in Spain so far this year, most of those in the past two months. It's the most the country has seen since the start of the crisis. And it's flared in August -- with a staggering 604 migrants rescued in just 24 hours. Increasingly, African migrants are seeking a cheaper and easier path to Europe, setting sail for Spain from Morocco in toy dinghies and on jet skis. The average price to cross from the Moroccan coast to Spain is around 500 euros (about $590), according to Frontex.
  Rescued migrants arrive in the port of Motril, Granada, southern Spain, in August 2017.
  Rescued migrants arrive in the port of Motril, Granada, southern Spain, in August 2017.
  Why has the Italian government shifted its strategy on refugees?
  Italy's beefed-up approach to tackling the flow of migrants into the country followed local elections in June, which saw a wave of anti-immigrant mayors and local councilors ushered into office. Critics say the result has left the governing center-left party reeling, forcing Italian leaders to seek short-term solutions at the cost of migrants' lives.
  \"Our goal is to govern the migration flows,\" the Italian interior minister, Marco Minniti, said in an August news conference. \"A big democracy, a big country, doesn't endure migration's flow, but tries to govern them.\"
  What is happening to migrants intercepted by the Libyan coast guard?
  Migrants intercepted by the Libyan coast guard are being returned to the north African country. Human Rights Watch, and other humanitarian organizations, have warned against returning migrants to Libya, a war-torn country where migrants are exposed to torture, slavery and detention, they say.
  Migrants react after being returned to a detention center in Libya.
  Migrants react after being returned to a detention center in Libya.
  A report published in June by the UN Panel of Experts on Libya contained serious allegations that factions of the coast guard were colluding with smugglers, and abusing migrants they intercepted. The same report detailed inhumane conditions in multiple migrant detention centers. It echoed another report by the UN support mission in Libya and the Office of the High Commissioner for Human Rights, published in December last year, which included similar claims.
  What is the EU's strategy to address the refugee crisis, and how has it changed?
  Since the height of the crisis in 2015, governments across Europe have sought to fortify their countries' borders. In February 2017, EU leaders outlined plans to stem the flow of migrants traveling across the Mediterranean from Libya to Italy, and boost the ability of the EU to send people back.
  Members of the Aquarius crew attend to migrants rescued off the Libyan coast in August 2017.
  Members of the Aquarius crew attend to migrants rescued off the Libyan coast in August 2017.
  \"The key priority is reducing the flow without any consideration for the causes of migration,\" Nando Sigona, an expert in migration at Birmingham University's School of Social Policy, told CNN.
  What about the anti-immigrant patrols in the Mediterranean?
  An anti-immigrant vessel has underlined just how fraught the debate on refugees has become in Europe. The Defend Europe group deployed its C-Star vessel to the Mediterranean this summer, vowing to stop the \"invasion\" of refugees attempting to sail to Europe.
  \"It's created pressure, pressure for the NGOs as we were here, always watching them, documenting them and basically paralyzing them. We've seen it, I think during our operation time, the whole thing has turned against the NGOs. They've lost most public support; many have given up,\" Martin Sellner, one of the group's leaders told CNN. \"We came and they went so definitely a success.\"
  Though the C-Star has been allowed to continue operating in Libya's SAR zone, the Libyan Navy's Qassem told CNN that the coast guard would not work with them directly.
  \"They combat immigration through a spiteful, racist standpoint,\" Qassem said. \"We don't work with racism.\"
  What is happening to the charities that are continuing their missions?
  The Spanish aid group Proactiva Open Arms is among several NGOs that have continued to conduct rescue operations in the Mediterranean despite restrictions. Its crew recently reported that the Libyan coast guard fired warning shots while the vessel was in international waters.
  Migrants watch sunrise from the Aquarius rescue ship after their transfer from the NGO Migrant Offshore Aid Station (MOAS) in August 2017.
  Migrants watch sunrise from the Aquarius rescue ship after their transfer from the NGO Migrant Offshore Aid Station (MOAS) in August 2017.
  \"They were warned and told that they could be detained. We gave them a chance to leave and they did,\" Libyan navy spokesman Qassem told CNN. \"They have to respect our sovereignty. They consider themselves above the law and Libyan sovereignty.\"
  According to Italian coast guard figures, nongovernmental groups were responsible for rescuing a quarter of all those saved in 2016, and a third of those pulled from the Mediterranean in the first three months of 2017.",
  authors_id: Author.find_by(name: 'Eliza Mackintosh').id,
  news_categories_id: NewsCategory.find_by(name: 'World').id
)

News.create(
  title: 'I can’t stand this situation anymore',
  headline: 'After months living under ISIS\'s brutal rule in Raqqa, Maha finally managed to escape.',
  image: 'http://cdn.cnn.com/cnn/.e/interactive/2017/raqqa-messages/raqqa3-desktop.jpg',
  date: Date.new(2019, 9, 5),
  description: "After months living under ISIS's brutal rule in Raqqa, Maha finally managed to escape.
  In August, as the besieged city was being pounded by a US-backed coalition, the 23-year-old Syrian widow fled with her two-year-old son Odai and elderly aunt.
  They joined hundreds of thousands of people who have been displaced since the operation to retake the city from ISIS began last year.
  Yet now, even after Kurdish forces declared victory in Raqqa, their future is far from certain as they move from camp to camp in the outskirts of the city.
  Maha's only lifeline to the outside world has been her mother Wafa, 40, who sought asylum in the Netherlands in 2014.
  Before she escaped Raqqa, CNN chronicled Maha's WhatsApp conversations with her mother. Now, we take up Maha's story as she attempts to make it to Turkey.",
  authors_id: Author.find_by(name: 'Eliza Mackintosh').id,
  news_categories_id: NewsCategory.find_by(name: 'World').id
)

News.create(
  title: 'Kim Kardashian West got super drunk and leaked her own baby news',
  headline: 'The mom of four reveals in a newly released clip from "Keeping Up with the Kardashians" that she is the one who spilled the beans that she was expecting baby No. 4 via a surrogate.',
  image: 'http://cdn.cnn.com/cnn/.e/interactive/2017/raqqa-messages/raqqa3-desktop.jpg',
  date: Date.new(2019, 9, 5),
  description: "The mom of four reveals in a newly released clip from \"Keeping Up with the Kardashians\" that she is the one who spilled the beans that she was expecting baby No. 4 via a surrogate.
  After having one too many drinks in December at her family's annual Christmas party, Kardashian says she accidentally told someone at the celebration about the impending new addition.

  \"I got drunk on Christmas Eve, and I told someone at Christmas Eve, and I don't remember who I told because I was drunk,\" she said.
  Her son, Psalm, was born in May.

  In the clip, Scott Disick asks if Kardashian told multiple people that she was expecting, and she responds, \"I think so.\"
  \"No, 'cause, I mean, it was my fault,\" she adds. \"That's why I don't drink.\"
  The reality star and beauty mogul wasn't upset about it though, telling Disick, \"I'm so excited.\"
  \"At first I was having such anxiety just because I'm gonna be a mom of four.\"
  \"Look at your mom. She's got 19 kids,\" Disick jokes, wildly exaggerating the size of Kris Jenner's brood. \"She's not stressed.\"",
  authors_id: Author.find_by(name: 'Whitney Friedlande').id,
  news_categories_id: NewsCategory.find_by(name: 'Entertainment').id
)

News.create(
  title: 'John Travolta has an admirably positive spin on his perceived VMAs flub',
  headline: "Actor and apparent Taylor Swift pen pal John Travolta wants you to know that he didn't accidentally mistake a drag queen for the real-life star while presenting at the MTV Video Music Awards on Monday. But he's cool if that's what you want to think.",
  image: 'https://cdn.cnn.com/cnnnext/dam/assets/190827093256-john-travolta-queen-latifah-vmas-exlarge-169.jpg',
  date: Date.new(2019, 9, 5),
  description: "Actor and apparent Taylor Swift pen pal John Travolta wants you to know that he didn't accidentally mistake a drag queen for the real-life star while presenting at the MTV Video Music Awards on Monday. But he's cool if that's what you want to think.

  Travolta found himself in the center of yet another viral award show moment on Monday night when some viewers claimed the actor may have mistaken Taylor Swift impersonator Jade Jolie for the actual singer while on stage.
  In a conversation with Dallas-area radio station Hot 93.3, \"The Fanatic\" star explained that wasn't the case.

  He said he's friends with Swift, saying \"she's been so good to my daughter and my wife\" by providing them concert tickets and they've exchanged letters in the past. While presenting Swift the award for Video of the Year, he said the interaction with Jolie spotted by viewers was one of confusion, not mistaken identity.
  \"There's so many people that bombarded the stage, that I was looking for [Swift]. So, the video has me looking, trying to find her,\" he said. \"But, you know, I thought it was so funny the way it was interpreted. And it's cool, I didn't care.\"
  He added: \"I sometimes fantasize, 'What if I'd given it to her?' That would have been awesome. I should have just gone all the way with it, you know?\"
  Travolta said he tries to have \"a sense of humor\" about his various headline-making actions, from his haircuts to that viral moment at the 2014 Oscars when he accidentally referred to Idina Menzel as \"Adele Dazeem.\"
  \"We're in pretty good shape on the day, any given day, that that kind of thing could make headlines,\" he said. \"We're so used to this inundation of bad news that the idea that something so light and so insignificant as those items would do that means that, at least for today, there's no bad news.\"",
  authors_id: Author.find_by(name: 'Whitney Friedlande').id,
  news_categories_id: NewsCategory.find_by(name: 'Entertainment').id
)
