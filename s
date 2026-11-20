build	Build release APK	﻿2026-11-20T17:46:38.0439283Z ##[group]Run gradle :app:assembleRelease --no-daemon --stacktrace
build	Build release APK	2026-11-20T17:46:38.0439927Z ^[[36;1mgradle :app:assembleRelease --no-daemon --stacktrace^[[0m
build	Build release APK	2026-11-20T17:46:38.0474978Z shell: /usr/bin/bash -e {0}
build	Build release APK	2026-11-20T17:46:38.0475288Z env:
build	Build release APK	2026-11-20T17:46:38.0475655Z   JAVA_HOME: /opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/17.0.21-9/x64
build	Build release APK	2026-11-20T17:46:38.0476229Z   JAVA_HOME_17_X64: /opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/17.0.21-9/x64
build	Build release APK	2026-11-20T17:46:38.0476709Z   GRADLE_ACTION_ID: gradle/actions/setup-gradle
build	Build release APK	2026-11-20T17:46:38.0477075Z   GRADLE_USER_HOME: /home/runner/.gradle
build	Build release APK	2026-11-20T17:46:38.0477415Z   GRADLE_BUILD_ACTION_SETUP_COMPLETED: true
build	Build release APK	2026-11-20T17:46:38.0477780Z   GRADLE_BUILD_ACTION_CACHE_RESTORED: true
build	Build release APK	2026-11-20T17:46:38.0478284Z   DEVELOCITY_INJECTION_INIT_SCRIPT_NAME: gradle-actions.inject-develocity.init.gradle
build	Build release APK	2026-11-20T17:46:38.0478829Z   DEVELOCITY_INJECTION_CUSTOM_VALUE: gradle-actions
build	Build release APK	2026-11-20T17:46:38.0479200Z   GITHUB_DEPENDENCY_GRAPH_ENABLED: false
build	Build release APK	2026-11-20T17:46:38.0479547Z ##[endgroup]
build	Build release APK	2026-11-20T17:46:38.8986170Z To honour the JVM settings for this build a single-use Daemon process will be forked. For more on this, please refer to https://docs.gradle.org/8.11.1/userguide/gradle_daemon.html#sec:disabling_the_daemon in the Gradle documentation.
build	Build release APK	2026-11-20T17:46:41.3976392Z Daemon will be stopped at the end of the build 
build	Build release APK	2026-11-20T17:46:54.0022316Z > Task :app:preBuild UP-TO-DATE
build	Build release APK	2026-11-20T17:46:54.0081869Z > Task :app:preReleaseBuild UP-TO-DATE
build	Build release APK	2026-11-20T17:46:54.3980448Z > Task :app:mergeReleaseJniLibFolders
build	Build release APK	2026-11-20T17:46:56.6015205Z > Task :app:mergeReleaseNativeLibs NO-SOURCE
build	Build release APK	2026-11-20T17:46:56.6041532Z > Task :app:stripReleaseDebugSymbols NO-SOURCE
build	Build release APK	2026-11-20T17:46:56.6042388Z > Task :app:extractReleaseNativeSymbolTables NO-SOURCE
build	Build release APK	2026-11-20T17:46:56.6043163Z > Task :app:mergeReleaseNativeDebugMetadata NO-SOURCE
build	Build release APK	2026-11-20T17:46:56.8021875Z > Task :app:javaPreCompileRelease
build	Build release APK	2026-11-20T17:46:56.8051427Z > Task :app:checkReleaseDuplicateClasses
build	Build release APK	2026-11-20T17:46:56.8052098Z > Task :app:generateReleaseResValues
build	Build release APK	2026-11-20T17:46:56.8052618Z > Task :app:checkReleaseAarMetadata
build	Build release APK	2026-11-20T17:46:56.8991844Z > Task :app:mapReleaseSourceSetPaths
build	Build release APK	2026-11-20T17:46:56.9021405Z > Task :app:generateReleaseResources
build	Build release APK	2026-11-20T17:46:58.8976186Z > Task :app:packageReleaseResources
build	Build release APK	2026-11-20T17:46:58.9975960Z > Task :app:mergeReleaseResources
build	Build release APK	2026-11-20T17:47:01.1987351Z > Task :app:createReleaseCompatibleScreenManifests
build	Build release APK	2026-11-20T17:47:01.1997875Z > Task :app:extractDeepLinksRelease
build	Build release APK	2026-11-20T17:47:01.2979741Z > Task :app:parseReleaseLocalResources
build	Build release APK	2026-11-20T17:47:01.3975970Z > Task :app:processReleaseMainManifest
build	Build release APK	2026-11-20T17:47:01.7001845Z > Task :app:processReleaseManifest
build	Build release APK	2026-11-20T17:47:02.8984769Z > Task :app:desugarReleaseFileDependencies
build	Build release APK	2026-11-20T17:47:02.9011568Z > Task :app:processReleaseManifestForPackage
build	Build release APK	2026-11-20T17:47:03.4981672Z > Task :app:mergeReleaseStartupProfile
build	Build release APK	2026-11-20T17:47:17.1981956Z > Task :app:processReleaseResources
build	Build release APK	2026-11-20T17:47:28.8977896Z > Task :app:mergeExtDexRelease
build	Build release APK	2026-11-20T17:47:31.4005199Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:42: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.4006768Z         if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.4007771Z             ^
build	Build release APK	2026-11-20T17:47:31.4008566Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.4009263Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.4010549Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:61: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.4012189Z             if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.4013505Z                 ^
build	Build release APK	2026-11-20T17:47:31.4014083Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.4014736Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.4015979Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:80: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.4017521Z                     StorageHelper.REQUEST_CODE_STORAGE);
build	Build release APK	2026-11-20T17:47:31.4018165Z                     ^
build	Build release APK	2026-11-20T17:47:31.4018659Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.4019249Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.4020335Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:87: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.4021808Z         if (requestCode != StorageHelper.REQUEST_CODE_STORAGE) return;
build	Build release APK	2026-11-20T17:47:31.4022504Z                            ^
build	Build release APK	2026-11-20T17:47:31.4023002Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.4023525Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.4024218Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:90: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.4024990Z         if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.4025388Z             ^
build	Build release APK	2026-11-20T17:47:31.4025667Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.4026021Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.4026238Z 
build	Build release APK	2026-11-20T17:47:31.4026382Z > Task :app:compileReleaseJavaWithJavac
build	Build release APK	2026-11-20T17:47:31.5034941Z 5 errors
build	Build release APK	2026-11-20T17:47:31.5035265Z 
build	Build release APK	2026-11-20T17:47:31.5063867Z 
build	Build release APK	2026-11-20T17:47:31.5064309Z > Task :app:compileReleaseJavaWithJavac FAILED
build	Build release APK	2026-11-20T17:47:31.5167670Z FAILURE: Build failed with an exception.
build	Build release APK	2026-11-20T17:47:31.5168976Z gradle/actions: Writing build results to /home/runner/work/_temp/.gradle-actions/build-results/__run-1795196805361.json
build	Build release APK	2026-11-20T17:47:31.5221836Z [Incubating] Problems report is available at: file:///home/runner/work/batabg/batabg/build/reports/problems/problems-report.html
build	Build release APK	2026-11-20T17:47:31.5231551Z 
build	Build release APK	2026-11-20T17:47:31.5312043Z * What went wrong:
build	Build release APK	2026-11-20T17:47:31.5313911Z Execution failed for task ':app:compileReleaseJavaWithJavac'.
build	Build release APK	2026-11-20T17:47:31.5314971Z > Compilation failed; see the compiler output below.
build	Build release APK	2026-11-20T17:47:31.5316360Z   /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:42: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5317818Z           if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.5318611Z               ^
build	Build release APK	2026-11-20T17:47:31.5319218Z     symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5319936Z     location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5321365Z   /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:61: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5322814Z               if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.5323621Z                   ^
build	Build release APK	2026-11-20T17:47:31.5324256Z     symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5324979Z     location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5326225Z   /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:80: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5327594Z                       StorageHelper.REQUEST_CODE_STORAGE);
build	Build release APK	2026-11-20T17:47:31.5328370Z                       ^
build	Build release APK	2026-11-20T17:47:31.5329007Z     symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5329759Z     location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5331104Z   /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:87: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5332609Z           if (requestCode != StorageHelper.REQUEST_CODE_STORAGE) return;
build	Build release APK	2026-11-20T17:47:31.5333518Z                              ^
build	Build release APK	2026-11-20T17:47:31.5334197Z     symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5334923Z     location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5336191Z   /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:90: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5337962Z           if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.5338776Z               ^
build	Build release APK	2026-11-20T17:47:31.5339416Z     symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5340139Z     location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5341339Z   5 errors
build	Build release APK	2026-11-20T17:47:31.5341710Z 
build	Build release APK	2026-11-20T17:47:31.5342015Z * Try:
build	Build release APK	2026-11-20T17:47:31.5342734Z > Check your code and dependencies to fix the compilation error(s)
build	Build release APK	2026-11-20T17:47:31.5343662Z > Run with --scan to get full insights.
build	Build release APK	2026-11-20T17:47:31.5344201Z 
build	Build release APK	2026-11-20T17:47:31.5344527Z * Exception is:
build	Build release APK	2026-11-20T17:47:31.5345620Z org.gradle.api.tasks.TaskExecutionException: Execution failed for task ':app:compileReleaseJavaWithJavac'.
build	Build release APK	2026-11-20T17:47:31.5355252Z 	at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.lambda$executeIfValid$1(ExecuteActionsTaskExecuter.java:130)
build	Build release APK	2026-11-20T17:47:31.5357009Z 	at org.gradle.internal.Try$Failure.ifSuccessfulOrElse(Try.java:293)
build	Build release APK	2026-11-20T17:47:31.5358729Z 	at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeIfValid(ExecuteActionsTaskExecuter.java:128)
build	Build release APK	2026-11-20T17:47:31.5360903Z 	at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.execute(ExecuteActionsTaskExecuter.java:116)
build	Build release APK	2026-11-20T17:47:31.5363015Z 	at org.gradle.api.internal.tasks.execution.FinalizePropertiesTaskExecuter.execute(FinalizePropertiesTaskExecuter.java:46)
build	Build release APK	2026-11-20T17:47:31.5365105Z 	at org.gradle.api.internal.tasks.execution.ResolveTaskExecutionModeExecuter.execute(ResolveTaskExecutionModeExecuter.java:51)
build	Build release APK	2026-11-20T17:47:31.5367154Z 	at org.gradle.api.internal.tasks.execution.SkipTaskWithNoActionsExecuter.execute(SkipTaskWithNoActionsExecuter.java:57)
build	Build release APK	2026-11-20T17:47:31.5369119Z 	at org.gradle.api.internal.tasks.execution.SkipOnlyIfTaskExecuter.execute(SkipOnlyIfTaskExecuter.java:74)
build	Build release APK	2026-11-20T17:47:31.5371094Z 	at org.gradle.api.internal.tasks.execution.CatchExceptionTaskExecuter.execute(CatchExceptionTaskExecuter.java:36)
build	Build release APK	2026-11-20T17:47:31.5372996Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter$1.executeTask(EventFiringTaskExecuter.java:77)
build	Build release APK	2026-11-20T17:47:31.5374859Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter$1.call(EventFiringTaskExecuter.java:55)
build	Build release APK	2026-11-20T17:47:31.5376605Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter$1.call(EventFiringTaskExecuter.java:52)
build	Build release APK	2026-11-20T17:47:31.5378574Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:209)
build	Build release APK	2026-11-20T17:47:31.5380927Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:204)
build	Build release APK	2026-11-20T17:47:31.5383086Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.5384921Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5386780Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.5388638Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5390467Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:53)
build	Build release APK	2026-11-20T17:47:31.5392681Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter.execute(EventFiringTaskExecuter.java:52)
build	Build release APK	2026-11-20T17:47:31.5395321Z 	at org.gradle.execution.plan.LocalTaskNodeExecutor.execute(LocalTaskNodeExecutor.java:42)
build	Build release APK	2026-11-20T17:47:31.5418360Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$InvokeNodeExecutorsAction.execute(DefaultTaskExecutionGraph.java:331)
build	Build release APK	2026-11-20T17:47:31.5420579Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$InvokeNodeExecutorsAction.execute(DefaultTaskExecutionGraph.java:318)
build	Build release APK	2026-11-20T17:47:31.5423604Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$BuildOperationAwareExecutionAction.lambda$execute$0(DefaultTaskExecutionGraph.java:314)
build	Build release APK	2026-11-20T17:47:31.5425734Z 	at org.gradle.internal.operations.CurrentBuildOperationRef.with(CurrentBuildOperationRef.java:85)
build	Build release APK	2026-11-20T17:47:31.5428016Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$BuildOperationAwareExecutionAction.execute(DefaultTaskExecutionGraph.java:314)
build	Build release APK	2026-11-20T17:47:31.5430435Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$BuildOperationAwareExecutionAction.execute(DefaultTaskExecutionGraph.java:303)
build	Build release APK	2026-11-20T17:47:31.5432757Z 	at org.gradle.execution.plan.DefaultPlanExecutor$ExecutorWorker.execute(DefaultPlanExecutor.java:459)
build	Build release APK	2026-11-20T17:47:31.5434615Z 	at org.gradle.execution.plan.DefaultPlanExecutor$ExecutorWorker.run(DefaultPlanExecutor.java:376)
build	Build release APK	2026-11-20T17:47:31.5436161Z 	at org.gradle.execution.plan.DefaultPlanExecutor.process(DefaultPlanExecutor.java:111)
build	Build release APK	2026-11-20T17:47:31.5437987Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph.executeWithServices(DefaultTaskExecutionGraph.java:138)
build	Build release APK	2026-11-20T17:47:31.5439923Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph.execute(DefaultTaskExecutionGraph.java:123)
build	Build release APK	2026-11-20T17:47:31.5441815Z 	at org.gradle.execution.SelectedTaskExecutionAction.execute(SelectedTaskExecutionAction.java:35)
build	Build release APK	2026-11-20T17:47:31.5443577Z 	at org.gradle.execution.DryRunBuildExecutionAction.execute(DryRunBuildExecutionAction.java:51)
build	Build release APK	2026-11-20T17:47:31.5445626Z 	at org.gradle.execution.BuildOperationFiringBuildWorkerExecutor$ExecuteTasks.call(BuildOperationFiringBuildWorkerExecutor.java:54)
build	Build release APK	2026-11-20T17:47:31.5448029Z 	at org.gradle.execution.BuildOperationFiringBuildWorkerExecutor$ExecuteTasks.call(BuildOperationFiringBuildWorkerExecutor.java:43)
build	Build release APK	2026-11-20T17:47:31.5450486Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:209)
build	Build release APK	2026-11-20T17:47:31.5453200Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:204)
build	Build release APK	2026-11-20T17:47:31.5455626Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.5457802Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5459801Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.5462048Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5464038Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:53)
build	Build release APK	2026-11-20T17:47:31.5466157Z 	at org.gradle.execution.BuildOperationFiringBuildWorkerExecutor.execute(BuildOperationFiringBuildWorkerExecutor.java:40)
build	Build release APK	2026-11-20T17:47:31.5468547Z 	at org.gradle.internal.build.DefaultBuildLifecycleController.lambda$executeTasks$10(DefaultBuildLifecycleController.java:313)
build	Build release APK	2026-11-20T17:47:31.5495901Z 	at org.gradle.internal.model.StateTransitionController.doTransition(StateTransitionController.java:266)
build	Build release APK	2026-11-20T17:47:31.5509282Z 	at org.gradle.internal.model.StateTransitionController.lambda$tryTransition$8(StateTransitionController.java:177)
build	Build release APK	2026-11-20T17:47:31.5511234Z 	at org.gradle.internal.work.DefaultSynchronizer.withLock(DefaultSynchronizer.java:46)
build	Build release APK	2026-11-20T17:47:31.5512894Z 	at org.gradle.internal.model.StateTransitionController.tryTransition(StateTransitionController.java:177)
build	Build release APK	2026-11-20T17:47:31.5514782Z 	at org.gradle.internal.build.DefaultBuildLifecycleController.executeTasks(DefaultBuildLifecycleController.java:304)
build	Build release APK	2026-11-20T17:47:31.5516890Z 	at org.gradle.internal.build.DefaultBuildWorkGraphController$DefaultBuildWorkGraph.runWork(DefaultBuildWorkGraphController.java:220)
build	Build release APK	2026-11-20T17:47:31.5519235Z 	at org.gradle.internal.work.DefaultWorkerLeaseService.withLocks(DefaultWorkerLeaseService.java:263)
build	Build release APK	2026-11-20T17:47:31.5521213Z 	at org.gradle.internal.work.DefaultWorkerLeaseService.runAsWorkerThread(DefaultWorkerLeaseService.java:127)
build	Build release APK	2026-11-20T17:47:31.5522954Z 	at org.gradle.composite.internal.DefaultBuildController.doRun(DefaultBuildController.java:181)
build	Build release APK	2026-11-20T17:47:31.5524843Z 	at org.gradle.composite.internal.DefaultBuildController.access$000(DefaultBuildController.java:50)
build	Build release APK	2026-11-20T17:47:31.5526658Z 	at org.gradle.composite.internal.DefaultBuildController$BuildOpRunnable.lambda$run$0(DefaultBuildController.java:198)
build	Build release APK	2026-11-20T17:47:31.5528481Z 	at org.gradle.internal.operations.CurrentBuildOperationRef.with(CurrentBuildOperationRef.java:85)
build	Build release APK	2026-11-20T17:47:31.5530246Z 	at org.gradle.composite.internal.DefaultBuildController$BuildOpRunnable.run(DefaultBuildController.java:198)
build	Build release APK	2026-11-20T17:47:31.5532234Z 	at org.gradle.internal.concurrent.ExecutorPolicy$CatchAndRecordFailures.onExecute(ExecutorPolicy.java:64)
build	Build release APK	2026-11-20T17:47:31.5533957Z 	at org.gradle.internal.concurrent.AbstractManagedExecutor$1.run(AbstractManagedExecutor.java:48)
build	Build release APK	2026-11-20T17:47:31.5535787Z Caused by: org.gradle.api.internal.tasks.compile.CompilationFailedException: Compilation failed; see the compiler output below.
build	Build release APK	2026-11-20T17:47:31.5541749Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:42: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5543191Z         if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.5543983Z             ^
build	Build release APK	2026-11-20T17:47:31.5544578Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5545275Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5546514Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:61: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5547881Z             if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.5548662Z                 ^
build	Build release APK	2026-11-20T17:47:31.5549258Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5549949Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5551311Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:80: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5552744Z                     StorageHelper.REQUEST_CODE_STORAGE);
build	Build release APK	2026-11-20T17:47:31.5553538Z                     ^
build	Build release APK	2026-11-20T17:47:31.5554193Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5554943Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5556214Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:87: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5557690Z         if (requestCode != StorageHelper.REQUEST_CODE_STORAGE) return;
build	Build release APK	2026-11-20T17:47:31.5558690Z                            ^
build	Build release APK	2026-11-20T17:47:31.5559425Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5560169Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5561695Z /home/runner/work/batabg/batabg/app/src/main/java/com/informasipasar/app/MainActivity.java:90: error: cannot find symbol
build	Build release APK	2026-11-20T17:47:31.5563170Z         if (StorageHelper.hasStoragePermission(this)) {
build	Build release APK	2026-11-20T17:47:31.5564050Z             ^
build	Build release APK	2026-11-20T17:47:31.5564737Z   symbol:   variable StorageHelper
build	Build release APK	2026-11-20T17:47:31.5565562Z   location: class MainActivity
build	Build release APK	2026-11-20T17:47:31.5566339Z 5 errors
build	Build release APK	2026-11-20T17:47:31.5577638Z 	at org.gradle.api.internal.tasks.compile.JdkJavaCompiler.execute(JdkJavaCompiler.java:84)
build	Build release APK	2026-11-20T17:47:31.5579262Z 	at org.gradle.api.internal.tasks.compile.JdkJavaCompiler.execute(JdkJavaCompiler.java:46)
build	Build release APK	2026-11-20T17:47:31.5581346Z 	at org.gradle.api.internal.tasks.compile.NormalizingJavaCompiler.delegateAndHandleErrors(NormalizingJavaCompiler.java:98)
build	Build release APK	2026-11-20T17:47:31.5583403Z 	at org.gradle.api.internal.tasks.compile.NormalizingJavaCompiler.execute(NormalizingJavaCompiler.java:52)
build	Build release APK	2026-11-20T17:47:31.5585269Z 	at org.gradle.api.internal.tasks.compile.NormalizingJavaCompiler.execute(NormalizingJavaCompiler.java:38)
build	Build release APK	2026-11-20T17:47:31.5587786Z 	at org.gradle.api.internal.tasks.compile.AnnotationProcessorDiscoveringCompiler.execute(AnnotationProcessorDiscoveringCompiler.java:52)
build	Build release APK	2026-11-20T17:47:31.5590248Z 	at org.gradle.api.internal.tasks.compile.AnnotationProcessorDiscoveringCompiler.execute(AnnotationProcessorDiscoveringCompiler.java:38)
build	Build release APK	2026-11-20T17:47:31.5593306Z 	at org.gradle.api.internal.tasks.compile.ModuleApplicationNameWritingCompiler.execute(ModuleApplicationNameWritingCompiler.java:46)
build	Build release APK	2026-11-20T17:47:31.5595659Z 	at org.gradle.api.internal.tasks.compile.ModuleApplicationNameWritingCompiler.execute(ModuleApplicationNameWritingCompiler.java:36)
build	Build release APK	2026-11-20T17:47:31.5597939Z 	at org.gradle.jvm.toolchain.internal.DefaultToolchainJavaCompiler.execute(DefaultToolchainJavaCompiler.java:57)
build	Build release APK	2026-11-20T17:47:31.5599739Z 	at org.gradle.api.tasks.compile.JavaCompile.lambda$createToolchainCompiler$3(JavaCompile.java:205)
build	Build release APK	2026-11-20T17:47:31.5601618Z 	at org.gradle.api.internal.tasks.compile.CleaningJavaCompiler.execute(CleaningJavaCompiler.java:53)
build	Build release APK	2026-11-20T17:47:31.5603772Z 	at org.gradle.api.internal.tasks.compile.incremental.IncrementalCompilerFactory.lambda$createRebuildAllCompiler$0(IncrementalCompilerFactory.java:52)
build	Build release APK	2026-11-20T17:47:31.5605977Z 	at org.gradle.api.internal.tasks.compile.incremental.SelectiveCompiler.execute(SelectiveCompiler.java:70)
build	Build release APK	2026-11-20T17:47:31.5607861Z 	at org.gradle.api.internal.tasks.compile.incremental.SelectiveCompiler.execute(SelectiveCompiler.java:44)
build	Build release APK	2026-11-20T17:47:31.5609998Z 	at org.gradle.api.internal.tasks.compile.incremental.IncrementalResultStoringCompiler.execute(IncrementalResultStoringCompiler.java:66)
build	Build release APK	2026-11-20T17:47:31.5612573Z 	at org.gradle.api.internal.tasks.compile.incremental.IncrementalResultStoringCompiler.execute(IncrementalResultStoringCompiler.java:52)
build	Build release APK	2026-11-20T17:47:31.5615002Z 	at org.gradle.api.internal.tasks.compile.CompileJavaBuildOperationReportingCompiler$1.call(CompileJavaBuildOperationReportingCompiler.java:64)
build	Build release APK	2026-11-20T17:47:31.5617508Z 	at org.gradle.api.internal.tasks.compile.CompileJavaBuildOperationReportingCompiler$1.call(CompileJavaBuildOperationReportingCompiler.java:48)
build	Build release APK	2026-11-20T17:47:31.5619906Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:209)
build	Build release APK	2026-11-20T17:47:31.5622331Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:204)
build	Build release APK	2026-11-20T17:47:31.5624365Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.5626246Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5628141Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.5629825Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5631785Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:53)
build	Build release APK	2026-11-20T17:47:31.5633888Z 	at org.gradle.api.internal.tasks.compile.CompileJavaBuildOperationReportingCompiler.execute(CompileJavaBuildOperationReportingCompiler.java:48)
build	Build release APK	2026-11-20T17:47:31.5635718Z 	at org.gradle.api.tasks.compile.JavaCompile.performCompilation(JavaCompile.java:223)
build	Build release APK	2026-11-20T17:47:31.5637173Z 	at org.gradle.api.tasks.compile.JavaCompile.performIncrementalCompilation(JavaCompile.java:164)
build	Build release APK	2026-11-20T17:47:31.5638621Z 	at org.gradle.api.tasks.compile.JavaCompile.compile(JavaCompile.java:149)
build	Build release APK	2026-11-20T17:47:31.5639809Z 	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
build	Build release APK	2026-11-20T17:47:31.5641383Z 	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)
build	Build release APK	2026-11-20T17:47:31.5643024Z 	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
build	Build release APK	2026-11-20T17:47:31.5645201Z 	at org.gradle.internal.reflect.JavaMethod.invoke(JavaMethod.java:125)
build	Build release APK	2026-11-20T17:47:31.5646639Z 	at org.gradle.api.internal.project.taskfactory.IncrementalTaskAction.doExecute(IncrementalTaskAction.java:45)
build	Build release APK	2026-11-20T17:47:31.5648353Z 	at org.gradle.api.internal.project.taskfactory.StandardTaskAction.execute(StandardTaskAction.java:51)
build	Build release APK	2026-11-20T17:47:31.5650288Z 	at org.gradle.api.internal.project.taskfactory.IncrementalTaskAction.execute(IncrementalTaskAction.java:26)
build	Build release APK	2026-11-20T17:47:31.5651856Z 	at org.gradle.api.internal.project.taskfactory.StandardTaskAction.execute(StandardTaskAction.java:29)
build	Build release APK	2026-11-20T17:47:31.5652629Z 	at org.gradle.api.internal.tasks.execution.TaskExecution$3.run(TaskExecution.java:244)
build	Build release APK	2026-11-20T17:47:31.5653428Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$1.execute(DefaultBuildOperationRunner.java:29)
build	Build release APK	2026-11-20T17:47:31.5654314Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$1.execute(DefaultBuildOperationRunner.java:26)
build	Build release APK	2026-11-20T17:47:31.5655222Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.5656106Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5656982Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.5657875Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5658743Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.run(DefaultBuildOperationRunner.java:47)
build	Build release APK	2026-11-20T17:47:31.5659558Z 	at org.gradle.api.internal.tasks.execution.TaskExecution.executeAction(TaskExecution.java:229)
build	Build release APK	2026-11-20T17:47:31.5660334Z 	at org.gradle.api.internal.tasks.execution.TaskExecution.executeActions(TaskExecution.java:212)
build	Build release APK	2026-11-20T17:47:31.5661483Z 	at org.gradle.api.internal.tasks.execution.TaskExecution.executeWithPreviousOutputFiles(TaskExecution.java:195)
build	Build release APK	2026-11-20T17:47:31.5662315Z 	at org.gradle.api.internal.tasks.execution.TaskExecution.execute(TaskExecution.java:162)
build	Build release APK	2026-11-20T17:47:31.5663020Z 	at org.gradle.internal.execution.steps.ExecuteStep.executeInternal(ExecuteStep.java:105)
build	Build release APK	2026-11-20T17:47:31.5663718Z 	at org.gradle.internal.execution.steps.ExecuteStep.access$000(ExecuteStep.java:44)
build	Build release APK	2026-11-20T17:47:31.5664369Z 	at org.gradle.internal.execution.steps.ExecuteStep$1.call(ExecuteStep.java:59)
build	Build release APK	2026-11-20T17:47:31.5664981Z 	at org.gradle.internal.execution.steps.ExecuteStep$1.call(ExecuteStep.java:56)
build	Build release APK	2026-11-20T17:47:31.5665851Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:209)
build	Build release APK	2026-11-20T17:47:31.5667545Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:204)
build	Build release APK	2026-11-20T17:47:31.5668637Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.5669517Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5670395Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.5672049Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.5673790Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:53)
build	Build release APK	2026-11-20T17:47:31.5674901Z 	at org.gradle.internal.execution.steps.ExecuteStep.execute(ExecuteStep.java:56)
build	Build release APK	2026-11-20T17:47:31.5675559Z 	at org.gradle.internal.execution.steps.ExecuteStep.execute(ExecuteStep.java:44)
build	Build release APK	2026-11-20T17:47:31.5676285Z 	at org.gradle.internal.execution.steps.CancelExecutionStep.execute(CancelExecutionStep.java:42)
build	Build release APK	2026-11-20T17:47:31.5677486Z 	at org.gradle.internal.execution.steps.TimeoutStep.executeWithoutTimeout(TimeoutStep.java:75)
build	Build release APK	2026-11-20T17:47:31.5678205Z 	at org.gradle.internal.execution.steps.TimeoutStep.execute(TimeoutStep.java:55)
build	Build release APK	2026-11-20T17:47:31.5678990Z 	at org.gradle.internal.execution.steps.PreCreateOutputParentsStep.execute(PreCreateOutputParentsStep.java:50)
build	Build release APK	2026-11-20T17:47:31.5680208Z 	at org.gradle.internal.execution.steps.PreCreateOutputParentsStep.execute(PreCreateOutputParentsStep.java:28)
build	Build release APK	2026-11-20T17:47:31.5687969Z 	at org.gradle.internal.execution.steps.RemovePreviousOutputsStep.execute(RemovePreviousOutputsStep.java:67)
build	Build release APK	2026-11-20T17:47:31.5688936Z 	at org.gradle.internal.execution.steps.RemovePreviousOutputsStep.execute(RemovePreviousOutputsStep.java:37)
build	Build release APK	2026-11-20T17:47:31.5689876Z 	at org.gradle.internal.execution.steps.BroadcastChangingOutputsStep.execute(BroadcastChangingOutputsStep.java:61)
build	Build release APK	2026-11-20T17:47:31.5691040Z 	at org.gradle.internal.execution.steps.BroadcastChangingOutputsStep.execute(BroadcastChangingOutputsStep.java:26)
build	Build release APK	2026-11-20T17:47:31.5692084Z 	at org.gradle.internal.execution.steps.CaptureOutputsAfterExecutionStep.execute(CaptureOutputsAfterExecutionStep.java:69)
build	Build release APK	2026-11-20T17:47:31.5693140Z 	at org.gradle.internal.execution.steps.CaptureOutputsAfterExecutionStep.execute(CaptureOutputsAfterExecutionStep.java:46)
build	Build release APK	2026-11-20T17:47:31.5694099Z 	at org.gradle.internal.execution.steps.ResolveInputChangesStep.execute(ResolveInputChangesStep.java:40)
build	Build release APK	2026-11-20T17:47:31.5694957Z 	at org.gradle.internal.execution.steps.ResolveInputChangesStep.execute(ResolveInputChangesStep.java:29)
build	Build release APK	2026-11-20T17:47:31.5695807Z 	at org.gradle.internal.execution.steps.BuildCacheStep.executeWithoutCache(BuildCacheStep.java:189)
build	Build release APK	2026-11-20T17:47:31.5696597Z 	at org.gradle.internal.execution.steps.BuildCacheStep.lambda$execute$1(BuildCacheStep.java:75)
build	Build release APK	2026-11-20T17:47:31.5697199Z 	at org.gradle.internal.Either$Right.fold(Either.java:175)
build	Build release APK	2026-11-20T17:47:31.5697746Z 	at org.gradle.internal.execution.caching.CachingState.fold(CachingState.java:62)
build	Build release APK	2026-11-20T17:47:31.5698429Z 	at org.gradle.internal.execution.steps.BuildCacheStep.execute(BuildCacheStep.java:73)
build	Build release APK	2026-11-20T17:47:31.5699126Z 	at org.gradle.internal.execution.steps.BuildCacheStep.execute(BuildCacheStep.java:48)
build	Build release APK	2026-11-20T17:47:31.5699910Z 	at org.gradle.internal.execution.steps.StoreExecutionStateStep.execute(StoreExecutionStateStep.java:46)
build	Build release APK	2026-11-20T17:47:31.5701093Z 	at org.gradle.internal.execution.steps.StoreExecutionStateStep.execute(StoreExecutionStateStep.java:35)
build	Build release APK	2026-11-20T17:47:31.5701939Z 	at org.gradle.internal.execution.steps.SkipUpToDateStep.executeBecause(SkipUpToDateStep.java:75)
build	Build release APK	2026-11-20T17:47:31.5702735Z 	at org.gradle.internal.execution.steps.SkipUpToDateStep.lambda$execute$2(SkipUpToDateStep.java:53)
build	Build release APK	2026-11-20T17:47:31.5704065Z 	at org.gradle.internal.execution.steps.SkipUpToDateStep.execute(SkipUpToDateStep.java:53)
build	Build release APK	2026-11-20T17:47:31.5705507Z 	at org.gradle.internal.execution.steps.SkipUpToDateStep.execute(SkipUpToDateStep.java:35)
build	Build release APK	2026-11-20T17:47:31.5707382Z 	at org.gradle.internal.execution.steps.legacy.MarkSnapshottingInputsFinishedStep.execute(MarkSnapshottingInputsFinishedStep.java:37)
build	Build release APK	2026-11-20T17:47:31.5709639Z 	at org.gradle.internal.execution.steps.legacy.MarkSnapshottingInputsFinishedStep.execute(MarkSnapshottingInputsFinishedStep.java:27)
build	Build release APK	2026-11-20T17:47:31.5712139Z 	at org.gradle.internal.execution.steps.ResolveIncrementalCachingStateStep.executeDelegate(ResolveIncrementalCachingStateStep.java:49)
build	Build release APK	2026-11-20T17:47:31.5714377Z 	at org.gradle.internal.execution.steps.ResolveIncrementalCachingStateStep.executeDelegate(ResolveIncrementalCachingStateStep.java:27)
build	Build release APK	2026-11-20T17:47:31.5716443Z 	at org.gradle.internal.execution.steps.AbstractResolveCachingStateStep.execute(AbstractResolveCachingStateStep.java:71)
build	Build release APK	2026-11-20T17:47:31.5718350Z 	at org.gradle.internal.execution.steps.AbstractResolveCachingStateStep.execute(AbstractResolveCachingStateStep.java:39)
build	Build release APK	2026-11-20T17:47:31.5720023Z 	at org.gradle.internal.execution.steps.ResolveChangesStep.execute(ResolveChangesStep.java:65)
build	Build release APK	2026-11-20T17:47:31.5721950Z 	at org.gradle.internal.execution.steps.ResolveChangesStep.execute(ResolveChangesStep.java:36)
build	Build release APK	2026-11-20T17:47:31.5723288Z 	at org.gradle.internal.execution.steps.ValidateStep.execute(ValidateStep.java:107)
build	Build release APK	2026-11-20T17:47:31.5724522Z 	at org.gradle.internal.execution.steps.ValidateStep.execute(ValidateStep.java:56)
build	Build release APK	2026-11-20T17:47:31.5726475Z 	at org.gradle.internal.execution.steps.AbstractCaptureStateBeforeExecutionStep.execute(AbstractCaptureStateBeforeExecutionStep.java:64)
build	Build release APK	2026-11-20T17:47:31.5728697Z 	at org.gradle.internal.execution.steps.AbstractCaptureStateBeforeExecutionStep.execute(AbstractCaptureStateBeforeExecutionStep.java:43)
build	Build release APK	2026-11-20T17:47:31.5731056Z 	at org.gradle.internal.execution.steps.AbstractSkipEmptyWorkStep.executeWithNonEmptySources(AbstractSkipEmptyWorkStep.java:125)
build	Build release APK	2026-11-20T17:47:31.5732967Z 	at org.gradle.internal.execution.steps.AbstractSkipEmptyWorkStep.execute(AbstractSkipEmptyWorkStep.java:61)
build	Build release APK	2026-11-20T17:47:31.5734670Z 	at org.gradle.internal.execution.steps.AbstractSkipEmptyWorkStep.execute(AbstractSkipEmptyWorkStep.java:36)
build	Build release APK	2026-11-20T17:47:31.5736581Z 	at org.gradle.internal.execution.steps.legacy.MarkSnapshottingInputsStartedStep.execute(MarkSnapshottingInputsStartedStep.java:38)
build	Build release APK	2026-11-20T17:47:31.5738600Z 	at org.gradle.internal.execution.steps.LoadPreviousExecutionStateStep.execute(LoadPreviousExecutionStateStep.java:36)
build	Build release APK	2026-11-20T17:47:31.5740493Z 	at org.gradle.internal.execution.steps.LoadPreviousExecutionStateStep.execute(LoadPreviousExecutionStateStep.java:23)
build	Build release APK	2026-11-20T17:47:31.5742448Z 	at org.gradle.internal.execution.steps.HandleStaleOutputsStep.execute(HandleStaleOutputsStep.java:75)
build	Build release APK	2026-11-20T17:47:31.5744058Z 	at org.gradle.internal.execution.steps.HandleStaleOutputsStep.execute(HandleStaleOutputsStep.java:41)
build	Build release APK	2026-11-20T17:47:31.5745782Z 	at org.gradle.internal.execution.steps.AssignMutableWorkspaceStep.lambda$execute$0(AssignMutableWorkspaceStep.java:35)
build	Build release APK	2026-11-20T17:47:31.5747439Z 	at org.gradle.api.internal.tasks.execution.TaskExecution$4.withWorkspace(TaskExecution.java:289)
build	Build release APK	2026-11-20T17:47:31.5748993Z 	at org.gradle.internal.execution.steps.AssignMutableWorkspaceStep.execute(AssignMutableWorkspaceStep.java:31)
build	Build release APK	2026-11-20T17:47:31.5750820Z 	at org.gradle.internal.execution.steps.AssignMutableWorkspaceStep.execute(AssignMutableWorkspaceStep.java:22)
build	Build release APK	2026-11-20T17:47:31.5752398Z 	at org.gradle.internal.execution.steps.ChoosePipelineStep.execute(ChoosePipelineStep.java:40)
build	Build release APK	2026-11-20T17:47:31.5753831Z 	at org.gradle.internal.execution.steps.ChoosePipelineStep.execute(ChoosePipelineStep.java:23)
build	Build release APK	2026-11-20T17:47:31.5754921Z 	at org.gradle.internal.execution.steps.ExecuteWorkBuildOperationFiringStep.lambda$execute$2(ExecuteWorkBuildOperationFiringStep.java:67)
build	Build release APK	2026-11-20T17:47:31.5756071Z 	at org.gradle.internal.execution.steps.ExecuteWorkBuildOperationFiringStep.execute(ExecuteWorkBuildOperationFiringStep.java:67)
build	Build release APK	2026-11-20T17:47:31.5757171Z 	at org.gradle.internal.execution.steps.ExecuteWorkBuildOperationFiringStep.execute(ExecuteWorkBuildOperationFiringStep.java:39)
build	Build release APK	2026-11-20T17:47:31.5758083Z 	at org.gradle.internal.execution.steps.IdentityCacheStep.execute(IdentityCacheStep.java:46)
build	Build release APK	2026-11-20T17:47:31.5758820Z 	at org.gradle.internal.execution.steps.IdentityCacheStep.execute(IdentityCacheStep.java:34)
build	Build release APK	2026-11-20T17:47:31.5759530Z 	at org.gradle.internal.execution.steps.IdentifyStep.execute(IdentifyStep.java:48)
build	Build release APK	2026-11-20T17:47:31.5760191Z 	at org.gradle.internal.execution.steps.IdentifyStep.execute(IdentifyStep.java:35)
build	Build release APK	2026-11-20T17:47:31.5761183Z 	at org.gradle.internal.execution.impl.DefaultExecutionEngine$1.execute(DefaultExecutionEngine.java:61)
build	Build release APK	2026-11-20T17:47:31.5762335Z 	at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeIfValid(ExecuteActionsTaskExecuter.java:127)
build	Build release APK	2026-11-20T17:47:31.5764267Z 	at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.execute(ExecuteActionsTaskExecuter.java:116)
build	Build release APK	2026-11-20T17:47:31.5766448Z 	at org.gradle.api.internal.tasks.execution.FinalizePropertiesTaskExecuter.execute(FinalizePropertiesTaskExecuter.java:46)
build	Build release APK	2026-11-20T17:47:31.5768643Z 	at org.gradle.api.internal.tasks.execution.ResolveTaskExecutionModeExecuter.execute(ResolveTaskExecutionModeExecuter.java:51)
build	Build release APK	2026-11-20T17:47:31.5770922Z 	at org.gradle.api.internal.tasks.execution.SkipTaskWithNoActionsExecuter.execute(SkipTaskWithNoActionsExecuter.java:57)
build	Build release APK	2026-11-20T17:47:31.5773097Z 	at org.gradle.api.internal.tasks.execution.SkipOnlyIfTaskExecuter.execute(SkipOnlyIfTaskExecuter.java:74)
build	Build release APK	2026-11-20T17:47:31.5774905Z 	at org.gradle.api.internal.tasks.execution.CatchExceptionTaskExecuter.execute(CatchExceptionTaskExecuter.java:36)
build	Build release APK	2026-11-20T17:47:31.5776732Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter$1.executeTask(EventFiringTaskExecuter.java:77)
build	Build release APK	2026-11-20T17:47:31.5778515Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter$1.call(EventFiringTaskExecuter.java:55)
build	Build release APK	2026-11-20T17:47:31.5780230Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter$1.call(EventFiringTaskExecuter.java:52)
build	Build release APK	2026-11-20T17:47:31.5997029Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:209)
build	Build release APK	2026-11-20T17:47:31.5998495Z 20 actionable tasks: 20 executed
build	Build release APK	2026-11-20T17:47:31.6002391Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:204)
build	Build release APK	2026-11-20T17:47:31.6051908Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.6071949Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.6077937Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.6079760Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.6081849Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:53)
build	Build release APK	2026-11-20T17:47:31.6083636Z 	at org.gradle.api.internal.tasks.execution.EventFiringTaskExecuter.execute(EventFiringTaskExecuter.java:52)
build	Build release APK	2026-11-20T17:47:31.6085330Z 	at org.gradle.execution.plan.LocalTaskNodeExecutor.execute(LocalTaskNodeExecutor.java:42)
build	Build release APK	2026-11-20T17:47:31.6087259Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$InvokeNodeExecutorsAction.execute(DefaultTaskExecutionGraph.java:331)
build	Build release APK	2026-11-20T17:47:31.6089426Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$InvokeNodeExecutorsAction.execute(DefaultTaskExecutionGraph.java:318)
build	Build release APK	2026-11-20T17:47:31.6091690Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$BuildOperationAwareExecutionAction.lambda$execute$0(DefaultTaskExecutionGraph.java:314)
build	Build release APK	2026-11-20T17:47:31.6093687Z 	at org.gradle.internal.operations.CurrentBuildOperationRef.with(CurrentBuildOperationRef.java:85)
build	Build release APK	2026-11-20T17:47:31.6095734Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$BuildOperationAwareExecutionAction.execute(DefaultTaskExecutionGraph.java:314)
build	Build release APK	2026-11-20T17:47:31.6098164Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph$BuildOperationAwareExecutionAction.execute(DefaultTaskExecutionGraph.java:303)
build	Build release APK	2026-11-20T17:47:31.6100204Z 	at org.gradle.execution.plan.DefaultPlanExecutor$ExecutorWorker.execute(DefaultPlanExecutor.java:459)
build	Build release APK	2026-11-20T17:47:31.6102187Z 	at org.gradle.execution.plan.DefaultPlanExecutor$ExecutorWorker.run(DefaultPlanExecutor.java:376)
build	Build release APK	2026-11-20T17:47:31.6103669Z 	at org.gradle.execution.plan.DefaultPlanExecutor.process(DefaultPlanExecutor.java:111)
build	Build release APK	2026-11-20T17:47:31.6105492Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph.executeWithServices(DefaultTaskExecutionGraph.java:138)
build	Build release APK	2026-11-20T17:47:31.6107413Z 	at org.gradle.execution.taskgraph.DefaultTaskExecutionGraph.execute(DefaultTaskExecutionGraph.java:123)
build	Build release APK	2026-11-20T17:47:31.6109438Z 	at org.gradle.execution.SelectedTaskExecutionAction.execute(SelectedTaskExecutionAction.java:35)
build	Build release APK	2026-11-20T17:47:31.6111368Z 	at org.gradle.execution.DryRunBuildExecutionAction.execute(DryRunBuildExecutionAction.java:51)
build	Build release APK	2026-11-20T17:47:31.6113360Z 	at org.gradle.execution.BuildOperationFiringBuildWorkerExecutor$ExecuteTasks.call(BuildOperationFiringBuildWorkerExecutor.java:54)
build	Build release APK	2026-11-20T17:47:31.6115846Z 	at org.gradle.execution.BuildOperationFiringBuildWorkerExecutor$ExecuteTasks.call(BuildOperationFiringBuildWorkerExecutor.java:43)
build	Build release APK	2026-11-20T17:47:31.6118158Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:209)
build	Build release APK	2026-11-20T17:47:31.6120461Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:204)
build	Build release APK	2026-11-20T17:47:31.6122863Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:66)
build	Build release APK	2026-11-20T17:47:31.6124766Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner$2.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.6126642Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:166)
build	Build release APK	2026-11-20T17:47:31.6128594Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:59)
build	Build release APK	2026-11-20T17:47:31.6130557Z 	at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:53)
build	Build release APK	2026-11-20T17:47:31.6133068Z 	at org.gradle.execution.BuildOperationFiringBuildWorkerExecutor.execute(BuildOperationFiringBuildWorkerExecutor.java:40)
build	Build release APK	2026-11-20T17:47:31.6135193Z 	at org.gradle.internal.build.DefaultBuildLifecycleController.lambda$executeTasks$10(DefaultBuildLifecycleController.java:313)
build	Build release APK	2026-11-20T17:47:31.6137142Z 	at org.gradle.internal.model.StateTransitionController.doTransition(StateTransitionController.java:266)
build	Build release APK	2026-11-20T17:47:31.6139112Z 	at org.gradle.internal.model.StateTransitionController.lambda$tryTransition$8(StateTransitionController.java:177)
build	Build release APK	2026-11-20T17:47:31.6143555Z 	at org.gradle.internal.work.DefaultSynchronizer.withLock(DefaultSynchronizer.java:46)
build	Build release APK	2026-11-20T17:47:31.6145200Z 	at org.gradle.internal.model.StateTransitionController.tryTransition(StateTransitionController.java:177)
build	Build release APK	2026-11-20T17:47:31.6147153Z 	at org.gradle.internal.build.DefaultBuildLifecycleController.executeTasks(DefaultBuildLifecycleController.java:304)
build	Build release APK	2026-11-20T17:47:31.6149232Z 	at org.gradle.internal.build.DefaultBuildWorkGraphController$DefaultBuildWorkGraph.runWork(DefaultBuildWorkGraphController.java:220)
build	Build release APK	2026-11-20T17:47:31.6151417Z 	at org.gradle.internal.work.DefaultWorkerLeaseService.withLocks(DefaultWorkerLeaseService.java:263)
build	Build release APK	2026-11-20T17:47:31.6154455Z 	at org.gradle.internal.work.DefaultWorkerLeaseService.runAsWorkerThread(DefaultWorkerLeaseService.java:127)
build	Build release APK	2026-11-20T17:47:31.6156322Z 	at org.gradle.composite.internal.DefaultBuildController.doRun(DefaultBuildController.java:181)
build	Build release APK	2026-11-20T17:47:31.6157615Z 	at org.gradle.composite.internal.DefaultBuildController.access$000(DefaultBuildController.java:50)
build	Build release APK	2026-11-20T17:47:31.6158660Z 	at org.gradle.composite.internal.DefaultBuildController$BuildOpRunnable.lambda$run$0(DefaultBuildController.java:198)
build	Build release APK	2026-11-20T17:47:31.6160011Z 	at org.gradle.internal.operations.CurrentBuildOperationRef.with(CurrentBuildOperationRef.java:85)
build	Build release APK	2026-11-20T17:47:31.6161429Z 	at org.gradle.composite.internal.DefaultBuildController$BuildOpRunnable.run(DefaultBuildController.java:198)
build	Build release APK	2026-11-20T17:47:31.6163192Z 	at org.gradle.internal.concurrent.ExecutorPolicy$CatchAndRecordFailures.onExecute(ExecutorPolicy.java:64)
build	Build release APK	2026-11-20T17:47:31.6164776Z 	at org.gradle.internal.concurrent.AbstractManagedExecutor$1.run(AbstractManagedExecutor.java:48)
build	Build release APK	2026-11-20T17:47:31.6165728Z 
build	Build release APK	2026-11-20T17:47:31.6165834Z 
build	Build release APK	2026-11-20T17:47:31.6166123Z BUILD FAILED in 53s
build	Build release APK	2026-11-20T17:47:31.8956782Z ##[error]Process completed with exit code 1.
