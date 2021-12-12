-- SQL queries to populate databases of majors, indutries
create table majors(
	mid integer PRIMARY KEY,
	mname varchar(30),
	start_salary integer
);

create table industries(
	iid integer PRIMARY KEY,
	iname varchar(100),
	perc_women decimal,
	perc_union decimal
);

create table areas(
	areaid integer PRIMARY KEY,
	areaname varchar(20)
);

create table texts(
	iid integer,
	areaid integer,
        exp_text varchar(1000),
        url1 varchar(100),
        url2 varchar(100),
        url3 varchar(100),
        PRIMARY KEY (iid, areaid)                                                                                                                                                                                    );

create table matches(
	mid integer,
	iid integer,
	PRIMARY KEY (mid, iid)
);


create table race(
	iid integer PRIMARY KEY,
	iname varchar(100),
	perc_white decimal,
	perc_black decimal,
	perc_asian decimal,
	perc_hisp_latino decimal
);


-- id, name, starting salary
insert into majors values (10, 'Mechanical Engineering', 63527);
insert into majors values (11, 'Chemical Engineering', 68031);
insert into majors values (12, 'Electrical Engineering', 67593);
insert into majors values (13, 'Civil Engineering', 58840);


-- id, name, %women, %union, explanation
insert into industries values (100, 'Agriculture', 27.7, 1.7);
insert into industries values (101, 'Aerospace & Automotive', 11.3, 1.4);
insert into industries values (102, 'Chemical & Pharmaceutical', 36.3, 8.2);
insert into industries values (103, 'Construction', 10.9, 12.6);
insert into industries values (104, 'Defense', 16.2, 0);
insert into industries values (105, 'Electric Power, Telecom, & Utility', 21.4, 23.4);
insert into industries values (106, 'Electronics', 27.0, 3.8);
insert into industries values (107, 'Energy', 14.5, 4.0);
insert into industries values (108, 'Manufacturing', 36.6, 8.6);
insert into industries values (110, 'Education', 69.5, 12.3);
insert into industries values (111, 'Financial Services', 53.4, 1.1);
insert into industries values (112, 'Healthcare', 77.8, 6.8);
insert into industries values (113, 'Software', 39.3, 3.8);
insert into industries values (114, 'Transportation', 24.6, 16.1);
insert into industries values (115, 'Other', 52.6, 2.8);

-- areaid, areaname
insert into areas values (1, 'Equity');
insert into areas values (2, 'Labor');
insert into areas values (3, 'Corporate Citizenship');
insert into areas values (4, 'Privacy');
insert into areas values (5, 'Environment');
insert into areas values (6, 'Safety');


-- iid, areaid, text, url1, url2, url3
-- Agriculture texts
insert into texts values (100, 1, 'The agriculture industry depends on precarious labor. Undocumented workers, mostly from Latin America, constitute half of U.S. farmworkers. They are often paid very low piece rates ($2 for 60 pounds of scallions?) and are often at risk for deportation despite the essential role they play in the U.S.’s food supply.', "www.newsweek.com/nearly-half-us-farmworkers-undocumented-ending-illegal-immigration-could-devastate-economy-1585202", 'twitter.com/UFWupdates/status/1330669456926801922', NULL);
insert into texts values (100, 2, 'On the supplier side, as of October 23, 2021, John Deere workers are on strike. Like many equipment manufacturers, Deere made record profits during the pandemic, and workers say those benefits have not trickled down to them.', 'www.nbcnews.com/news/us-news/more-10-000-deere-co-workers-strike-after-failed-uaw-n1281486', NULL, NULL);
insert into texts values (100, 3, 'Right to repair is the idea that manufacturers should make parts, diagnostic tools, and diagrams available to third parties and buyers, with the argument that doing so would allow people to use their products for longer and shift the balance away from corporate power. This is a problem in agriculture, where a very expensive tractor can become inoperational because of a software update. Agriculture equipment moving towards a licensing model could shut smaller farmers out of the market altogether and consolidate power for larger companies.', 'www.thedrive.com/news/39158/farmers-are-having-to-hack-their-own-tractors-just-to-make-repairs', NULL, NULL);
insert into texts values (100, 5, 'Agriculture represents 10% of US greenhouse gas emissions, due to soil, livestock, and pesticide practices. These emissions, however, can be reduced by moving to better management practices. Aside from being environmentally unfriendly, factory farming of animals is also a brutal practice that pollutes water resources.', 'www.epa.gov/ghgemissions/sources-greenhouse-gas-emissions', 'www.iccr.org/our-issues/water-stewardship-and-sustainability/corporate-water-impacts/factory-farms-water', NULL);
insert into texts values (100, 6, 'Pesticides and herbicides can affect human wellbeing, particularly the development of the brain, in addition to being an environmental hazard. The lack of safety protocols, particularly in developing countries, causes ten thousand deaths per year.', 'encyclopedia.uia.org/en/problem/138611', NULL, NULL);

