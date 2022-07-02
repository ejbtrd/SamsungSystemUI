.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "CustomControlsFavoritingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/CustomControlsFavoritingActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,515:1\n1517#2:516\n1588#2,3:517\n1819#2:520\n734#2:521\n825#2:522\n1711#2,3:523\n826#2:526\n1820#2:527\n734#2:529\n825#2:530\n1711#2,3:531\n826#2:534\n1819#2:536\n734#2:537\n825#2,2:538\n1445#2:540\n1470#2,3:541\n1473#2,3:551\n1820#2:554\n181#3:528\n182#3:535\n355#4,7:544\n*E\n*S KotlinDebug\n*F\n+ 1 CustomControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/CustomControlsFavoritingActivity\n*L\n150#1:516\n150#1,3:517\n367#1:520\n370#1:521\n370#1:522\n370#1,3:523\n370#1:526\n367#1:527\n385#1:529\n385#1:530\n385#1,3:531\n385#1:534\n468#1:536\n469#1:537\n469#1,2:538\n471#1:540\n471#1,3:541\n471#1,3:551\n468#1:554\n383#1:528\n383#1:535\n471#1,7:544\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancelLoadRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private component:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controller:Lcom/android/systemui/controls/controller/ControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private controlsListLayout:Landroid/widget/LinearLayout;

.field private controlsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentFavorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

.field private final customController:Lcom/android/systemui/controls/controller/CustomControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAutoRemove:Z

.field private isLoadingFinished:Z

.field private isPagerLoaded:Z

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private noItemsLayout:Landroid/widget/LinearLayout;

