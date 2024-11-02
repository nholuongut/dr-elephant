insert into yarn_app_result
    (id,name,username,queue_name,start_time,finish_time,tracking_url,job_type,severity,score,workflow_depth,scheduler,job_name,job_exec_id,flow_exec_id,job_def_id,flow_def_id,job_exec_url,flow_exec_url,job_def_url,flow_def_url,resource_used,resource_wasted,total_delay) values
    ('application_1458194917883_1453361','Email Overwriter','growth','misc_default',1460980616502,1460980723925,'http://elephant.nholuongut.com:19888/jobhistory/job/job_1458194917883_1453361','HadoopJava',0,0,0,'azkaban','overwriter-reminder2','https://elephant.nholuongut.com:8443/executor?execid=1654676&job=overwriter-reminder2&attempt=0','https://elephant.nholuongut.com:8443/executor?execid=1654676','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder&job=overwriter-reminder2','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder','https://elephant.nholuongut.com:8443/executor?execid=1654676&job=overwriter-reminder2&attempt=0','https://elephant.nholuongut.com:8443/executor?execid=1654676','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder&job=overwriter-reminder2','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder', 100, 30, 20),
    ('application_1458194917883_1453362','Email Overwriter','metrics','misc_default',1460980823925,1460980923925,'http://elephant.nholuongut.com:19888/jobhistory/job/job_1458194917883_1453362','HadoopJava',0,0,0,'azkaban','overwriter-reminder2','https://elephant.nholuongut.com:8443/executor?execid=1654677&job=overwriter-reminder2&attempt=0','https://elephant.nholuongut.com:8443/executor?execid=1654677','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder&job=overwriter-reminder2','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder','https://elephant.nholuongut.com:8443/executor?execid=1654677&job=overwriter-reminder2&attempt=0','https://elephant.nholuongut.com:8443/executor?execid=1654677','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder&job=overwriter-reminder2','https://elephant.nholuongut.com:8443/manager?project=b2-confirm-email-reminder&flow=reminder', 200, 40, 10);

insert into yarn_app_heuristic_result(id,yarn_app_result_id,heuristic_class,heuristic_name,severity,score) values (137594512,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.MapperSkewHeuristic','Mapper Skew',0,0), (137594513,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.MapperGCHeuristic','Mapper GC',0,0), (137594516,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.MapperTimeHeuristic','Mapper Time',0,0), (137594520,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.MapperSpeedHeuristic','Mapper Speed',0,0), (137594523,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.MapperSpillHeuristic','Mapper Spill',0,0), (137594525,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.MapperMemoryHeuristic','Mapper Memory',0,0), (137594530,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.ReducerSkewHeuristic','Reducer Skew',0,0), (137594531,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.ReducerGCHeuristic','Reducer Time',0,0), (137594534,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.ReducerTimeHeuristic','Reducer GC',0,0), (137594537,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.ReducerMemoryHeuristic','Reducer Memory',0,0), (137594540,'application_1458194917883_1453361','com.nholuongut.drelephant.mapreduce.heuristics.ShuffleSortHeuristic','Shuffle & Sort',0,0), (137594612,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.MapperSkewHeuristic','Mapper Skew',0,0), (137594613,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.MapperGCHeuristic','Mapper GC',0,0), (137594616,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.MapperTimeHeuristic','Mapper Time',0,0), (137594620,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.MapperSpeedHeuristic','Mapper Speed',0,0), (137594623,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.MapperSpillHeuristic','Mapper Spill',0,0), (137594625,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.MapperMemoryHeuristic','Mapper Memory',0,0), (137594630,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.ReducerSkewHeuristic','Reducer Skew',0,0), (137594631,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.ReducerGCHeuristic','Reducer Time',0,0), (137594634,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.ReducerTimeHeuristic','Reducer GC',0,0), (137594637,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.ReducerMemoryHeuristic','Reducer Memory',0,0), (137594640,'application_1458194917883_1453362','com.nholuongut.drelephant.mapreduce.heuristics.ShuffleSortHeuristic','Shuffle & Sort',0,0);