-- Aerospace & Automotive
insert into texts values (101, 2, 'Many “self-driving” vehicles are actually driven by workers thousands of miles away – whose work may be erased and who may not have the same benefits and salary as other workers. Due to NAFTA and other free trade agreements, cars that may once have been made by American workers are now being made by workers in other countries, like Mexico or China.', 'mashable.com/article/remote-controlled-autonomous-driving-vehicles-trucks', 'www.forbes.com/sites/kenrapoza/2020/09/01/gm-leads-in-shipping-jobs-to-mexico-company-shifting-focus-to-china/', NULL);
insert into texts values (101, 4, 'As cars become computers, more than just vehicles, they also collect and share data about their occupants. The issue of data privacy could only become worse as autonomous vehicles and connected systems become the norm.', 'www.nhtsa.gov/technology-innovation/vehicle-data-privacy', NULL, NULL);
insert into texts values (101, 5, 'The aerospace and automotive industries are responsible for the largest portion, 29%, of U.S. greenhouse gas emissions. The industry also contributes to poor air quality and dependence on fossil fuels. Cars, by themselves, have had deep effects on US infrastructure, like national highways tearing apart communities of color and all-around making cities more dangerous.', 'www.epa.gov/greenvehicles/fast-facts-transportation-greenhouse-gas-emissions', 'www.cnn.com/2021/02/27/cars/buttigieg-highway-removals/index.html', 'www.theguardian.com/commentisfree/2019/mar/07/cars-killing-us-driving-environment-phase-out');
insert into texts values (101, 6, 'In the United States, car crashes kill 32,000 and injure 2,000,000 people every year. Several famous engineering ethics case studies deal with engineers being pressured to sign off on unsafe systems that resulted in tragic and avoidable deaths (the Ford Pinto, the Challenger explosion).', 'www.cdc.gov/vitalsigns/motor-vehicle-safety/index.html', 'philosophia.uncg.edu/phi361-matteson/module-1-why-does-business-need-ethics/case-the-ford-pinto/', 'ethics.tamu.edu/wp-content/uploads/sites/7/2017/04/Shuttle.pdf');

-- Chemical & Pharmaceutical
insert into texts values (102, 1, 'Life-saving medicines and vaccines may not be equally available across continents and countries, leading to unnecessary suffering. The environmental impacts of chemical manufacturing are also unevenly distributed, causing high rates of cancer in Black communities, for example.', 'inthesetimes.com/article/pfizer-pharmaceutical-companies-covid-pandemic-coronavirus-latin-america-trips-waiver-vaccines', 'news.un.org/en/story/2021/03/1086172', NULL);
insert into texts values (102, 3, 'The products produced by the pharmaceutical industry are lifesaving and essential – and in the U.S., access to them depends on insurance status. Chemical companies have also avoided up to $2.3 billion dollars in taxes.', 'www.thenation.com/article/archive/pharmaceuticals-drugs-taxes-healthcare/', NULL, NULL);
insert into texts values (102, 5, 'Active ingredients and byproducts of the pharmaceutical manufacturing process are “ubiquitously detected in surface water and soil, where they affect living systems”. The chemical industry is also a major source of air and water pollution.', 'pubmed.ncbi.nlm.nih.gov/29934904/', 'www.unep.org/news-and-stories/press-release/un-report-urgent-action-needed-tackle-chemical-pollution-global', NULL);
insert into texts values (102, 6, 'Chemicals can be dangerous if not handled properly, and sites must ensure workers have the proper training. Accidents and breaches in safety can be fatal.', 'cen.acs.org/safety/industrial-safety/Chemical-Safety-Board-finalizes-two/99/web/2021/09', NULL, NULL);

