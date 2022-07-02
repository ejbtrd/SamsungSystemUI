.class public final Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "CustomControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlsProviderSelectorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlsProviderSelectorActivity.kt\ncom/android/systemui/controls/management/CustomControlsProviderSelectorActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,278:1\n1#2:279\n1445#3:280\n1470#3,3:281\n1473#3,3:291\n1711#3,3:296\n355#4,7:284\n122#5,2:294\n124#5:299\n*E\n*S KotlinDebug\n*F\n+ 1 CustomControlsProviderSelectorActivity.kt\ncom/android/systemui/controls/management/CustomControlsProviderSelectorActivity\n*L\n266#1:280\n266#1,3:281\n266#1,3:291\n268#1,3:296\n266#1,7:284\n267#1,2:294\n267#1:299\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

.field private final backExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsController:Lcom/android/systemui/controls/controller/ControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private doneButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isOOBE:Z

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listingController:Lcom/android/systemui/controls/management/ControlsListingController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->Companion:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/controller/CustomControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listingController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customControlsController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsActivityStarter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeProvider"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p7}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 54
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 57
    iput-object p4, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 58
    iput-object p5, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 59
    iput-object p6, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 60
    iput-object p7, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 61
    iput-object p8, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 62
    iput-object p9, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 63
    iput-object p10, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 64
    iput-object p11, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    const-string p1, "CustomControlsProviderSelectorActivity"

    .line 71
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;

    return-void
.end method

.method public static final synthetic access$getBadgeProvider$p(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    return-object p0
.end method

.method public static final synthetic access$getListingController$p(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)Lcom/android/systemui/controls/management/ControlsListingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    return-object p0
.end method

.method public static final synthetic access$handleDone(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->handleDone()V

    return-void
.end method

.method public static final synthetic access$launchFavoritingActivity(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;Landroid/content/ComponentName;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->launchFavoritingActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static final synthetic access$updateButtonStatue(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->updateButtonStatue()V

    return-void
.end method

.method private final handleDone()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->setOOBEManageAppsCompleted(Landroid/content/Context;)V

    .line 181
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    const/4 v1, 0x0

    const-string v2, "appAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    move-result v0

    .line 183
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getItemCount()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    new-instance v3, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startCustomControlsActivity(Landroid/content/Context;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final launchFavoritingActivity(Landroid/content/ComponentName;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updateButtonStatue()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_2
    const-string p0, "appAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->dismiss()V

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->handleDone()V

    return-void

    .line 214
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget p1, Lcom/android/systemui/R$layout;->activity_controls_providers:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 94
    sget p1, Lcom/android/systemui/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 95
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 98
    sget p1, Lcom/android/systemui/R$id;->main_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    const-string/jumbo v1, "this"

    .line 100
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$integer;->controls_basic_width_percentage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 99
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isOOBEManageAppsCompleted(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    sget p1, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_custom_providers_subtitle_OOBE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget p1, Lcom/android/systemui/R$id;->button_start:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 116
    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$5$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$5$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    .line 120
    sget p1, Lcom/android/systemui/R$id;->button_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_manage_apps:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 131
    :goto_1
    sget p1, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 132
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_custom_providers_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_2
    new-instance p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 137
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 138
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 139
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    const-string v0, "lifecycle"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 141
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const-string v0, "from(this)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v7, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$9;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    .line 143
    new-instance v8, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 144
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$10;

    iget-object v9, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-direct {v1, v9}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$10;-><init>(Lcom/android/systemui/controls/controller/ControlsController;)V

    .line 145
    new-instance v9, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$11;

    iget-object v10, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-direct {v9, v10}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$11;-><init>(Lcom/android/systemui/controls/controller/CustomControlsController;)V

    new-instance v10, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$12;

    iget-object v11, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-direct {v10, v11}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$12;-><init>(Lcom/android/systemui/controls/controller/CustomControlsController;)V

    .line 143
    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 148
    iget-object v10, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 149
    iget-object v11, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 150
    iget-object v12, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 151
    new-instance v13, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$13;

    invoke-direct {v13, p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$13;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    move-object v1, p1

    move-object v9, p0

    .line 136
    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lkotlin/jvm/functions/Function1;)V

    .line 154
    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 159
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 161
    sget p1, Lcom/android/systemui/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/16 v1, 0xf

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->control_activity_background:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    const-string/jumbo v1, "requireViewById<RecyclerView>(R.id.list).apply {\n            adapter = appAdapter\n            layoutManager = LinearLayoutManager(applicationContext)\n            semSetRoundedCorners(View.SEM_ROUNDED_CORNER_ALL)\n            semSetRoundedCornerColor(\n                View.SEM_ROUNDED_CORNER_ALL,\n                resources.getColor(R.color.control_activity_background, theme)\n            )\n        }"

    .line 161
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_4

    .line 172
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->isOOBE:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$Intro;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$Intro;

    goto :goto_3

    .line 174
    :cond_3
    sget-object p0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$ManageApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$ManageApps;

    .line 172
    :goto_3
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    :cond_4
    return-void

    :cond_5
    const-string p0, "appAdapter"

    .line 162
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onDestroy()V
    .locals 7

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/CustomControlsController;->saveCurrentFavorites()V

    .line 261
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_8

    .line 262
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    const/4 v1, 0x0

    const-string v2, "appAdapter"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    move-result v0

    .line 263
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->getItemCount()I

    move-result v1

    .line 264
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    new-instance v3, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;-><init>(II)V

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/controls/ui/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->getFavorites()Ljava/util/List;

    move-result-object v0

    .line 1445
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1471
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 266
    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 355
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 1473
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 268
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    .line 1711
    instance-of v5, v2, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1712
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 268
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getCustomStructureInfo()Lcom/android/systemui/controls/controller/CustomStructureInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/CustomStructureInfo;->getActive()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lcom/android/systemui/controls/ui/util/SALogger$Companion;->toSALog(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/controls/ui/util/SALogger$AppStatus;

    invoke-direct {v4, v3, v2}, Lcom/android/systemui/controls/ui/util/SALogger$AppStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 271
    new-instance v2, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;

    new-instance v3, Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;

    invoke-direct {v3, v0}, Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;)V

    .line 270
    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V

    goto :goto_3

    .line 263
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_8
    :goto_3
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected onStart()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 221
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 234
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