.field private requestOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private retryDialog:Landroidx/appcompat/app/AlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->Companion:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/controller/CustomControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/ui/util/AUIFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auiFacade"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p4}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 62
    iput-object p6, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 63
    iput-object p7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 64
    iput-object p8, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    const-string p1, "CustomControlsFavoritingActivity"

    .line 80
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->TAG:Ljava/lang/String;

    .line 91
    iput-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 104
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;

    .line 157
    new-instance p1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    invoke-direct {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    return-void
.end method

.method public static final synthetic access$createErrorDialog(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->createErrorDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createErrorDialog$cancel(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->createErrorDialog$cancel(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    return-object p0
.end method

.method public static final synthetic access$getComponent$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Landroid/content/ComponentName;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/controller/ControlsController;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    return-object p0
.end method

.method public static final synthetic access$getControlsMap$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getCurrentFavorites$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCustomAdapter$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    return-object p0
.end method

.method public static final synthetic access$getCustomModel$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/model/AllStructureModel;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getFavoriteControlChangeMainCallback$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getRequestOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getRetryDialog$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static final synthetic access$isAutoRemove$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isAutoRemove:Z

    return p0
.end method

.method public static final synthetic access$loadControls(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V

    return-void
.end method

.method public static final synthetic access$setAutoRemove$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isAutoRemove:Z

    return-void
.end method

.method public static final synthetic access$setCancelLoadRunnable$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setControlsMap$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/Map;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$setCurrentOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/List;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCustomModel$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    return-void
.end method

.method public static final synthetic access$setLoadingFinished$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    return-void
.end method

.method public static final synthetic access$setRequestOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/List;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setRetryDialog$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static final synthetic access$showErrorDialog(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->showErrorDialog()V

    return-void
.end method

.method public static final synthetic access$showNoItemPage(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->showNoItemPage()V

    return-void
.end method

.method public static final synthetic access$updateFavorites(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->updateFavorites()V

    return-void
.end method

.method private final bindViews()V
    .locals 6

    .line 288
    sget v0, Lcom/android/systemui/R$layout;->controls_custom_management:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 290
    sget v0, Lcom/android/systemui/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 291
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 294
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 298
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 299
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    const-string/jumbo v3, "this"

    .line 300
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->controls_basic_width_percentage:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 299
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 304
    sget v0, Lcom/android/systemui/R$id;->controls_list_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "requireViewById(R.id.controls_list_layout)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 305
    sget v0, Lcom/android/systemui/R$id;->no_items_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "requireViewById(R.id.no_items_layout)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    sget v0, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 311
    sget v3, Lcom/android/systemui/R$layout;->controls_structure_page:I

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 315
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v5, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 316
    sget v0, Lcom/android/systemui/R$id;->listAll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 317
    iget-object v4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 318
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 319
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string/jumbo v1, "requireViewById<RecyclerView>(R.id.listAll).apply {\n            adapter = customAdapter\n            seslSetGoToTopEnabled(true)\n        }"

    .line 316
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->listView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    :cond_1
    const-string p0, "customAdapter"

    .line 317
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p0, "noItemsLayout"

    .line 308
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p0, "controlsListLayout"

    .line 307
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final createErrorDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 5

    .line 256
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_retry_dialog_loading_timeout:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/systemui/R$style;->Theme_AppCompat_DayNight_Dialog_Alert:I

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 259
    sget v2, Lcom/android/systemui/R$string;->controls_retry_dialog_title:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 261
    sget v0, Lcom/android/systemui/R$string;->controls_retry_dialog_retry:I

    new-instance v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 265
    sget v0, Lcom/android/systemui/R$string;->controls_custom_dialog_cancel:I

    new-instance v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 268
    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const-string v0, "builder.create()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method private static final createErrorDialog$cancel(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->onBackPressed()V

    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private final loadControls()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    new-instance v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 230
    new-instance v3, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    new-instance v4, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 175
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/android/systemui/controls/controller/CustomControlsController;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private static final onActivityResult$lambda-29$setReorderRequest(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    return-void
.end method

.method private final refreshStructureOrdering(Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/model/AllStructureModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic refreshStructureOrdering$default(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 437
    sget-object p3, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$1;->INSTANCE:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$1;

    .line 435
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->refreshStructureOrdering(Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final showErrorDialog()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final showNoItemPage()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "controlsListLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "noItemsLayout"

    .line 283
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final tryLoadForComponent()V
    .locals 7

    .line 163
    new-instance v6, Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 164
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v0, "resources"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    const/4 v5, 0x1

    move-object v0, v6

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    const/4 v1, 0x0

    const-string v2, "customAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->changeModel(Lcom/android/systemui/controls/management/model/StructureModel;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v6, v0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V

    return-void

    .line 168
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateFavorites()V
    .locals 15

    .line 363
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    const/4 v2, 0x0

    const-string v3, "customModel"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    .line 367
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 368
    iget-object v7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    move-result-object v8

    .line 734
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 1711
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    move v11, v4

    goto :goto_2

    .line 1712
    :cond_5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/controls/ControlStatus;

    .line 370
    invoke-virtual {v13}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v11, v5

    :goto_2
    if-eqz v11, :cond_3

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    :cond_7
    new-instance v7, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 373
    iget-object v8, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 372
    invoke-direct {v7, v8, v6, v9}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 377
    invoke-virtual {v7}, Lcom/android/systemui/controls/controller/StructureInfo;->getCustomStructureInfo()Lcom/android/systemui/controls/controller/CustomStructureInfo;

    move-result-object v6

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v5

    invoke-virtual {v6, v8}, Lcom/android/systemui/controls/controller/CustomStructureInfo;->setActive(Z)V

    .line 378
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 371
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 370
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    if-nez v1, :cond_a

    goto/16 :goto_6

    .line 181
    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 385
    iget-object v7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    move-result-object v7

    .line 734
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 385
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .line 1711
    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_e

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_d
    move v10, v4

    goto :goto_5

    .line 1712
    :cond_e
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/controls/ControlStatus;

    .line 385
    invoke-virtual {v12}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v10, v5

    :goto_5
    if-eqz v10, :cond_c

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 386
    :cond_10
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_b

    .line 388
    new-instance v7, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 389
    iget-object v9, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 388
    invoke-direct {v7, v9, v6, v8}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 393
    invoke-virtual {v7}, Lcom/android/systemui/controls/controller/StructureInfo;->getCustomStructureInfo()Lcom/android/systemui/controls/controller/CustomStructureInfo;

    move-result-object v6

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v5

    invoke-virtual {v6, v8}, Lcom/android/systemui/controls/controller/CustomStructureInfo;->setActive(Z)V

    .line 394
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 387
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 385
    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_12
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFavorites component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 402
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/android/systemui/controls/controller/CustomControlsController;->clearFavoritesForComponent(Landroid/content/ComponentName;)V

    goto :goto_7

    .line 404
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 405
    new-instance v2, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 406
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 405
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 404
    invoke-interface {v1, v2}, Lcom/android/systemui/controls/controller/CustomControlsController;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 490
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OrderList"

    .line 499
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.CharSequence>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    iget-boolean p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez p2, :cond_1

    .line 503
    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->onActivityResult$lambda-29$setReorderRequest(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/List;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-eqz p2, :cond_2

    new-instance p3, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$onActivityResult$1$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$onActivityResult$1$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->refreshStructureOrdering(Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_2
    const-string p0, "customModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->updateFavorites()V

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 126
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_app_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->bindViews()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "current_favorites"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    .line 138
    :goto_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object p1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$ChooseDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$ChooseDevices;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 324
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 327
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$menu;->controls_edit_control_menu:I

    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_2
    :goto_0
    return v1
.end method

.method protected onDestroy()V
    .locals 11

    .line 453
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 455
    :goto_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 460
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    if-eqz v0, :cond_a

    .line 466
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v7, v1

    move v8, v7

    move v9, v8

    move v10, v9

    goto/16 :goto_5

    .line 467
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 468
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 734
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/ControlStatus;

    .line 469
    invoke-virtual {v9}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v1, v6

    .line 470
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 1445
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1471
    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    .line 471
    invoke-virtual {v8}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, ""

    .line 355
    :cond_6
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    .line 1472
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_7
    check-cast v9, Ljava/util/List;

    .line 1473
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 471
    :cond_8
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    :cond_9
    move v7, v1

    move v9, v2

    move v8, v3

    move v10, v4

    .line 475
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 476
    new-instance v1, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;

    .line 477
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v2, "component!!.packageName"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    .line 476
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;-><init>(Ljava/lang/String;IIII)V

    .line 475
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 485
    :cond_a
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->onBackPressed()V

    goto :goto_0

    .line 340
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->reorder_menu:I

    if-ne v0, v2, :cond_3

    .line 341
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    if-eqz p1, :cond_4

    .line 342
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-nez p1, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/controls/management/ControlsReorderActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    .line 344
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    const-string v2, "extra_structure_lists"

    .line 345
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Event$Reorder;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$Reorder;

    invoke-virtual {p1, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    :cond_2
    const/16 p1, 0x3e8

    .line 353
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 358
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_4
    :goto_0
    return v1
.end method

.method protected onResume()V
    .locals 1

    .line 420
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isPagerLoaded:Z

    if-nez v0, :cond_1

    .line 425
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->tryLoadForComponent()V

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V

    :goto_0
    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isPagerLoaded:Z

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    move-result-object v0

    .line 1517
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1589
    check-cast v2, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 150
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "current_favorites"

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string p0, "customModel"

    .line 150
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onStart()V
    .locals 0

    .line 414
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 416
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 447
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 449
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