-- Construction
insert into texts values (103, 1, 'Gentrification is the restoration and upgrading of deteriorated urban property by middle-class or affluent people, often resulting in displacement of lower-income people. Developers and the construction industry can often accelerate this trend by building luxury housing, targeted towards richer people. ', 'www.urbandisplacement.org/about/what-are-gentrification-and-displacement/', 'nlihc.org/resource/gentrification-and-neighborhood-revitalization-whats-difference', NULL);
insert into texts values (103, 2, 'Faced with a labor shortage and trying to keep costs low, construction firms may employ undocumented workers for less money in worse conditions – these workers do not have the protections they deserve.', 'www.umass.edu/sbs/news/study-exploitation-undocumented-workers-residential-construction-costs-ma-taxpayers-82-million', NULL, NULL);
insert into texts values (103, 5, 'Concrete contributes about 8% of the world’s carbon dioxide emissions – a huge number. The construction industry also has major impacts in terms of fuel consumption, noise pollution, waste generation, and site contamination.', 'www.bbc.com/news/science-environment-46455844', 'thompsontractor.com/about/resources-(1)/construction-industry-and-the-environment', NULL);
insert into texts values (103, 6, 'Safety on construction sites is a priority, as workers use dangerous equipment and are exposed to environmental hazards, like tripping over wires. About 1 in 5 of worker fatalities in private industry in 2019 were working in construction, says OSHA.', 'www.osha.gov/data/commonstats', NULL, NULL);

-- Defense
insert into texts values (104, 1, 'The U.S. military has a major issue of sexual assault, which primarily affects women servicemembers.', 'www.nytimes.com/2021/08/03/magazine/military-sexual-assault.html', NULL, NULL);
insert into texts values (104, 2, 'Defense contractors may violate overtime laws due to incorrect assumptions. Also, the U.S. military tends to recruit poorer people, who may see the military as a path out of poverty.', 'morelandlaw.com/why-defense-contractors-frequently-violate-federal-overtime-law/',  'newrepublic.com/article/156131/military-views-poor-kids-fodder-forever-wars', NULL);
insert into texts values (104, 3, 'The United States spends more on defense than the next eleven countries combined. Also, the military-industrial complex creates profit incentives for the United States to go to war more often. For instance, the US withdrawal from Afghanistan is predicted to increase the value of defense stocks.', 'www.pgpf.org/chart-archive/0053_defense-comparison', 'www.npr.org/2011/01/17/132942244/ikes-warning-of-military-expansion-50-years-later', 'www.barrons.com/articles/what-the-afghanistan-withdrawal-means-for-defense-stocks-51629210681');
insert into texts values (104, 4, 'Some programs for national defense may collect data from an unconsenting public. In 2013, Edward Snowden revealed that the National Security Agency was surveilling Americans to an unprecedented extent.', 'www.theguardian.com/world/2013/jun/09/edward-snowden-nsa-whistleblower-surveillance', NULL, NULL);
insert into texts values (104, 5, 'The U.S. military is one of the biggest consumers of fossil fuels worldwide, and its military bases have been found to cause illness in people who live nearby. The radioactive fallout from nuclear weapons testing can have severe health impacts as well.', 'www.gq.com/story/military-climate-change-cycle', 'pubmed.ncbi.nlm.nih.gov/31757565/', 'www.epa.gov/radtown/radioactive-fallout-nuclear-weapons-testing');
insert into texts values (104, 6, 'Products made by the defense industry, like missiles, are designed to kill people. These missiles may be deployed during times of peace to send a message, and yet still result in death.', 'www.nytimes.com/2017/04/06/world/middleeast/us-said-to-weigh-military-responses-to-syrian-chemical-attack.html', NULL, NULL);

