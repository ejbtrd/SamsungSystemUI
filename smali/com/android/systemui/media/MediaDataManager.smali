.class public final Lcom/android/systemui/media/MediaDataManager;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaDataManager$Companion;,
        Lcom/android/systemui/media/MediaDataManager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDataManager.kt\ncom/android/systemui/media/MediaDataManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,957:1\n1#2:958\n509#3:959\n494#3,6:960\n509#3:987\n494#3,6:988\n181#4,2:966\n181#4,2:994\n1819#5,2:968\n1819#5,2:970\n1819#5,2:972\n1819#5,2:974\n768#5,11:976\n1819#5,2:996\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDataManager.kt\ncom/android/systemui/media/MediaDataManager\n*L\n313#1:959\n313#1,6:960\n827#1:987\n827#1,6:988\n314#1,2:966\n828#1,2:994\n402#1,2:968\n412#1,2:970\n422#1,2:972\n436#1,2:974\n749#1,11:976\n951#1,2:996\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/MediaDataManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_COMPACT_ACTIONS:I

.field public static final SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final EMERGENCY_MODE_URI:Landroid/net/Uri;

.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private allowMediaRecommendations:Z

.field private final appChangeReceiver:Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgColor:I

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final internalListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDataManager$Listener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final smartspaceMediaDataProvider:Lcom/android/systemui/media/SmartspaceMediaDataProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smartspaceSession:Landroid/app/smartspace/SmartspaceSession;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final themeText:I

.field private final tunerService:Lcom/android/systemui/tuner/TunerService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useMediaResumption:Z

