.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlsUiController;
.implements Lcom/android/systemui/controls/ui/CustomControlsUiController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/CustomControlsUiControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,890:1\n734#2:891\n825#2:892\n1711#2,3:893\n826#2:896\n1517#2:897\n1588#2,3:898\n734#2:901\n825#2,2:902\n1517#2:904\n1588#2,2:905\n1590#2:908\n256#2,2:909\n221#2,2:911\n768#2,11:913\n734#2:924\n825#2,2:925\n1445#2:927\n1470#2,3:928\n1473#2,3:938\n1517#2:942\n1588#2,3:943\n768#2,11:947\n734#2:958\n825#2,2:959\n768#2,11:961\n768#2,11:972\n734#2:983\n825#2,2:984\n734#2:986\n825#2,2:987\n1013#2:989\n1819#2:990\n768#2,11:991\n734#2:1002\n825#2,2:1003\n734#2:1005\n825#2,2:1006\n734#2:1008\n825#2,2:1009\n768#2,11:1011\n1517#2:1022\n1588#2,3:1023\n1820#2:1026\n256#2,2:1027\n734#2:1029\n825#2,2:1030\n1819#2:1032\n1819#2,2:1033\n1820#2:1035\n1571#2,9:1036\n1819#2:1045\n1820#2:1047\n1580#2:1048\n1571#2,9:1049\n1819#2:1058\n1820#2:1060\n1580#2:1061\n768#2,11:1062\n1517#2:1073\n1588#2,3:1074\n768#2,11:1077\n734#2:1088\n825#2,2:1089\n1#3:907\n1#3:1046\n1#3:1059\n355#4,7:931\n181#5:941\n182#5:946\n437#6,2:1091\n*E\n*S KotlinDebug\n*F\n+ 1 CustomControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/CustomControlsUiControllerImpl\n*L\n286#1:891\n286#1:892\n286#1,3:893\n286#1:896\n287#1:897\n287#1,3:898\n289#1:901\n289#1,2:902\n289#1:904\n289#1,2:905\n289#1:908\n304#1,2:909\n307#1,2:911\n318#1,11:913\n318#1:924\n318#1,2:925\n321#1:927\n321#1,3:928\n321#1,3:938\n329#1:942\n329#1,3:943\n715#1,11:947\n715#1:958\n715#1,2:959\n720#1,11:961\n768#1,11:972\n768#1:983\n768#1,2:984\n769#1:986\n769#1,2:987\n770#1:989\n792#1:990\n794#1,11:991\n794#1:1002\n794#1,2:1003\n796#1:1005\n796#1,2:1006\n799#1:1008\n799#1,2:1009\n816#1,11:1011\n817#1:1022\n817#1,3:1023\n792#1:1026\n873#1,2:1027\n256#1:1029\n256#1,2:1030\n256#1:1032\n259#1,2:1033\n256#1:1035\n270#1,9:1036\n270#1:1045\n270#1:1047\n270#1:1048\n271#1,9:1049\n271#1:1058\n271#1:1060\n271#1:1061\n274#1,11:1062\n404#1:1073\n404#1,3:1074\n652#1,11:1077\n653#1:1088\n653#1,2:1089\n270#1:1046\n271#1:1059\n321#1,7:931\n324#1:941\n324#1:946\n748#1,2:1091\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activityContext:Landroid/content/Context;

.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private adapterNeedToUpdateDataSet:Z

.field public allComponentInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsListingController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final customControlsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private isAutoRemove:Z

.field private isChanged:Z

.field private launchingPendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

.field private final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onDismiss:Ljava/lang/Runnable;

.field private final openAppButtonClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Landroid/view/ViewGroup;

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private serviceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spinnerTouchCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private verificationStructureInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->Companion:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 16
    .param p1    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/controls/ui/ControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/controls/ControlsMetricsLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/basic/util/LogWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/android/systemui/controls/ui/util/AUIFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lcom/android/systemui/controls/controller/util/BadgeSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

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

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "controlsController"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customControlsController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsListingController"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlActionCoordinator"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customControlActionCoordinator"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsMetricsLogger"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWrapper"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsActivityStarter"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auiFacade"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeSubject"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeProvider"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 68
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 69
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 70
    iput-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 71
    iput-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 72
    iput-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 73
    iput-object v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 74
    iput-object v7, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 75
    iput-object v8, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 76
    iput-object v9, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 77
    iput-object v10, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 78
    iput-object v11, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 79
    iput-object v12, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 80
    iput-object v13, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 81
    iput-object v14, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v1, p15

    .line 82
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 83
    iput-object v15, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 84
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 85
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    move-object/from16 v1, p19

    .line 86
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 114
    new-instance v1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/android/systemui/controls/management/model/MainComponentModel;-><init>(Ljava/util/List;Landroid/content/ComponentName;Z)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 121
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT_INFO()Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 129
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    .line 138
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->openAppButtonClickListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    .line 160
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    return-void
.end method