-- Electric Power, Telecom, and Utility
insert into texts values (105, 1, 'Utility rate hikes can harm low-income families, who may not have the resources to pay the higher rates and then must contend with shutoffs.', 'appvoices.org/2021/06/21/duke-energy-rate-hike-harms-low-income-families/', NULL, NULL);
insert into texts values (105, 3, 'Most customers are served by investor-owned utilities, which can prioritize profits over service, as the Public Power NY coalition points out.', 'www.eia.gov/todayinenergy/detail.php?id=40913', 'www.publicpowerny.org/about/', NULL);
insert into texts values (105, 5, 'Electricity generation relies mostly on coal and natural gas, both fossil fuels, and produces over 5,000 million metric tons of CO2 every year, although this number is declining.', 'www.eia.gov/environment/emissions/carbon/', NULL, NULL);
insert into texts values (105, 6, 'Similar to construction, utilities workers face safety risks such as heights and electrical hazards, that must be well-managed.', 'www.360training.com/blog/new-survey-reveals-rise-workplace-safety-concerns', NULL, NULL);

-- Electronics
insert into texts values (106, 1, 'Most of the e-waste generated by the electronics industry ends up in vast piles in developing nations, like India, where it may be burned and cause grave respiratory health problems. ', 'pulitzercenter.org/stories/india-rising-tide-e-waste', NULL, NULL);
insert into texts values (106, 2, 'The electronics industry relies on a supply chain that is at high risk for modern slavery in both production and materials mining, although major companies have taken steps to eliminate forced labor practices among their suppliers.', 'sdgresources.relx.com/reports/ethical-sourcing-risks-global-electronics-supply-chains', NULL, NULL);
insert into texts values (106, 3, 'Many electronics companies find ways to avoid paying taxes – like the ones on this list.', 'www.businessinsider.com/tech-companies-dont-pay-federal-income-taxes-amazon-gm-2019-11', NULL, NULL);
insert into texts values (106, 4, 'The internet of things, an approach driven by the electronics industry to make devices more interconnected, have very little oversight of what data they collect and how it is sold.', 'www.consumerreports.org/internet-of-things/gifts-that-snoop-internet-of-things-privacy-concerns-a7417726356/', NULL, NULL);
insert into texts values (106, 5, 'The electronics industry contributes to e-waste, air pollution, and water contamination, although there is a push towards more recycling. Semiconductors, in particular, are manufactured using greenhouse gases, of which 10-80% are unreacted and pass into the atmosphere.', 'connectorsupplier.com/moving-towards-greener-electronics-industry', 'www.epa.gov/f-gas-partnership-programs/semiconductor-industry', NULL);

-- Energy
insert into texts values (107, 1, 'Oil pipelines are often run on Indigenous land – violating sovereignty and poisoning water resources. One such project, Line 3, would bring tar sands from Alberta over sensitive wetlands in the United States.', 'abcnews.go.com/US/opponents-line-pipeline-project-threatens-bidens-climate-legacy/story?id=80844864', NULL, NULL);
insert into texts values (107, 2, 'As the world transitions to more sustainable energy, oil and gas workers will find their jobs to be in less demand, although these jobs can be retrained in a “just transition”. ', 'www.thechemicalengineer.com/features/oil-and-gas-workers-have-their-say-on-the-just-transition/', NULL, NULL);
insert into texts values (107, 3, 'Current US tax policy incentivizes the extraction of fossil fuels, such that oil and gas companies do not pay corporate taxes.', 'www.taxpolicycenter.org/briefing-book/what-tax-incentives-encourage-energy-production-fossil-fuels', NULL, NULL);
insert into texts values (107, 5, 'Fossil fuels are the major contributor to climate change, which is warming the planet and making it inhospitable to human and animal life.', 'climate.nasa.gov/causes/', NULL, NULL);
insert into texts values (107, 6, 'Drilling activity in the oil and gas industry is linked to more worker deaths – seven times higher than the average rate for all industries.', 'www.1stcommercialcredit.com/blog/workplace-safety-issues-oil-gas-industry', NULL, NULL);

