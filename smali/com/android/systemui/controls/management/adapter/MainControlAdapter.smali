.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MainControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;,
        Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;,
        Lcom/android/systemui/controls/management/adapter/MainControlAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/controls/management/adapter/Holder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainControlAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainControlAdapter.kt\ncom/android/systemui/controls/management/adapter/MainControlAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,612:1\n1711#2,3:613\n1711#2,3:616\n181#3,2:619\n*E\n*S KotlinDebug\n*F\n+ 1 MainControlAdapter.kt\ncom/android/systemui/controls/management/adapter/MainControlAdapter\n*L\n131#1,3:613\n137#1,3:616\n450#1,2:619\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final controlViewHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final buttonClickCallback:Landroid/view/View$OnClickListener;
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

.field private final controlsController:Lcom/android/systemui/controls/controller/ControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;
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

.field private final itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/management/model/MainModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final positionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->Companion:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/ui/ControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/ControlsMetricsLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/android/systemui/controls/ui/util/AUIFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "TT;>;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
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

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlActionCoordinator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customControlActionCoordinator"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsMetricsLogger"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionChangedCallback"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerTouchCallback"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerItemSelectedChangedCallback"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonClickCallback"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auiFacade"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    move-object/from16 v9, p16

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeProvider"

    move-object/from16 v9, p17

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v9, p16

    .line 39
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 41
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 42
    iput-object v4, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 43
    iput-object v5, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 44
    iput-object v6, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 45
    iput-object v7, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 46
    iput-object v8, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 48
    iput-object v10, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 49
    iput-object v11, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->positionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;

    .line 50
    iput-object v12, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    .line 51
    iput-object v13, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    .line 52
    iput-object v14, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->buttonClickCallback:Landroid/view/View$OnClickListener;

    .line 53
    iput-object v15, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 54
    iput-object v9, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    move-object/from16 v1, p17

    .line 55
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 71
    new-instance v1, Lcom/android/systemui/controls/ui/util/SpanManager;

    move-object/from16 v2, p9

    invoke-direct {v1, v2}, Lcom/android/systemui/controls/ui/util/SpanManager;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V

    .line 72
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/controls/ui/util/SpanInfo;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {v5, v3, v3, v6, v7}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 74
    sget-boolean v8, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/android/systemui/R$dimen;->control_custom_base_item_size_fold:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/android/systemui/R$dimen;->control_custom_base_item_size:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_0
    const/4 v11, 0x2

    .line 73
    invoke-direct {v5, v9, v3, v11, v7}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-eqz v8, :cond_1

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->control_custom_base_item_size_fold:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->control_custom_base_item_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 80
    :goto_1
    invoke-direct {v5, v8, v3, v11, v7}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v5, v3, v3, v6, v7}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    const/4 v1, -0x1

    .line 90
    iput v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    .line 91
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 93
    new-instance v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;-><init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 295
    new-instance v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

    return-void
.end method

.method public static final synthetic access$attachedToRecyclerView(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic access$getAuiFacade$p(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)Lcom/android/systemui/controls/ui/util/AUIFacade;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    return-object p0
.end method

.method public static final synthetic access$getControlViewHolders$cp()Ljava/util/Map;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method

.method public static final synthetic access$getSpanManager$p(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)Lcom/android/systemui/controls/ui/util/SpanManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    return-object p0
.end method

.method private final attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    .line 255
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/util/SpanManager;->getMaxSpan()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 258
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 255
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 259
    new-instance v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;-><init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 260
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final moveElement(II)V
    .locals 3

    if-ge p1, p2, :cond_1

    if-ge p1, p2, :cond_3

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 286
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

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

    .line 290
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

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


# virtual methods
.method public final actionResponse(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final changeModel(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/management/model/MainModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 272
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final closeDialogs()V
    .locals 1

    .line 450
    sget-object p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 181
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getCustomControlActionCoordinator()Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 226
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    return p1
.end method

.method public final getModels()Ljava/util/List;
    .locals 0
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

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    return-object p0
.end method

.method public final getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/Holder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/Holder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/adapter/Holder;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/adapter/Holder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/Holder;->bindData(Lcom/android/systemui/controls/management/model/MainModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/adapter/Holder;ILjava/util/List;)V
    .locals 5
    .param p1    # Lcom/android/systemui/controls/management/adapter/Holder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/Holder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto/16 :goto_4

    .line 1711
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1712
    :cond_2
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 131
    sget-object v4, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    if-ne v3, v4, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 132
    instance-of v0, p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    if-eqz v0, :cond_5

    .line 133
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainModel;->getNeedToMakeDim()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/management/adapter/ControlHolder;->updateDimStatus(Z)V

    .line 1711
    :cond_5
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1712
    :cond_7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 137
    sget-object v4, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    if-eq v3, v4, :cond_9

    move v3, v1

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_2
    if-eqz v3, :cond_8

    :goto_3
    if-eqz v1, :cond_a

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/Holder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/Holder;
    .locals 11
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 210
    new-instance p2, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;

    .line 212
    sget v2, Lcom/android/systemui/R$layout;->controls_spinner_layout:I

    .line 211
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string p1, "layoutInflater.inflate(\n                        R.layout.controls_spinner_layout,\n                        parent, false\n                    )"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    .line 216
    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    .line 217
    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->buttonClickCallback:Landroid/view/View$OnClickListener;

    .line 218
    iget-object v8, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object v3, p2

    .line 210
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    goto/16 :goto_1

    .line 221
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Wrong viewType: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    sget p2, Lcom/android/systemui/R$layout;->controls_small_layout_item:I

    .line 183
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 186
    sget p2, Lcom/android/systemui/R$id;->small_layout_viewstub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 187
    sget v0, Lcom/android/systemui/R$layout;->controls_status_info:I

    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 188
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 191
    new-instance p2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 192
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    .line 193
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 194
    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 195
    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 196
    iget-object v8, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 197
    iget-object v9, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 198
    iget v10, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    move-object v3, p2

    .line 191
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;I)V

    .line 200
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getCustomControlActionCoordinator()Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    move-result-object v1

    .line 202
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 200
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->initialize(Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;I)V

    .line 207
    new-instance p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    sget-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/management/adapter/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V

    goto :goto_0

    .line 153
    :cond_2
    sget p2, Lcom/android/systemui/R$layout;->controls_custom_base_item:I

    .line 152
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 156
    new-instance p2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 157
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 158
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 159
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 160
    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 161
    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 162
    iget-object v8, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 163
    iget v9, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    move-object v2, p2

    .line 156
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;I)V

    .line 165
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getCustomControlActionCoordinator()Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    move-result-object v2

    .line 167
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 165
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->initialize(Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;I)V

    .line 172
    new-instance p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    sget-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/management/adapter/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V

    :goto_0
    move-object p2, p0

    goto :goto_1

    .line 175
    :cond_3
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureHolder;

    .line 177
    sget p0, Lcom/android/systemui/R$layout;->controls_custom_main_zone_header:I

    .line 176
    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "layoutInflater.inflate(\n                        R.layout.controls_custom_main_zone_header,\n                        parent, false\n                    )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/adapter/StructureHolder;-><init>(Landroid/view/View;)V

    :goto_1
    return-object p2
.end method

.method public final onMoveItem(II)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->moveElement(II)V

    .line 277
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 279
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 280
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->positionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;->onPositionChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUid(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    return-void
.end method