.method public static final synthetic access$changeStructure(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->changeStructure(Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getControlAdapter$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    return-object p0
.end method

.method public static final synthetic access$getControlsUtil$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    return-object p0
.end method

.method public static final synthetic access$getLaunchingPendingIntent$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/app/PendingIntent;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->launchingPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static final synthetic access$getLogWrapper$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-object p0
.end method

.method public static final synthetic access$getModels$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method

.method public static final synthetic access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    return-object p0
.end method

.method public static final synthetic access$getSharedPreferences$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/content/SharedPreferences;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getUiExecutor$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->listAdjustmentIfNeeded(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$loadComponentInfo(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->loadComponentInfo()V

    return-void
.end method

.method public static final synthetic access$notifyItemChanged(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    return-void
.end method

.method public static final synthetic access$onRefreshState$removeControl(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onRefreshState$removeControl(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;)V

    return-void
.end method

.method public static final synthetic access$onRefreshState$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onRefreshState$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    return-void
.end method

.method public static final synthetic access$reload(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->reload(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    return-void
.end method

.method public static final synthetic access$setAdapterNeedToUpdateDataSet(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setAdapterNeedToUpdateDataSet()V

    return-void
.end method

.method public static final synthetic access$setChanged$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    return-void
.end method

.method public static final synthetic access$setLaunchingPendingIntent$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->launchingPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static final synthetic access$setVerificationStructureInfos$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$showMainView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showMainView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showNonMainView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showNonMainView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showSeedingView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showSeedingView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updateComponentModel$updateLaunchingAppButton(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateComponentModel$updateLaunchingAppButton(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static final synthetic access$updateControl(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateControl(Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V

    return-void
.end method

.method private final changeStructure(Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V
    .locals 9

    .line 712
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {p2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 715
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 715
    invoke-virtual {v5}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 717
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 718
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 720
    iget-object v5, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v8, :cond_6

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 720
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v8}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_9
    move-object v6, v7

    :goto_4
    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-nez v6, :cond_a

    goto :goto_5

    .line 721
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 723
    :goto_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    .line 724
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 729
    :cond_b
    invoke-virtual {p1, v2}, Lcom/android/systemui/controls/management/model/MainControlModel;->setStructure(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance v7, Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-direct {v7, v5, v1, p2}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 731
    :goto_6
    invoke-virtual {p1, v7}, Lcom/android/systemui/controls/management/model/MainControlModel;->setControlWithState(Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 734
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->moveElement(II)V

    .line 735
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 736
    :goto_7
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    .line 738
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyItemMoved: from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomControlsUiControllerImpl"

    .line 738
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final clear$disposeFragment(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;->onDestroy()V

    :goto_0
    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 589
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->onDestroy()V

    .line 590
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 591
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->onDestroy()V

    .line 592
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    return-void
.end method

.method private static final clear$initComponentModel(Lcom/android/systemui/controls/management/model/MainComponentModel;)V
    .locals 1

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/management/model/MainComponentModel;->setControlsSpinnerInfo(Ljava/util/List;)V

    .line 597
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/management/model/MainComponentModel;->setSelected(Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/management/model/MainComponentModel;->setShowButton(Z)V

    return-void
.end method

.method private final createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static synthetic getAllComponentInfo$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getFragmentManager$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getListingCallback$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isAutoRemove$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final listAdjustmentIfNeeded(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1819
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 794
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 794
    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 795
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v9, v10, :cond_6

    move v9, v8

    goto :goto_3

    :cond_6
    move v9, v7

    :goto_3
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    check-cast v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 734
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 796
    invoke-virtual {v11}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v11

    sget-object v12, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v11, v12, :cond_9

    move v11, v8

    goto :goto_6

    :cond_9
    move v11, v7

    :goto_6
    if-eqz v11, :cond_8

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 734
    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 799
    invoke-virtual {v11}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v11

    sget-object v12, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v11, v12, :cond_c

    move v11, v8

    goto :goto_8

    :cond_c
    move v11, v7

    :goto_8
    if-eqz v11, :cond_b

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    const-string v3, "CustomControlsUiControllerImpl"

    if-nez v5, :cond_16

    .line 803
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v8

    if-nez v10, :cond_e

    .line 804
    sget-boolean v10, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v8

    if-eqz v10, :cond_16

    .line 807
    :cond_e
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v8, v10

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_9

    .line 808
    :cond_f
    iget-object v8, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 810
    :goto_9
    iget-object v8, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/16 v16, 0x0

    move-object v10, v15

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 811
    iget-object v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v6, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 812
    :goto_a
    iget-object v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 814
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listAdjustmentIfNeeded-notifyItemInserted: structureName="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", index="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", models="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-object v7, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v12, :cond_11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1517
    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1589
    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 817
    invoke-virtual {v11}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v11

    if-nez v11, :cond_13

    :goto_d
    const/4 v11, 0x0

    goto :goto_e

    :cond_13
    invoke-virtual {v11}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v11

    if-nez v11, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v11}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlTitle()Ljava/lang/CharSequence;

    move-result-object v11

    :goto_e
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 814
    :cond_15
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 812
    invoke-virtual {v6, v3, v7}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v5, :cond_0

    .line 824
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 825
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v4, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 828
    iget-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 829
    iget-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v5, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 830
    :goto_f
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v5, "listAdjustmentIfNeeded-notifyItemRemoved: structureName="

    .line 832
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 830
    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method private final loadComponentInfo()V
    .locals 2

    const-string v0, "CustomControlsUiControllerImpl"

    const-string v1, "loadComponentInfo()"

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/CustomControlsController;->getActiveFavoritesComponent()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setAllComponentInfo(Ljava/util/List;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->loadComponentInfo$loadPreferenceByComponent(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    return-void
.end method

.method private static final loadComponentInfo$loadPreferenceByComponent(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)Lcom/android/systemui/controls/controller/ComponentInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;)",
            "Lcom/android/systemui/controls/controller/ComponentInfo;"
        }
    .end annotation

    .line 456
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT_INFO()Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object p0

    return-object p0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_custom_component"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 460
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 462
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    :cond_4
    check-cast v2, Lcom/android/systemui/controls/controller/ComponentInfo;

    if-nez v2, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 463
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 464
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 465
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 466
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    return-object v2
.end method

.method private final moveElement(II)V
    .locals 3

    if-ge p1, p2, :cond_1

    if-ge p1, p2, :cond_3

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 842
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-lt v0, p2, :cond_0

    goto :goto_2

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p1, :cond_3

    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 846
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private final notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 3

    .line 852
    sget-object v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 854
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V

    const-wide/16 p0, 0xc8

    .line 853
    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notifyItemChanged: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomControlsUiControllerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final notifyToUpdateComponent$needToUpdate(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static final onRefreshState$removeControl(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 644
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 647
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "notifyItemRemoved: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomControlsUiControllerImpl"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onRefreshState$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 5

    .line 652
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 653
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 655
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    check-cast v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-nez v2, :cond_7

    goto :goto_4

    .line 658
    :cond_7
    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onRefreshState$showEmptyStructureIfNeeded$lambda-43$lambda-42$needToHide-40(Ljava/util/List;)Z

    move-result v0

    .line 659
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainControlModel;->getNeedToHide()Z

    move-result v1

    if-eq v1, v0, :cond_9

    .line 660
    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/management/model/MainControlModel;->setNeedToHide(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method private static final onRefreshState$showEmptyStructureIfNeeded$lambda-43$lambda-42$needToHide-40(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainControlModel;",
            ">;)Z"
        }
    .end annotation

    .line 656
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final refreshOrdering(Lcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 8

    .line 765
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 766
    :cond_1
    invoke-virtual {v0}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 768
    invoke-virtual {v4}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 769
    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v6, v7, :cond_8

    move v4, v5

    :cond_8
    if-eqz v4, :cond_7

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1013
    :cond_9
    new-instance v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$refreshOrdering$lambda-58$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$refreshOrdering$lambda-58$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 772
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 774
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_e

    .line 775
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v6, v7, :cond_b

    move v6, v5

    goto :goto_3

    :cond_b
    move v6, v4

    :goto_3
    if-eqz v6, :cond_a

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    const-string v1, "null cannot be cast to non-null type com.android.systemui.controls.management.model.MainModel"

    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/controls/management/model/MainModel;

    .line 776
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v5

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 779
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->moveElement(II)V

    .line 780
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v0, :cond_d

    goto :goto_5

    .line 781
    :cond_d
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 782
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 785
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshOrdering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomControlsUiControllerImpl"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 787
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez p0, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_6
    return-void
.end method

.method private final reload(Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 242
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->reload$notifyAdapterToUpdateDataSet(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    return-void
.end method

.method private static final reload$notifyAdapterToUpdateDataSet(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    :cond_1
    return-void
.end method

.method private final setAdapterNeedToUpdateDataSet()V
    .locals 1

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    return-void
.end method

.method private static final show$needToShowNonMainView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z
    .locals 2

    .line 404
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getStructureInfos()Ljava/util/List;

    move-result-object p0

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 404
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private final showMainView(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "CustomControlsUiControllerImpl"

    const-string/jumbo v3, "showMainView()"

    .line 527
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isOOBEManageAppsCompleted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->setOOBEManageAppsCompleted(Landroid/content/Context;)V

    .line 537
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    const-class v2, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 539
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 541
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v5, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    .line 543
    new-instance v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    iget-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v7, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    iget-object v8, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/systemui/controls/ui/fragment/MainFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    .line 542
    :cond_2
    iput-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 546
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 547
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->getAdapter()Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    move-result-object v5

    if-nez v5, :cond_6

    .line 548
    new-instance v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 549
    iget-object v7, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    if-eqz v7, :cond_5

    .line 550
    iget-object v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v8, "controlsController.get()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Lcom/android/systemui/controls/controller/ControlsController;

    .line 551
    iget-object v9, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 552
    iget-object v10, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 553
    iget-object v11, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 554
    iget-object v12, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 555
    iget-object v13, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 556
    iget-object v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$id;->app_bar:I

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "parent.rootView.requireViewById<AppBarLayout>(R.id.app_bar)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v4

    check-cast v14, Lcom/google/android/material/appbar/AppBarLayout;

    .line 557
    iget-object v15, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 558
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    move-object/from16 v16, v4

    .line 559
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    move-object/from16 v17, v4

    .line 560
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    move-object/from16 v18, v4

    .line 561
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    move-object/from16 v19, v4

    .line 562
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->openAppButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v4

    .line 563
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v21, v4

    .line 564
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    move-object/from16 v22, v4

    .line 565
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object/from16 v23, v4

    move-object v6, v5

    .line 548
    invoke-direct/range {v6 .. v23}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    .line 566
    invoke-virtual {v3, v5}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->setAdapter(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 548
    iput-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    goto :goto_1

    :cond_4
    const-string v0, "parent"

    .line 556
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string v0, "activityContext"

    .line 549
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 570
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 571
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->changeModel(Ljava/util/List;)V

    .line 572
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$id;->frame_layout:I

    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private final showNonMainView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showNonMainView$showNoAppView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showNonMainView$needToShowSetupView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showNonMainView$showInitialSetupView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    goto :goto_0

    .line 522
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->showNonMainView$showNoFavoriteView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    :goto_0
    return-void
.end method

.method private static final showNonMainView$needToShowSetupView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isOOBEManageAppsCompleted(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final showNonMainView$showInitialSetupView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 4

    const-string v0, "CustomControlsUiControllerImpl"

    const-string/jumbo v1, "showInitialSetupView()"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 501
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-class v3, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 500
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string p0, "onDismiss"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "activityContext"

    .line 501
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private static final showNonMainView$showNoAppView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 3

    const-string v0, "CustomControlsUiControllerImpl"

    const-string/jumbo v1, "showNoAppView()"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 485
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-nez v1, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 489
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 488
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    .line 487
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->frame_layout:I

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private static final showNonMainView$showNoFavoriteView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 5

    const-string v0, "CustomControlsUiControllerImpl"

    const-string/jumbo v1, "showNoFavoriteView()"

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 509
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-nez v1, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 512
    new-instance v1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    .line 511
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 515
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->frame_layout:I

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private final showSeedingView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "CustomControlsUiControllerImpl"

    const-string/jumbo p1, "showSeedingView()"

    .line 477
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final unsubscribeAndUnbindIfNecessary$isNecessary(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 626
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "selectedComponentInfo.componentName.packageName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSmartThingsPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final update$toModel(Lcom/android/systemui/controls/controller/ComponentInfo;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainControlModel;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getStructureInfos()Ljava/util/List;

    move-result-object v1

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 256
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1819
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 257
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    new-instance v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getStructureInfos()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update$toModel$needToHide(Ljava/util/List;)Z

    move-result v5

    const/4 v10, 0x0

    invoke-direct {v4, v3, v10, v5}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v4

    .line 1819
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 260
    new-instance v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    new-instance v6, Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v6, v5, v4, v10}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v12

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static final update$toModel$needToHide(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;)Z"
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/StructureInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static final update$updateModels(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 273
    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update$toModel(Lcom/android/systemui/controls/controller/ComponentInfo;)Ljava/util/List;

    move-result-object v1

    .line 768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {v2, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update$updateModels$lambda-9$isDifferent(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setAdapterNeedToUpdateDataSet()V

    :cond_2
    return-void
.end method

.method private static final update$updateModels$lambda-9$isDifferent(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainControlModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainControlModel;",
            ">;)Z"
        }
    .end annotation

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1579
    check-cast v1, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 270
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    .line 1579
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1571
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1579
    check-cast v1, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 271
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_3
    move-object v1, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_4

    .line 1579
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1571
    :cond_7
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final updateComponentModel(Ljava/util/List;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ">;",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ")V"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 365
    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/management/model/MainComponentModel;->setControlsSpinnerInfo(Ljava/util/List;)V

    .line 367
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/MainComponentModel;->getSelected()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 368
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/management/model/MainComponentModel;->setSelected(Landroid/content/ComponentName;)V

    .line 369
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->launchingPendingIntent:Landroid/app/PendingIntent;

    .line 371
    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateComponentModel$updateLaunchingAppButton(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    .line 376
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    if-eqz p1, :cond_1

    invoke-static {p0, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateComponentModel$checkLaunchingApp(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez p1, :cond_2

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getUid()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->setUid(I)V

    .line 380
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method private static final updateComponentModel$checkLaunchingApp(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/controls/controller/CustomControlsController;->loadControlsProviderInfo(Landroid/content/ComponentName;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final updateComponentModel$updateLaunchingAppButton(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 342
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/management/model/MainComponentModel;->setShowButton(Z)V

    .line 343
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    return-void
.end method

.method private final updateControl(Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V
    .locals 3

    .line 752
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 753
    :cond_0
    new-instance v1, Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    invoke-virtual {v2, p2}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    move-object v0, v1

    .line 754
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/model/MainControlModel;->setControlWithState(Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 756
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_DYNAMIC_ORDERING:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateControl$isAllSmallType(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/service/controls/Control;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 757
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->refreshOrdering(Lcom/android/systemui/controls/management/model/MainControlModel;)V

    goto :goto_1

    .line 759
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    :goto_1
    return-void
.end method

.method private static final updateControl$isAllSmallType(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/service/controls/Control;)Z
    .locals 2

    .line 747
    invoke-virtual {p1}, Landroid/service/controls/Control;->getLayoutType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 438
    sget-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$$inlined$filterIsInstance$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.sequences.Sequence<R>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 748
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;-><init>(Landroid/service/controls/Control;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 749
    sget-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 750
    sget-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->contains(Lkotlin/sequences/Sequence;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hide()V

    .line 602
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->clear$disposeFragment(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    const/4 v0, 0x0

    .line 604
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    .line 605
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->clear$initComponentModel(Lcom/android/systemui/controls/management/model/MainComponentModel;)V

    .line 606
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->clearCache()V

    .line 608
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 610
    new-instance v1, Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$id;->frame_layout:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 612
    instance-of v3, v2, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$IntroNoAppsToShow;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$IntroNoAppsToShow;

    goto :goto_0

    .line 613
    :cond_0
    instance-of v2, v2, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    goto :goto_0

    .line 614
    :cond_1
    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    .line 610
    :goto_0
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 609
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 620
    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    :cond_3
    return-void
.end method

.method public closeDialogs(Z)V
    .locals 0

    .line 637
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->closeDialogs()V

    .line 638
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->closeDialogs()V

    return-void
.end method

.method public final getAllComponentInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "allComponentInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fragmentManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getListingCallback()Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "listingCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getModels()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 878
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredStructure(Ljava/util/List;)Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;)",
            "Lcom/android/systemui/controls/controller/StructureInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "structures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_STRUCTURE()Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p0

    return-object p0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_custom_component"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 870
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT()Landroid/content/ComponentName;

    move-result-object v0

    .line 871
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_custom_structure"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 873
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-eqz v5, :cond_3

    move-object v2, v3

    :cond_5
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    if-nez v2, :cond_6

    .line 874
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    :cond_6
    return-object v2
.end method

.method public final getSpinnerItemSelectionChangedCallback()Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 881
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    return-object p0
.end method

.method public final getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 319
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-eq v4, v5, :cond_4

    .line 320
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    if-eqz v2, :cond_2

    .line 319
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1445
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1471
    move-object v3, v1

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 321
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_6
    check-cast v4, Ljava/util/List;

    .line 1473
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 323
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1517
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1589
    check-cast v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 329
    invoke-virtual {v5}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 326
    new-instance v4, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {v4, p1, v3, v1}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 330
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getCustomStructureInfo()Lcom/android/systemui/controls/controller/CustomStructureInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/controller/CustomStructureInfo;->setActive(Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 325
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    return-object p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->closeDialogs(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saveFavorites(Landroid/content/ComponentName;)Z

    .line 580
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getListingCallback()Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final isAutoRemove()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isAutoRemove:Z

    return p0
.end method

.method public notifyToUpdateComponent(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyToUpdateComponent$needToUpdate(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CustomControlsUiControllerImpl"

    const-string p1, "notifyToUpdateComponent - ignore"

    .line 435
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "controlId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final saveFavorites(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-interface {v0, p1}, Lcom/android/systemui/controls/controller/CustomControlsController;->getActiveFlag(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CustomControlsUiControllerImpl"

    if-nez v0, :cond_0

    const-string p0, "Skip saveFavorites component: "

    .line 211
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 216
    iget-boolean v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveFavorites component "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", structureInfos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 219
    new-instance v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-interface {p0, v1}, Lcom/android/systemui/controls/controller/CustomControlsController;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final setAllComponentInfo(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    return-void
.end method

.method public final setAutoRemove(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isAutoRemove:Z

    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final setListingCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onDismiss"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "activityContext"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CustomControlsUiControllerImpl"

    const-string/jumbo v1, "show()"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 409
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 410
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 411
    invoke-virtual {p0, p4}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 413
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p1, p3}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->setActivityContext(Landroid/content/Context;)V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->loadComponentInfo()V

    .line 418
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 419
    sget-object p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;

    invoke-interface {p1, p2}, Lcom/android/systemui/controls/controller/ControlsController;->addSeedingFavoritesCallback(Ljava/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$2;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->show$needToShowNonMainView(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$3;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    goto :goto_0

    .line 421
    :cond_1
    new-instance p1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$4;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    .line 417
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setListingCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    .line 424
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getListingCallback()Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public unsubscribeAndUnbindIfNecessary()V
    .locals 2

    .line 630
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary$isNecessary(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CustomControlsUiControllerImpl"

    const-string/jumbo v1, "unsubscribeAndUnbindIfNecessary"

    .line 631
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/CustomControlsController;->unsubscribeAndUnbind()V

    :cond_0
    return-void
.end method

.method public final update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/controller/ComponentInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "serviceInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allComp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 286
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/ComponentInfo;->getStructureInfos()Ljava/util/List;

    move-result-object v4

    .line 1711
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1712
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 286
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getCustomStructureInfo()Lcom/android/systemui/controls/controller/CustomStructureInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/CustomStructureInfo;->getActive()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1517
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1589
    check-cast v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 287
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 734
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 289
    iget-object v5, v5, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1517
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 290
    new-instance v2, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 291
    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "it.loadLabel()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "it.loadIcon()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v6, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    const-string v7, "it.componentName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Lcom/android/systemui/controls/ControlsServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 290
    invoke-direct {v2, v4, v5, v6, v1}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;I)V

    .line 295
    sget-object v1, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->registerComponentIcon(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 297
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "CustomControlsUiControllerImpl"

    if-eqz v0, :cond_9

    const-string p0, "filteredList is Empty"

    .line 298
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 304
    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_5
    check-cast v2, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    if-nez v2, :cond_c

    .line 305
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 306
    :cond_c
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateComponentModel(Ljava/util/List;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V

    .line 221
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 307
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 308
    invoke-static {p0, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update$updateModels(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 309
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "count: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-interface {p1, p3}, Lcom/android/systemui/controls/controller/CustomControlsController;->subscribeToFavorites(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 312
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    return-void

    .line 222
    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