-- Manufacturing
insert into texts values (108, 2, 'Due to NAFTA and other free trade agreements, items that may once have been made by American workers are now being made by workers in other countries, like Mexico or China – which leads to cities like Detroit losing many resources.', 'www.forbes.com/sites/kenrapoza/2020/09/01/gm-leads-in-shipping-jobs-to-mexico-company-shifting-focus-to-china/', NULL, NULL);
insert into texts values (108, 3, 'The manufacturing industry, like every industry, spends a lot of money on lobbying – which, while not inherently good or bad, does seek to influence policies or gain government funding for their activities.', NULL, NULL, NULL);
insert into texts values (108, 5, 'Manufacturing plants use significant energy, some of which is lost, to transform raw materials into finished products. Much like chemicals, manufacturing by-products pollute surrounding areas, and remediating this waste is an important consideration. ', 'www1.eere.energy.gov/manufacturing/pdfs/understanding_energy_footprints.pdf', 'www.safewater.org/fact-sheets-1/2017/1/23/industrial-waste', NULL);
insert into texts values (108, 6, 'Manufacturing accounts for most private industry nonfatal injuries, according to OSHA.', 'www.bls.gov/news.release/archives/osh_11042020.pdf', NULL, NULL);

-- Education
insert into texts values (110, 1, 'A high-quality public education is not available to every student, and, in fact, one’s zip code can determine their school experience and future earnings.', 'edlanta.org/2020/07/for-black-students-your-zip-code-determines-the-quality-of-education-and-income-you-receive/', NULL, NULL);
insert into texts values (110, 2, 'K-12 teachers, mostly women, are overworked and underpaid, expected to fulfill their duties as teachers but also to support students emotionally and materially by buying classroom supplies out of their own pockets. Rather than adequately funding poverty alleviation, teachers often bear the brunt of social issues.', 'www.nytimes.com/2021/06/15/learning/the-american-teachers-plight-underappreciated-underpaid-and-overworked.html', NULL, NULL);
insert into texts values (110, 3, 'Charter schools, which are funded with public money but privately owned, are a mixed bag of quality (in some studies, they improve student outcomes; in others, they have no effect or worsen student outcomes) – but participate in a larger trend of privatizing education, a public good.', 'www.ncsl.org/research/education/charter-schools-research-and-report.aspx', NULL, NULL);
insert into texts values (110, 4, 'The advent of “personalized learning” in edtech (education technology) comes with serious privacy and equity concerns – namely, who owns the data, how is it used, and how do we know it doesn’t discriminate?', 'link.springer.com/article/10.1007/s10676-018-9492-2', NULL, NULL);

-- Financial Services
insert into texts values (111, 1, 'Practices like redlining affect who has access to funding for big financial decisions, like buying a house. When financial institutions discriminate based on race or other factors, they prevent families from building wealth to the same extent as their counterparts.', 'a816-dohbesp.nyc.gov/IndicatorPublic/Closerlook/redlining/index.html', NULL, NULL);
insert into texts values (111, 4, 'Digital banking, as with anything on the internet, raises security and privacy concerns about people’s accounts – in the United States, there is no federal standard for regulating the collection and use of consumer data, but there are some financial industry-specific regulations.  ', 'www.forbes.com/advisor/banking/digital-banking-consumer-data-privacy-concerns/', NULL, NULL);
insert into texts values (111, 5, 'Building new fossil fuel infrastructure is expensive, so banks provide that funding – without it, there would certainly be fewer emissions. That said, the movement to divest from fossil fuels is growing strength at the grassroots level, and could be a path forward for the industry.', 'www.cnbc.com/2021/04/22/which-banks-are-increasing-decreasing-fossil-fuel-financing-.html', 'www.nytimes.com/2021/10/26/opinion/climate-change-divestment-fossil-fuels.html', NULL);