insert into yarn_app_heuristic_result_details (yarn_app_heuristic_result_id,name,value,details) values (137594512,'Group A','1 tasks @ 4 MB avg','NULL'), (137594512,'Group B','1 tasks @ 79 MB avg','NULL'), (137594512,'Number of tasks','2','NULL'), (137594513,'Avg task CPU time (ms)','11510','NULL'), (137594513,'Avg task GC time (ms)','76','NULL'), (137594513,'Avg task runtime (ms)','11851','NULL'), (137594513,'Number of tasks','2','NULL'), (137594513,'Task GC/CPU ratio','0.006602953953084275 ','NULL'), (137594516,'Average task input size','42 MB','NULL'), (137594516,'Average task runtime','11 sec','NULL'), (137594516,'Max task runtime','12 sec','NULL'), (137594516,'Min task runtime','11 sec','NULL'), (137594516,'Number of tasks','2','NULL'), (137594520,'Median task input size','42 MB','NULL'), (137594520,'Median task runtime','11 sec','NULL'), (137594520,'Median task speed','3 MB/s','NULL'), (137594520,'Number of tasks','2','NULL'), (137594523,'Avg output records per task','56687','NULL'), (137594523,'Avg spilled records per task','79913','NULL'), (137594523,'Number of tasks','2','NULL'), (137594523,'Ratio of spilled records to output records','1.4097111356119074','NULL'), (137594525,'Avg Physical Memory (MB)','522','NULL'), (137594525,'Avg task runtime','11 sec','NULL'), (137594525,'Avg Virtual Memory (MB)','3307','NULL'), (137594525,'Max Physical Memory (MB)','595','NULL'), (137594525,'Min Physical Memory (MB)','449','NULL'), (137594525,'Number of tasks','2','NULL'), (137594525,'Requested Container Memory','2 GB','NULL'), (137594530,'Group A','11 tasks @ 868 KB avg','NULL'), (137594530,'Group B','9 tasks @ 883 KB avg ','NULL'), (137594530,'Number of tasks','20','NULL'), (137594531,'Avg task CPU time (ms)','8912','NULL'), (137594531,'Avg task GC time (ms)','73','NULL'), (137594531,'Avg task runtime (ms)','11045','NULL'), (137594531,'Number of tasks','20','NULL'), (137594531,'Task GC/CPU ratio','0.008191202872531419 ','NULL'), (137594534,'Average task runtime','11 sec','NULL'), (137594534,'Max task runtime','14 sec','NULL'), (137594534,'Min task runtime','8 sec','NULL'), (137594534,'Number of tasks','20','NULL'), (137594537,'Avg Physical Memory (MB)','416','NULL'), (137594537,'Avg task runtime','11 sec','NULL'), (137594537,'Avg Virtual Memory (MB)','3326','NULL'), (137594537,'Max Physical Memory (MB)','497','NULL'), (137594537,'Min Physical Memory (MB)','354','NULL'), (137594537,'Number of tasks','20','NULL'), (137594537,'Requested Container Memory','2 GB','NULL'), (137594540,'Average code runtime','1 sec','NULL'), (137594540,'Average shuffle time','9 sec (5.49x)','NULL'), (137594540,'Average sort time','(0.04x)','NULL'), (137594540,'Number of tasks','20','NULL'), (137594612,'Group A','1 tasks @ 4 MB avg','NULL'), (137594612,'Group B','1 tasks @ 79 MB avg','NULL'), (137594612,'Number of tasks','2','NULL'), (137594613,'Avg task CPU time (ms)','11510','NULL'), (137594613,'Avg task GC time (ms)','76','NULL'), (137594613,'Avg task runtime (ms)','11851','NULL'), (137594613,'Number of tasks','2','NULL'), (137594613,'Task GC/CPU ratio','0.006602953953084275 ','NULL'), (137594616,'Average task input size','42 MB','NULL'), (137594616,'Average task runtime','11 sec','NULL'), (137594616,'Max task runtime','12 sec','NULL'), (137594616,'Min task runtime','11 sec','NULL'), (137594616,'Number of tasks','2','NULL'), (137594620,'Median task input size','42 MB','NULL'), (137594620,'Median task runtime','11 sec','NULL'), (137594620,'Median task speed','3 MB/s','NULL'), (137594620,'Number of tasks','2','NULL'), (137594623,'Avg output records per task','56687','NULL'), (137594623,'Avg spilled records per task','79913','NULL'), (137594623,'Number of tasks','2','NULL'), (137594623,'Ratio of spilled records to output records','1.4097111356119074','NULL'), (137594625,'Avg Physical Memory (MB)','522','NULL'), (137594625,'Avg task runtime','11 sec','NULL'), (137594625,'Avg Virtual Memory (MB)','3307','NULL'), (137594625,'Max Physical Memory (MB)','595','NULL'), (137594625,'Min Physical Memory (MB)','449','NULL'), (137594625,'Number of tasks','2','NULL'), (137594625,'Requested Container Memory','2 GB','NULL'), (137594630,'Group A','11 tasks @ 868 KB avg','NULL'), (137594630,'Group B','9 tasks @ 883 KB avg ','NULL'), (137594630,'Number of tasks','20','NULL'), (137594631,'Avg task CPU time (ms)','8912','NULL'), (137594631,'Avg task GC time (ms)','73','NULL'), (137594631,'Avg task runtime (ms)','11045','NULL'), (137594631,'Number of tasks','20','NULL'), (137594631,'Task GC/CPU ratio','0.008191202872531419 ','NULL'), (137594634,'Average task runtime','11 sec','NULL'), (137594634,'Max task runtime','14 sec','NULL'), (137594634,'Min task runtime','8 sec','NULL'), (137594634,'Number of tasks','20','NULL'), (137594637,'Avg Physical Memory (MB)','416','NULL'), (137594637,'Avg task runtime','11 sec','NULL'), (137594637,'Avg Virtual Memory (MB)','3326','NULL'), (137594637,'Max Physical Memory (MB)','497','NULL'), (137594637,'Min Physical Memory (MB)','354','NULL'), (137594637,'Number of tasks','20','NULL'), (137594637,'Requested Container Memory','2 GB','NULL'), (137594640,'Average code runtime','1 sec','NULL'), (137594640,'Average shuffle time','9 sec (5.49x)','NULL'), (137594640,'Average sort time','(0.04x)','NULL'), (137594640,'Number of tasks','20','NULL');