.field private final useQsMediaPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaDataManager;->Companion:Lcom/android/systemui/media/MediaDataManager$Companion;

    const-string v0, "media_data_manager"

    .line 132
    sput-object v0, Lcom/android/systemui/media/MediaDataManager;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    const-string v0, "package_name"

    .line 136
    sput-object v0, Lcom/android/systemui/media/MediaDataManager;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x3

    .line 140
    sput v0, Lcom/android/systemui/media/MediaDataManager;->MAX_COMPACT_ACTIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/MediaSessionBasedFilter;Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDataCombineLatest;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaControllerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/media/MediaTimeoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/media/MediaResumeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/media/MediaSessionBasedFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/media/MediaDeviceManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/media/MediaDataCombineLatest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/android/systemui/media/MediaDataFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/android/systemui/media/SmartspaceMediaDataProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lcom/android/systemui/tuner/TunerService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundExecutor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaControllerFactory"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaTimeoutListener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaResumeListener"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSessionBasedFilter"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDeviceManager"

    move-object/from16 v9, p10

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataCombineLatest"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataFilter"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "smartspaceMediaDataProvider"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunerService"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsHelper"

    move-object/from16 v9, p19

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 108
    iput-object v1, v0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    .line 109
    iput-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 110
    iput-object v3, v0, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 111
    iput-object v4, v0, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    .line 112
    iput-object v5, v0, Lcom/android/systemui/media/MediaDataManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 119
    iput-object v11, v0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    .line 120
    iput-object v12, v0, Lcom/android/systemui/media/MediaDataManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 121
    iput-object v13, v0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaDataProvider:Lcom/android/systemui/media/SmartspaceMediaDataProvider;

    move/from16 v2, p15

    .line 122
    iput-boolean v2, v0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    move/from16 v2, p16

    .line 123
    iput-boolean v2, v0, Lcom/android/systemui/media/MediaDataManager;->useQsMediaPlayer:Z

    .line 124
    iput-object v14, v0, Lcom/android/systemui/media/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 125
    iput-object v15, v0, Lcom/android/systemui/media/MediaDataManager;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 126
    iput-object v9, v0, Lcom/android/systemui/media/MediaDataManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const v2, 0x1010036

    .line 143
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/MediaDataManager;->themeText:I

    const v2, 0x1060046

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/MediaDataManager;->bgColor:I

    .line 154
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    .line 155
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 157
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->getEMPTY_SMARTSPACE_MEDIA_DATA()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->allowMediaRecommendations(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/media/MediaDataManager;->allowMediaRecommendations:Z

    const-string v2, "emergency_mode"

    .line 163
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 166
    new-instance v3, Lcom/android/systemui/media/MediaDataManager$mSettingsListener$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/media/MediaDataManager$mSettingsListener$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    iput-object v3, v0, Lcom/android/systemui/media/MediaDataManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 196
    new-instance v4, Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    iput-object v4, v0, Lcom/android/systemui/media/MediaDataManager;->appChangeReceiver:Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

    const-string v12, "MediaDataManager:MediaLogger"

    .line 215
    invoke-virtual {v6, v12, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 223
    invoke-direct {v0, v7}, Lcom/android/systemui/media/MediaDataManager;->addInternalListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 224
    invoke-direct {v0, v8}, Lcom/android/systemui/media/MediaDataManager;->addInternalListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    move-object/from16 v6, p9

    .line 225
    invoke-direct {v0, v6}, Lcom/android/systemui/media/MediaDataManager;->addInternalListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 226
    invoke-virtual/range {p9 .. p10}, Lcom/android/systemui/media/MediaSessionBasedFilter;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 227
    invoke-virtual {v6, v10}, Lcom/android/systemui/media/MediaSessionBasedFilter;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 228
    invoke-virtual/range {p10 .. p11}, Lcom/android/systemui/media/MediaDeviceManager;->addListener(Lcom/android/systemui/media/MediaDeviceManager$Listener;)Z

    .line 229
    invoke-virtual/range {p11 .. p12}, Lcom/android/systemui/media/MediaDataCombineLatest;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 232
    new-instance v6, Lcom/android/systemui/media/MediaDataManager$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/media/MediaDataManager$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    invoke-virtual {v7, v6}, Lcom/android/systemui/media/MediaTimeoutListener;->setTimeoutCallback(Lkotlin/jvm/functions/Function2;)V

    .line 234
    invoke-virtual {v8, v0}, Lcom/android/systemui/media/MediaResumeListener;->setManager(Lcom/android/systemui/media/MediaDataManager;)V

    .line 235
    invoke-virtual {v11, v0}, Lcom/android/systemui/media/MediaDataFilter;->setMediaDataManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/media/MediaDataManager;)V

    .line 237
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v8, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 240
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 241
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    .line 242
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "package"

    .line 243
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/SmartspaceMediaDataProvider;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 251
    const-class v4, Landroid/app/smartspace/SmartspaceManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "context.getSystemService(SmartspaceManager::class.java)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/smartspace/SmartspaceManager;

    .line 253
    new-instance v5, Landroid/app/smartspace/SmartspaceConfig$Builder;

    sget-object v6, Lcom/android/systemui/media/MediaDataManager;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    move-result-object v1

    .line 252
    invoke-virtual {v4, v1}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/MediaDataManager;->smartspaceSession:Landroid/app/smartspace/SmartspaceSession;

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 263
    new-instance v5, Lcom/android/systemui/media/MediaDataManager$2$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/MediaDataManager$2$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    .line 255
    invoke-virtual {v1, v4, v5}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    .line 267
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager;->smartspaceSession:Landroid/app/smartspace/SmartspaceSession;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    .line 268
    :goto_1
    new-instance v1, Lcom/android/systemui/media/MediaDataManager$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaDataManager$4;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    const-string v0, "qs_media_recommend"

    .line 275
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {v15, v1, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 278
    invoke-virtual {v9, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/MediaSessionBasedFilter;Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDataCombineLatest;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SmartspaceMediaDataProvider;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 20
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaControllerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/media/MediaTimeoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/media/MediaResumeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/media/MediaSessionBasedFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/media/MediaDeviceManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/media/MediaDataCombineLatest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/android/systemui/media/MediaDataFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/android/systemui/media/SmartspaceMediaDataProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/android/systemui/tuner/TunerService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    const-string v15, "context"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "backgroundExecutor"

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundExecutor"

    move-object/from16 v15, p3

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaControllerFactory"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    move-object/from16 v15, p6

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaTimeoutListener"

    move-object/from16 v15, p7

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaResumeListener"

    move-object/from16 v15, p8

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSessionBasedFilter"

    move-object/from16 v15, p9

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDeviceManager"

    move-object/from16 v15, p10

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataCombineLatest"

    move-object/from16 v15, p11

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataFilter"

    move-object/from16 v15, p12

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    move-object/from16 v15, p13

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "smartspaceMediaDataProvider"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v15, p15

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunerService"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsHelper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v15

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v16

    move-object/from16 v0, p0

    .line 190
    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/media/MediaDataManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/MediaSessionBasedFilter;Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDataCombineLatest;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/media/MediaDataManager;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getAllowMediaRecommendations$p(Lcom/android/systemui/media/MediaDataManager;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataManager;->allowMediaRecommendations:Z

    return p0
.end method

.method public static final synthetic access$getBgColor$p(Lcom/android/systemui/media/MediaDataManager;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/android/systemui/media/MediaDataManager;->bgColor:I

    return p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaDataManager;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMediaControllerFactory$p(Lcom/android/systemui/media/MediaDataManager;)Lcom/android/systemui/media/MediaControllerFactory;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    return-object p0
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/media/MediaDataManager;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final synthetic access$getSmartspaceMediaDataProvider$p(Lcom/android/systemui/media/MediaDataManager;)Lcom/android/systemui/media/SmartspaceMediaDataProvider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaDataProvider:Lcom/android/systemui/media/SmartspaceMediaDataProvider;

    return-object p0
.end method

.method public static final synthetic access$loadMediaDataInBg(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager;->loadMediaDataInBg(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadMediaDataInBgForResumption(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/media/MediaDataManager;->loadMediaDataInBgForResumption(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$notifySmartspaceMediaDataRemoved(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaDataManager;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$removeAllForPackage(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaDataManager;->removeAllForPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$removeEntry(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaDataManager;->removeEntry(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$sendPendingIntent(Lcom/android/systemui/media/MediaDataManager;Landroid/app/PendingIntent;)Z
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaDataManager;->sendPendingIntent(Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAllowMediaRecommendations$p(Lcom/android/systemui/media/MediaDataManager;Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaDataManager;->allowMediaRecommendations:Z

    return-void
.end method

.method private final addInternalListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final findExistingEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;
    .locals 3

    .line 727
    new-instance v0, Lcom/android/systemui/media/MediaAction;

    .line 728
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->lb_ic_play:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/media/MediaDataManager;->themeText:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 730
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->controls_media_resume:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-direct {v0, v1, p1, p0}, Lcom/android/systemui/media/MediaAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final loadBitmapFromUri(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 6

    .line 673
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->access$getART_URIS$p()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 674
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 676
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "parse(uriString)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string p0, "loaded art from "

    .line 678
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaDataManager:MediaLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Unable to load bitmap"

    const-string v1, "MediaDataManager:MediaLogger"

    .line 702
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.resource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 708
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    .line 712
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 714
    :try_start_0
    sget-object p1, Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;->INSTANCE:Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 721
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 718
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3
.end method

.method private final loadMediaData(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final loadMediaDataInBg(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.mediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/media/session/MediaSession$Token;

    .line 548
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v0, v12}, Lcom/android/systemui/media/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    const-string/jumbo v3, "sbn.notification"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "android.media.metadata.ART"

    .line 553
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 555
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    .line 558
    invoke-direct {v1, v2}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_4

    .line 561
    invoke-virtual {v13}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    goto :goto_2

    .line 563
    :cond_4
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :goto_2
    move-object v9, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v9, :cond_7

    if-nez v4, :cond_7

    .line 568
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    if-eq v4, v5, :cond_6

    .line 569
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_5

    goto :goto_3

    .line 572
    :cond_5
    iget-object v4, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v7, "artWorkIcon.loadDrawable(context)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 575
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 576
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 573
    invoke-static {v7, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 577
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 578
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v4, v6, v6, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 579
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 570
    :cond_6
    :goto_3
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 585
    :cond_7
    :goto_4
    iget-object v4, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-static {v4, v13}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 586
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v7

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 592
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v2, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    iput-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_a

    if-nez v2, :cond_9

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const-string v4, "android.media.metadata.TITLE"

    .line 594
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    iput-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 596
    :cond_a
    iget-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_b

    .line 597
    invoke-static {v13}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 601
    :cond_b
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_d

    .line 603
    invoke-static {v13}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 607
    :cond_d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 608
    iget-object v2, v13, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 609
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.compactActions"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_8

    .line 610
    :cond_e
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v3

    :goto_8
    if-nez v3, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    :cond_f
    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 611
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/android/systemui/media/MediaDataManager;->MAX_COMPACT_ACTIONS:I

    const-string v5, "MediaDataManager:MediaLogger"

    if-le v3, v4, :cond_10

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many compact actions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", limiting to first "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_10
    if-eqz v2, :cond_16

    .line 618
    array-length v3, v2

    move v4, v6

    :goto_9
    if-ge v4, v3, :cond_16

    aget-object v6, v2, v4

    add-int/lit8 v19, v4, 0x1

    .line 619
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v20

    if-nez v20, :cond_11

    move-object/from16 v20, v2

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    const-string v3, "No icon for action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_11
    move-object/from16 v20, v2

    move/from16 v21, v3

    .line 624
    iget-object v2, v6, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_12

    .line 625
    new-instance v2, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$runnable$1;

    invoke-direct {v2, v6, v1}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$runnable$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/MediaDataManager;)V

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    .line 638
    :goto_a
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v3, 0x0

    goto :goto_b

    :cond_13
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_b
    const/4 v4, 0x2

    if-nez v3, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_15

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_d

    .line 641
    :cond_15
    :goto_c
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 642
    :goto_d
    iget v4, v1, Lcom/android/systemui/media/MediaDataManager;->themeText:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 643
    new-instance v4, Lcom/android/systemui/media/MediaAction;

    .line 646
    iget-object v6, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 643
    invoke-direct {v4, v3, v2, v6}, Lcom/android/systemui/media/MediaAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    .line 647
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    move/from16 v4, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    const/4 v6, 0x0

    goto/16 :goto_9

    .line 651
    :cond_16
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_f

    :cond_17
    invoke-virtual {v2}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_f
    if-nez v2, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    move/from16 v18, v3

    goto :goto_11

    :cond_19
    :goto_10
    const/16 v18, 0x0

    .line 653
    :goto_11
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_1a

    const/16 v19, 0x0

    goto :goto_12

    :cond_1a
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v19, v0

    .line 654
    :goto_12
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 655
    iget-object v6, v1, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v5, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v22, v5

    move-object v5, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v11

    move-object v11, v8

    move-object v8, v10

    move-object v10, v14

    move-object v14, v11

    move-object v11, v15

    move-object v15, v14

    move/from16 v14, v18

    move-object/from16 v23, v15

    move-object/from16 v15, v19

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;ZLjava/lang/Boolean;J)V

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final loadMediaDataInBgForResumption(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15

    move-object v1, p0

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "MediaDataManager:MediaLogger"

    if-eqz v0, :cond_0

    const-string v0, "Description incomplete"

    .line 509
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move-object/from16 v3, p7

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding track for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from browser: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 525
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v10, p3

    move-object v6, v0

    .line 530
    invoke-direct {p0, v10}, Lcom/android/systemui/media/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;

    move-result-object v7

    .line 531
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 532
    iget-object v13, v1, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v14, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBgForResumption$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBgForResumption$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;J)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 9

    .line 402
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/MediaDataManager$Listener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 402
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyMediaDataRemoved(Ljava/lang/String;)V
    .locals 1

    .line 422
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 422
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;)V
    .locals 7

    .line 412
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/MediaDataManager$Listener;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 412
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onSmartspaceMediaDataLoaded$default(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    .line 436
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 436
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/media/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final packageName(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/String;
    .locals 3

    .line 921
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "MediaDataManager:MediaLogger"

    if-eqz p0, :cond_4

    .line 922
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 926
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/smartspace/SmartspaceAction;

    .line 927
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 929
    :cond_1
    sget-object v2, Lcom/android/systemui/media/MediaDataManager;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const-string p0, "No valid package name is provided."

    .line 933
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_4
    :goto_1
    const-string p0, "Empty or null media recommendation list."

    .line 923
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private final removeAllForPackage(Ljava/lang/String;)V
    .locals 4

    .line 312
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 509
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 494
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDataManager;->removeEntry(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final removeEntry(Ljava/lang/String;)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private final sendPendingIntent(Landroid/app/PendingIntent;)Z
    .locals 1

    .line 688
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaDataManager:MediaLogger"

    const-string v0, "Intent canceled"

    .line 691
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic setTimedOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core$default(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 444
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager;->setTimedOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final toSmartspaceMediaData(Landroid/app/smartspace/SmartspaceTarget;Z)Lcom/android/systemui/media/SmartspaceMediaData;
    .locals 15

    .line 912
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/media/MediaDataManager;->packageName(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "target.smartspaceTargetId"

    if-nez v4, :cond_0

    .line 916
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->getEMPTY_SMARTSPACE_MEDIA_DATA()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v5

    .line 917
    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7c

    const/4 v14, 0x0

    move/from16 v7, p2

    invoke-static/range {v5 .. v14}, Lcom/android/systemui/media/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/SmartspaceMediaData;Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;IILjava/lang/Object;)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v0

    return-object v0

    .line 913
    :cond_0
    new-instance v8, Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v6

    const-string/jumbo v0, "target.iconGrid"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, v8

    move/from16 v2, p2

    .line 913
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/SmartspaceMediaData;-><init>(Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;I)V

    return-object v8
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDataManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaDataFilter;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    return-void
.end method

.method public final addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 30
    .param p2    # Landroid/media/MediaDescription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/media/session/MediaSession$Token;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    const-string v2, "desc"

    move-object/from16 v14, p2

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action"

    move-object/from16 v15, p3

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "token"

    move-object/from16 v13, p4

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appName"

    move-object/from16 v12, p5

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appIntent"

    move-object/from16 v11, p6

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v2, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->access$getLOADING$p()Lcom/android/systemui/media/MediaData;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const v28, 0xeef7ff

    const/16 v29, 0x0

    move-object/from16 v14, p7

    move-object/from16 v19, p3

    invoke-static/range {v2 .. v29}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IIZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v2

    .line 339
    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    iget-object v9, v1, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;-><init>(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dismissMediaData(Ljava/lang/String;J)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 475
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V

    invoke-interface {v1, v2, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return v0
.end method

.method public final dismissSmartspaceRecommendation(Ljava/lang/String;J)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "MediaDataManager:MediaLogger"

    const-string v0, "Dismissing Smartspace media target"

    .line 489
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 491
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->getEMPTY_SMARTSPACE_MEDIA_DATA()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v0

    .line 492
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    .line 491
    invoke-static/range {v0 .. v9}, Lcom/android/systemui/media/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/SmartspaceMediaData;Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;IILjava/lang/Object;)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 495
    new-instance v0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    .line 494
    invoke-interface {p1, v0, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    const-string p3, "internalListeners: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object p1

    const-string p3, "externalListeners: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataManager;->getMediaEntries()Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string p3, "mediaEntries: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo p1, "useMediaResumption: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getMediaEntries()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final getSmartspaceMediaData()Lcom/android/systemui/media/SmartspaceMediaData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    return-object p0
.end method

.method public final hasActiveMedia()Z
    .locals 0

    .line 843
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->hasActiveMedia()Z

    move-result p0

    return p0
.end method

.method public final hasAnyMedia()Z
    .locals 0

    .line 850
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->hasAnyMedia()Z

    move-result p0

    return p0
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :cond_0
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 949
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    if-nez v0, :cond_0

    goto :goto_1

    .line 950
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->internalListeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 952
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 33
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "key"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "sbn"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-boolean v3, v0, Lcom/android/systemui/media/MediaDataManager;->useQsMediaPlayer:Z

    if-eqz v3, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/media/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "onMeidaNotificationAdded() : "

    .line 293
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDataManager:MediaLogger"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sbn.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/media/MediaDataManager;->findExistingEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 298
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->access$getLOADING$p()Lcom/android/systemui/media/MediaData;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const v31, 0xfff7ff

    const/16 v32, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v32}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IIZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v4

    .line 299
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaData;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 303
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_1
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/MediaDataManager;->loadMediaData(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaDataManager;->onNotificationRemoved(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onNotificationRemoved(Ljava/lang/String;)V
    .locals 32
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 786
    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaData;

    .line 787
    iget-boolean v3, v0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    const-string v4, "MediaDataManager:MediaLogger"

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->isLocalSession()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not removing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because resumable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v3}, Lcom/android/systemui/media/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;

    move-result-object v3

    .line 791
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v31, 0x0

    .line 792
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-wide/16 v27, 0x0

    const v29, 0xbb69ff

    const/16 v30, 0x0

    move-object v3, v2

    .line 791
    invoke-static/range {v3 .. v30}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IIZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v3

    .line 794
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 795
    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v31, 0x1

    :cond_2
    if-eqz v31, :cond_3

    .line 798
    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_2

    .line 805
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataRemoved(Ljava/lang/String;)V

    .line 806
    invoke-direct {v0, v2, v2, v3}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :goto_2
    return-void

    :cond_4
    if-eqz v2, :cond_5

    const-string v2, "onNotificationRemoved() : "

    .line 812
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataRemoved(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDataManager;->allowMediaRecommendations:Z

    const-string v1, "MediaDataManager:MediaLogger"

    if-nez v0, :cond_0

    const-string p0, "Smartspace recommendation is disabled in Settings."

    .line 745
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 768
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const-string p1, "More than 1 Smartspace Media Update. Resetting the status..."

    .line 776
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/media/MediaDataManager;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    .line 779
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->getEMPTY_SMARTSPACE_MEDIA_DATA()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    goto :goto_1

    .line 763
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    .line 764
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-string v0, "Forwarding Smartspace media update."

    .line 768
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/media/MediaDataManager;->toSmartspaceMediaData(Landroid/app/smartspace/SmartspaceTarget;Z)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    .line 771
    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    .line 770
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/media/MediaDataManager;->notifySmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;)V

    goto :goto_1

    .line 752
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->isActive()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string p1, "Set Smartspace media to be inactive for the data update"

    .line 756
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->getEMPTY_SMARTSPACE_MEDIA_DATA()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v3

    .line 759
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7e

    const/4 v12, 0x0

    .line 758
    invoke-static/range {v3 .. v12}, Lcom/android/systemui/media/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/SmartspaceMediaData;Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;IILjava/lang/Object;)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    .line 760
    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/media/MediaDataManager;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public final onSwipeToDismiss()V
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->onSwipeToDismiss()V

    return-void
.end method

.method public final removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDataManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaDataFilter;->removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    return-void
.end method

.method public final setMediaResumptionEnabled(Z)V
    .locals 3

    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 823
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    if-nez p1, :cond_3

    .line 827
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 509
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 494
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 829
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataManager;->getMediaEntries()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setResumeAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaData;

    if-nez p0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/MediaData;->setResumeAction(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaData;->setHasCheckedForResume(Z)V

    :goto_0
    return-void
.end method

.method public final setTimedOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    xor-int/lit8 p3, p2, 0x1

    .line 449
    invoke-virtual {v0, p3}, Lcom/android/systemui/media/MediaData;->setActive(Z)V

    .line 450
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timedOut: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MediaDataManager:MediaLogger"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :goto_0
    return-void
.end method