-- Healthcare
insert into texts values (112, 1, 'One’s race can sharply affect their healthcare outcomes. One of the most striking examples is Black maternal mortality – Black mothers die at three times the rate of white women, even in states with the lowest mortality rates.', 'www.stkate.edu/academics/healthcare-degrees/black-women-maternal-mortality', NULL, NULL);
insert into texts values (112, 2, 'Some hospitals, run for profit, are seeking to cut costs by employing fewer workers and having them care for more patients. This has caused healthcare workers, particularly nurses, to go on strike protesting low wages and unsafe staffing ratios.', 'www.healthcaredive.com/news/2000-workers-catholic-health-mercy-new-york-strike-open/607547/', NULL, NULL);
insert into texts values (112, 4, 'Medical record privacy is regulated under HIPAA, and ensuring this information remains private is of the utmost importance.', 'www.cdc.gov/phlp/publications/topic/healthinformationprivacy.html', NULL, NULL);
insert into texts values (112, 5, 'Healthcare services are estimated to contribute between 1% and 5% to global carbon emissions – think of all those single-use syringes!', 'www.thelancet.com/journals/lanplh/article/PIIS2542-5196(20)30121-2/fulltext', NULL, NULL);
insert into texts values (112, 6, 'As in the "equity" section, low staffing causes more patients to die in hospitals.', 'pubmed.ncbi.nlm.nih.gov/30516947/', NULL, NULL);

-- Software
insert into texts values (113, 1, 'Equity for software workers is famously an issue – and the ways that software is applied can be deeply racist and have real-life outcomes.', 'www.theguardian.com/technology/2017/dec/04/racist-facial-recognition-white-coders-black-people-police', NULL, NULL);
insert into texts values (113, 2, 'Many tech companies employ contractors to do everything from janitorial work to writing software for the main product. This allows them to save on costs, but contractors do not have access to benefits or employee programs, which creates a two-tier system.', 'www.kqed.org/news/11741371/two-tiered-caste-system-the-world-of-white-collar-contracting-in-silicon-valley', NULL, NULL);
insert into texts values (113, 3, 'Many major tech companies famously avoid taxes and lobby against the progressive policies they claim to support.', 'www.theguardian.com/business/2021/may/31/silicon-six-tech-giants-accused-of-inflating-tax-payments-by-almost-100bn', 'www.opensecrets.org/news/2019/06/companies-political-spending-contradicts-pride-support/', NULL);
insert into texts values (113, 4, 'If you’re not paying for software, chances are the company makes money using ads. In that case, the company’s business model relies on collecting data about you to better target ads. This can lead to some pretty serious data breaches.', 'www.npr.org/2021/04/09/986005820/after-data-breach-exposes-530-million-facebook-says-it-will-not-notify-users', NULL, NULL);
insert into texts values (113, 5, 'As the world’s demand for computing continues to grow, so will the number of datacenters, which are energy-intensive. Increased use of computationally-intensive models in machine learning and computer vision translate into more greenhouse gas emissions.', 'www.datacenterknowledge.com/industry-perspectives/data-center-dilemma-our-data-destroying-environment', NULL, NULL);

-- Transportation
insert into texts values (114, 1, 'Highways built in the 1950’s and 60’s tore apart vibrant Black communities in major cities across the U.S. – destroying wealth and displacing people from their homes. The framework of transit justice is also useful here in understanding the ways that access to transportation often depends on one’s neighborhood and skin color.', 'www.bloomberg.com/news/newsletters/2021-07-28/citylab-daily-reconnecting-black-communities-torn-apart-by-highways', 'transitjustice.org/', NULL);
insert into texts values (114, 5, 'Transportation is a major contributor to greenhouse gas emissions: 29% of 2019 U.S. greenhouse gas emissions. The industry also contributes to poor air quality and dependence on fossil fuels.', 'www.epa.gov/greenvehicles/fast-facts-transportation-greenhouse-gas-emissions', NULL, NULL);
insert into texts values (114, 6, 'Most transportation in the U.S. is done in cars, which kill over 100 people every day. Designing safer streets often means designing for slower cars and more space for pedestrians and cyclists.', 'www.cdc.gov/transportationsafety/index.html', NULL, NULL);