INSERT INTO flow_definition(id, flow_def_id, flow_def_url) VALUES (10003,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/manager?project=AzkabanHelloPigTest&flow=countByCountryFlow','https://ltx1-holdemaz01.grid.nholuongut.com:8443/manager?project=AzkabanHelloPigTest&flow=countByCountryFlow');

INSERT INTO job_definition(id, job_def_id, flow_definition_id, job_name, job_def_url, scheduler, username, created_ts, updated_ts) VALUES (100003,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/manager?project=AzkabanHelloPigTest&flow=countByCountryFlow&job=countByCountryFlow_countByCountry',10003,'countByCountryFlow_countByCountry','https://ltx1-holdemaz01.grid.nholuongut.com:8443/manager?project=AzkabanHelloPigTest&flow=countByCountryFlow&job=countByCountryFlow_countByCountry','azkaban','mkumar1','2018-02-12 08:40:42','2018-02-12 08:40:43');

--INSERT INTO tuning_algorithm VALUES (1,'PIG','PSO',1,'RESOURCE','2018-02-06 17:03:23','2018-02-06 17:03:23');

-- INSERT INTO tuning_parameter VALUES (1,'mapreduce.task.io.sort.mb',1,100,50,1920,50,0,'2018-02-06 17:03:23','2018-02-06 17:03:23'),(2,'mapreduce.map.memory.mb',1,2048,1536,8192,128,0,'2018-02-06 17:03:23','2018-02-06 17:03:23'),(3,'mapreduce.task.io.sort.factor',1,10,10,150,10,0,'2018-02-06 17:03:23','2018-02-06 17:03:23'),(4,'mapreduce.map.sort.spill.percent',1,0.8,0.6,0.9,0.1,0,'2018-02-06 17:03:24','2018-02-06 17:03:24'),(5,'mapreduce.reduce.memory.mb',1,2048,1536,8192,128,0,'2018-02-06 17:03:24','2018-02-06 17:03:24'),(6,'pig.maxCombinedSplitSize',1,536870912,536870912,536870912,128,0,'2018-02-06 17:03:24','2018-02-06 17:03:24'),(7,'mapreduce.reduce.java.opts',1,1536,1152,6144,128,1,'2018-02-06 17:03:24','2018-02-06 17:03:24'),(8,'mapreduce.map.java.opts',1,1536,1152,6144,128,1,'2018-02-06 17:03:24','2018-02-06 17:03:24'),(9,'mapreduce.input.fileinputformat.split.maxsize',1,536870912,536870912,536870912,128,1,'2018-02-06 17:03:24','2018-02-06 17:03:24');

INSERT INTO tuning_job_definition(job_definition_id, client, tuning_algorithm_id, tuning_enabled, average_resource_usage, average_execution_time, average_input_size_in_bytes, allowed_max_resource_usage_percent, allowed_max_execution_time_percent, created_ts, updated_ts, tuning_disabled_reason)
VALUES (100003,'azkaban',1,1,40.29456456163195,5.178423333333334,324168876088,150,150,'2018-02-12 08:40:42','2018-02-12 08:40:43', NULL);

INSERT INTO flow_execution(id, flow_exec_id, flow_exec_url, flow_definition_id) VALUES (1496,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416293','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416293',10003),(1497,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416389','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416389',10003),(1498,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416495','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416495',10003),(1499,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416589','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416589',10003),(1500,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416680','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416680',10003),(1501,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416818','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416818',10003),(1502,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5417057','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5417057',10003);

INSERT INTO job_execution(id, job_exec_id, job_exec_url, job_definition_id, flow_execution_id, execution_state, resource_usage, execution_time, input_size_in_bytes, created_ts, updated_ts) VALUES (1541,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416293&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416293&job=countByCountryFlow_countByCountry&attempt=0',100003,1496,'SUCCEEDED',21.132545572916666,3.2694833333333335,324713861757,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(1542,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416389&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416389&job=countByCountryFlow_countByCountry&attempt=0',100003,1497,'SUCCEEDED',23.334004991319443,3.6118166666666665,324713861757,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(1543,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416495&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416495&job=countByCountryFlow_countByCountry&attempt=0',100003,1498,'SUCCEEDED',21.28552951388889,3.2940833333333335,324713861757,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(1544,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416589&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416589&job=countByCountryFlow_countByCountry&attempt=0',100003,1499,'SUCCEEDED',21.630970052083335,3.9560833333333334,324713861757,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(1545,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416680&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416680&job=countByCountryFlow_countByCountry&attempt=0',100003,1500,'SUCCEEDED',22.328486328125,3.7285166666666667,324713861757,'2018-02-14 07:29:47','2018-02-14 07:29:48'),(1546,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416818&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5416818&job=countByCountryFlow_countByCountry&attempt=0',100003,1501,'SUCCEEDED',32.16945149739583,5.203783333333333,324713861757,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(1547,'https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5417057&job=countByCountryFlow_countByCountry&attempt=0','https://ltx1-holdemaz01.grid.nholuongut.com:8443/executor?execid=5417057&job=countByCountryFlow_countByCountry&attempt=0',100003,1502,'SUCCEEDED', 27.2955078125, 4.047583333333334, 324713861757,'2018-02-14 07:29:48','2018-02-14 07:29:48');

INSERT INTO tuning_job_execution(job_execution_id, tuning_algorithm_id, param_set_state, is_default_execution, fitness, is_param_set_best) VALUES (1541,1,'FITNESS_COMPUTED',0,0.06987967161749142,0),
(1542,1,'FITNESS_COMPUTED',0,0.07715930864495756,0),
(1543,1,'FITNESS_COMPUTED',0,0.07038554856075895,0),
(1544,1,'FITNESS_COMPUTED',0,0.07152782795578526,0),
(1545,1,'FITNESS_COMPUTED',0,0.07383432757503201,0),
(1546,1,'FITNESS_COMPUTED',0,0.10637576523832741,0),
(1547,1,'FITNESS_COMPUTED',0,0.09025893809095505,0);

-- INSERT INTO job_saved_state (job_definition_id, saved_state) VALUES (100003,'{\"current_population\":[{\"birthdate\":1.518593387909695E9,\"maximize\":false,\"candidate\":[159.88928672056016,1536.0,10.0,0.770164839202443,2863.372720073011,5.36870912E8],\"fitness\":10000.0,\"paramSetId\":1545,\"_candidate\":[159.88928672056016,1536.0,10.0,0.770164839202443,2863.372720073011,5.36870912E8]},{\"birthdate\":1.518593387909696E9,\"maximize\":false,\"candidate\":[201.64225529876035,1536.0,10.29839988592941,0.7635183100860585,2789.189282499988,5.36870912E8],\"fitness\":10000.0,\"paramSetId\":1546,\"_candidate\":[201.64225529876035,1536.0,10.29839988592941,0.7635183100860585,2789.189282499988,5.36870912E8]},{\"birthdate\":1.518593387909698E9,\"maximize\":false,\"candidate\":[149.52419594024295,1536.0,10.0,0.7630834894363029,2844.1716734703073,5.36870912E8],\"fitness\":10000.0,\"paramSetId\":1547,\"_candidate\":[149.52419594024295,1536.0,10.0,0.7630834894363029,2844.1716734703073,5.36870912E8]}],\"prev_population\":[{\"_candidate\":[162.7907384046847,1536.0,10.0,0.7632081784681852,2809.5806453243313,5.36870912E8],\"maximize\":false,\"birthdate\":1.518593387909403E9,\"fitness\":0.07715930864495756},{\"_candidate\":[124.05878355054111,1536.0,12.521341191290857,0.7622909149004323,2041.562366831904,5.36870912E8],\"maximize\":false,\"birthdate\":1.518593387909406E9,\"fitness\":0.07038554856075895},{\"_candidate\":[149.51252503919468,1536.0,10.0,0.7619961998308155,2844.326081249364,5.36870912E8],\"maximize\":false,\"birthdate\":1.518593387909407E9,\"fitness\":0.07152782795578526}],\"archive\":[{\"birthday\":1.518589785163133E9,\"_candidate\":[214.91248065459718,1536.0,10.0,0.7684337983774014,2810.072296417105,5.36870912E8],\"maximize\":false,\"birthdate\":1.518593387904912E9,\"fitness\":0.06798720858096566},{\"_candidate\":[124.05878355054111,1536.0,12.521341191290857,0.7622909149004323,2041.562366831904,5.36870912E8],\"maximize\":false,\"birthdate\":1.518593387909406E9,\"fitness\":0.07038554856075895},{\"birthday\":1.518589785163142E9,\"_candidate\":[149.5180195836781,1536.0,10.0,0.7624156183109899,2844.240241069899,5.36870912E8],\"maximize\":false,\"birthdate\":1.518593387904921E9,\"fitness\":0.06753575007445276}],\"rnd_state\":\"[3, [436764630, 3845696172, 1536093292, 3091223851, 1875971029, 1714861982, 2792470647, 3065135847, 2614095987, 3861985834, 3271806303, 1346964832, 3502746452, 2479553754, 2365815367, 4052784148, 98894269, 865838453, 378106826, 223993858, 4003299431, 4066675665, 203485080, 591015950, 2009306943, 209194928, 1127412241, 780814913, 2127898994, 1397125766, 2388957036, 2132624000, 2298888066, 2872527307, 2469348483, 1291602844, 3055370485, 2875413348, 1561776770, 44416253, 2399434358, 3500131466, 921216978, 4241064332, 436769369, 3842353021, 307088723, 1108438886, 3147936013, 2878320949, 306583468, 2017374956, 3295572824, 3273465645, 1897933257, 319521868, 2207782720, 1273667531, 372255185, 4062657208, 411612960, 282273738, 1946543237, 3282301954, 441294767, 4284945843, 1049714129, 2018344119, 1501407651, 3952558232, 3193503080, 3824343591, 3881423919, 77231396, 3043228678, 4105014263, 1763641998, 2079208800, 4077989659, 3535532484, 266896722, 3238452269, 3389015947, 3300573445, 400677334, 86727356, 492103313, 2873593589, 3349834695, 2913301047, 1420741021, 50847724, 1599203833, 3743114912, 2826729030, 3192901431, 2123130625, 392187268, 3073037125, 929590156, 4037814058, 1884481338, 2743891587, 4008113834, 258439194, 1605236424, 65715142, 1777541766, 2364169967, 3153165247, 3110291887, 1630800170, 1838776728, 3106288739, 430636498, 2880404702, 1852472028, 1552499468, 2539957287, 3785077327, 3823438269, 3242387062, 2983664566, 3249832040, 865349220, 1794595840, 2821840008, 3923234509, 1623391669, 2809627269, 2617933073, 3106890857, 3058957671, 2708135756, 1562894481, 2523137886, 527517498, 2114931269, 4254571978, 568227586, 93804775, 2796328419, 558871677, 2758944023, 1124005519, 1183509574, 335486627, 504724538, 1826353090, 1127161878, 1410745185, 4037978787, 3102147541, 398636727, 4216182187, 4099107742, 3961538036, 3264622209, 2654911086, 90501146, 3002202423, 190590765, 2420050097, 2767758974, 4057723606, 252185447, 2305162223, 3613701152, 1854930647, 2683774155, 1530637790, 2320258070, 1086704260, 691720499, 3286101825, 4280735926, 568632376, 1274202416, 4194385357, 2917109897, 3616771536, 1911799859, 3508013413, 4107695527, 2298948322, 2918077160, 2166469136, 1566810333, 666358996, 3019106791, 2355339603, 127848796, 309049116, 4172598364, 451598967, 3396456615, 3397855157, 4160530966, 3792287385, 2933569340, 3158078446, 1799420732, 4233446360, 1195562564, 3812502285, 3340167346, 832972998, 4236732687, 2813517707, 660207563, 1870462423, 3783309115, 2416745730, 1342644731, 3950482077, 754564373, 2068468799, 1031651649, 2486955671, 1715492367, 2327446476, 572839923, 1207676383, 2061193945, 196943407, 1925383922, 3870569689, 3894282386, 1212693631, 1404071290, 3046879375, 2924493982, 3410043685, 3809721374, 2324452872, 834464932, 2330176976, 2860749140, 2576919325, 1731581763, 2734233631, 1307721060, 1364026888, 3650978588, 1517407670, 2245310205, 1530006937, 2955120239, 3188064498, 3417491514, 2397531047, 459089077, 4053955510, 443399345, 1796085719, 1924236593, 2043248158, 186441553, 2326275902, 2472457891, 3132406322, 939610904, 2208858507, 945878056, 109589586, 548812211, 1240173202, 3204593993, 721035164, 733233892, 4129866603, 2629432835, 103841909, 4233482652, 850252801, 662253897, 1653616235, 3491341022, 475692128, 2503334188, 355990982, 2296073816, 838210242, 3287833079, 827619964, 3900262990, 1395434945, 3626514356, 3890029739, 3246993302, 2756484700, 1020069034, 3097281098, 448129499, 3328003156, 350913378, 2016280706, 2504330849, 1069039051, 2606681503, 4105161434, 3689449592, 2290999300, 890022371, 1248474502, 2805549586, 3381461720, 3786043854, 2720553646, 994750777, 915794947, 2191214736, 207734182, 2034668448, 3462612507, 2931162527, 3404334608, 3955422702, 4101042191, 4245026154, 3080687510, 241496869, 3336337400, 3961557738, 1762565244, 982272855, 201112283, 839026428, 1053533360, 3454224402, 1310868263, 2693848699, 2099992077, 3451484296, 769531652, 2865700439, 1878592864, 2721136361, 2214123932, 3828307988, 209596659, 741099773, 3199029910, 1334965681, 1544576669, 3504078266, 25459822, 3656324319, 2163345613, 3538725464, 4097275680, 3727367002, 2639924031, 3133419113, 1947965051, 1635935439, 1049126814, 3324554030, 3132507893, 3038879776, 329990888, 3582827510, 2917953579, 3027357988, 1091197630, 1490696964, 3381934548, 1603833838, 3482203517, 2183868252, 3349292431, 2412825052, 1716350840, 1475395653, 431844396, 2931362300, 1504434771, 2130908322, 4187762748, 2537958471, 4258559043, 679552214, 4150134889, 2946590212, 50221051, 3358795689, 2017939006, 850243093, 3672955852, 249808095, 2780041635, 942783646, 574550556, 3534933632, 547576575, 2354608175, 1511213271, 4913332, 1354252006, 3751258543, 137446248, 3343068228, 3233484676, 1974227414, 3362209801, 2838722690, 2222596348, 3987178007, 3099562962, 1447343198, 2266421070, 2171410780, 724137152, 3590971377, 642460272, 358356132, 2516335475, 2281385363, 1673631698, 567570379, 2820831217, 3459305266, 593075908, 685000684, 1637393981, 3084948420, 3808715397, 786812600, 1404480468, 3736739260, 4046356764, 2277487134, 273026609, 121302633, 4029458939, 3880997922, 824988722, 1623515710, 1297465894, 3789533293, 207730144, 2664490926, 331830354, 1133560012, 2069816875, 927389900, 1259060843, 941566906, 835436573, 3953926187, 3930136621, 389315519, 4183568153, 2881497915, 1324589511, 2048359325, 1043570944, 2083395465, 1478226476, 3087455126, 23006780, 606435476, 494531655, 2130588953, 3466795601, 3747817133, 3211608416, 1749127250, 1473512503, 4141802367, 4009020451, 2169062501, 486602714, 3005612659, 260005846, 1336645235, 3457721846, 4035714886, 3551248844, 543614424, 2620675740, 972732959, 2146370990, 2444228783, 3757226413, 1787341042, 1622705784, 1002005711, 2926567845, 2450964264, 275604472, 462449927, 372609898, 2731933797, 3288882335, 28113805, 2715428189, 3304559815, 2784867699, 3629574622, 3881588857, 772925804, 3315006110, 2788002026, 1552017355, 1158208914, 3011680491, 465445743, 1709915594, 120028768, 2125877175, 3730264378, 3321247512, 3213599728, 2381392366, 136022703, 55061352, 1075511919, 1650581160, 1366656740, 949909697, 1448637601, 361121780, 3717238255, 3525154122, 734851236, 76931684, 3646466304, 1361374960, 71539262, 2847860259, 103976093, 2690312143, 2203268177, 2351464896, 3376181365, 1606789530, 2476053465, 912604440, 3183693432, 3672535607, 2110979845, 636817180, 549564144, 412837280, 40658714, 1197547156, 4071713833, 3278498849, 2457986482, 2570925070, 2773406614, 2173220569, 1144522688, 3620770026, 1622735997, 2368411802, 2011454842, 1827133664, 2585489840, 3315467888, 1711780406, 288791384, 3181545850, 703884497, 3482409752, 3690605116, 1256264409, 3474559514, 2575819952, 347868803, 1414887195, 3049697508, 2286946758, 1924076795, 3990073716, 343931456, 1347596990, 1443539675, 2711173653, 1516854237, 2203898925, 3570346377, 785743864, 78265891, 1764085862, 1871947520, 3185452642, 2924684299, 2788837988, 2502034127, 2492118039, 12747637, 2645726181, 1779979579, 2417304151, 2013047543, 2938718119, 2151179730, 1964454002, 1323558464, 182394583, 25293277, 846729988, 3138476563, 1376710613, 3520885930, 1300980659, 2039674586, 3257949269, 2308477698, 2463152670, 1053115398, 3638265799, 96951187, 1351905935, 2209891741, 748742656, 1115277914, 3976004334, 3353523651, 2009742989, 115220113, 387413820, 12], null]\"}','2018-02-12 08:41:20','2018-02-12 08:41:20');

-- INSERT INTO job_saved_state (job_definition_id, saved_state) VALUES (100003,'{}');

INSERT INTO job_suggested_param_value(id, job_execution_id, tuning_parameter_id, param_value, created_ts, updated_ts) VALUES (3209,1541,1,149.5239493606563,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3210,1541,2,1536,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3211,1541,3,10,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3212,1541,4,0.761466551875019,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3213,1541,5,2844.365182469904,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3214,1541,6,536870912,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3215,1541,7,2133.273886852428,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3216,1541,8,1152,'2018-02-14 05:30:42','2018-02-14 05:30:42'),(3217,1541,9,536870912,'2018-02-14 05:30:42','2018-02-14 05:30:42'), (3218,1542,1,162.7907384046847,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3219,1542,2,1536,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3220,1542,3,10,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3221,1542,4,0.7632081784681852,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3222,1542,5,2809.5806453243313,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3223,1542,6,536870912,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3224,1542,7,2107.1854839932485,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3225,1542,8,1152,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3226,1542,9,536870912,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3227,1543,1,124.05878355054111,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3228,1543,2,1536,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3229,1543,3,12.521341191290857,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3230,1543,4,0.7622909149004323,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3231,1543,5,2041.562366831904,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3232,1543,6,536870912,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3233,1543,7,1531.171775123928,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3234,1543,8,1152,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3235,1543,9,536870912,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3236,1544,1,149.51252503919468,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3237,1544,2,1536,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3238,1544,3,10,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3239,1544,4,0.7619961998308155,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3240,1544,5,2844.326081249364,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3241,1544,6,536870912,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3242,1544,7,2133.244560937023,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3243,1544,8,1152,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3244,1544,9,536870912,'2018-02-14 06:29:45','2018-02-14 06:29:45'),(3245,1545,1,159.88928672056016,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3246,1545,2,1536,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3247,1545,3,10,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3248,1545,4,0.770164839202443,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3249,1545,5,2863.372720073011,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3250,1545,6,536870912,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3251,1545,7,2147.5295400547584,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3252,1545,8,1152,'2018-02-14 07:29:47','2018-02-14 07:29:47'),(3253,1545,9,536870912,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3254,1546,1,201.64225529876035,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3255,1546,2,1536,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3256,1546,3,10.29839988592941,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3257,1546,4,0.7635183100860585,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3258,1546,5,2789.189282499988,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3259,1546,6,536870912,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3260,1546,7,2091.891961874991,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3261,1546,8,1152,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3262,1546,9,536870912,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3263,1547,1,149.52419594024295,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3264,1547,2,1536,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3265,1547,3,10,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3266,1547,4,0.7630834894363029,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3267,1547,5,2844.1716734703073,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3268,1547,6,536870912,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3269,1547,7,2133.1287551027303,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3270,1547,8,1152,'2018-02-14 07:29:48','2018-02-14 07:29:48'),(3271,1547,9,536870912,'2018-02-14 07:29:48','2018-02-14 07:29:48');