-- Other
insert into texts values (115, 1, 'If you chose “other,” you may not know what career you want to pursue, or your chosen career may not be in one of these fields. In any case, feel free to select another industry to explore various ethical challenges there.', NULL, NULL, NULL);
insert into texts values (115, 2, 'If you chose “other,” you may not know what career you want to pursue, or your chosen career may not be in one of these fields. In any case, feel free to select another industry to explore various ethical challenges there.', NULL, NULL, NULL);
insert into texts values (115, 3, 'If you chose “other,” you may not know what career you want to pursue, or your chosen career may not be in one of these fields. In any case, feel free to select another industry to explore various ethical challenges there.', NULL, NULL, NULL);
insert into texts values (115, 4, 'If you chose “other,” you may not know what career you want to pursue, or your chosen career may not be in one of these fields. In any case, feel free to select another industry to explore various ethical challenges there.', NULL, NULL, NULL);
insert into texts values (115, 5, 'If you chose “other,” you may not know what career you want to pursue, or your chosen career may not be in one of these fields. In any case, feel free to select another industry to explore various ethical challenges there.', NULL, NULL, NULL);
insert into texts values (115, 6, 'If you chose “other,” you may not know what career you want to pursue, or your chosen career may not be in one of these fields. In any case, feel free to select another industry to explore various ethical challenges there.', NULL, NULL, NULL);


-- id, name, %white, %black, %asian, %hispanic/latino
insert into race values (100, 'Agriculture', 92.4, 2.8, 1.2, 24.2);
insert into race values (101, 'Aerospace & Automotive', 86.5, 7.4, 2.6, 25.1);
insert into race values (102, 'Chemical & Pharmaceutical', 76.7, 9.8, 11.1, 14.3);
insert into race values (103, 'Construction', 88.6, 6.0, 2.0, 30.0);
insert into race values (104, 'Defense', 69.1, 16.8, 4.4, 17.9);
insert into race values (105, 'Electric Power, Telecom, & Utility', 84.9, 8.1, 4.5, 14.2);
insert into race values (106, 'Electronics', 67.5, 7.8, 22.6, 7.5);
insert into race values (107, 'Energy', 87.2, 4.6, 4.2, 17.0);
insert into race values (108, 'Manufacturing', 79.5, 12.1, 12.9, 22.8);
insert into race values (110, 'Education', 80.7, 10.8, 5.4, 12.5);
insert into race values (111, 'Financial Services', 77.5, 10.8, 9.3, 11.4);
insert into race values (112, 'Healthcare', 72.5, 17.4, 6.8, 13.6);
insert into race values (113, 'Software', 66.5, 7.5, 22.7, 9.0);
insert into race values (114, 'Transportation', 70.1, 20.7, 5.6, 20.8);
insert into race values (115, 'Other', 78.5, 10.3, 7.7, 19.7);

-- mid, iid
insert into matches values (13, 103); -- CivE matches
insert into matches values (13, 104);
insert into matches values (13, 105);
insert into matches values (13, 107);
insert into matches values (13, 108);
insert into matches values (13, 109);
insert into matches values (13, 110);
insert into matches values (13, 114);
insert into matches values (13, 115);

insert into matches values (11, 102); -- ChemE matches
insert into matches values (11, 107);
insert into matches values (11, 108);
insert into matches values (11, 109);
insert into matches values (11, 110);
insert into matches values (11, 112);
insert into matches values (11, 115);


insert into matches values (12, 100); -- EE matches
insert into matches values (12, 101);
insert into matches values (12, 103);
insert into matches values (12, 104);
insert into matches values (12, 105);
insert into matches values (12, 106);
insert into matches values (12, 107);
insert into matches values (12, 110);
insert into matches values (12, 111);
insert into matches values (12, 112);
insert into matches values (12, 113);
insert into matches values (12, 114);
insert into matches values (12, 115);

insert into matches values (10, 100); -- MechE matches
insert into matches values (10, 101);
insert into matches values (10, 103);
insert into matches values (10, 104);
insert into matches values (10, 105);
insert into matches values (10, 107);
insert into matches values (10, 108);
insert into matches values (10, 109);
insert into matches values (10, 110);
insert into matches values (10, 112);
insert into matches values (10, 114);
insert into matches values (10, 115);

