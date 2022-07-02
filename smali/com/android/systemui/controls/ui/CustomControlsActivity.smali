.class public final Lcom/android/systemui/controls/ui/CustomControlsActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "CustomControlsActivity.kt"


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final blurFacade:Lcom/android/systemui/controls/ui/util/BlurFacade;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Landroid/view/ViewGroup;

.field private final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/ui/CustomControlsUiController;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/BlurFacade;Lcom/android/systemui/controls/ui/util/AUIFacade;)V
    .locals 1
    .param p1    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/ControlsUiController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/CustomControlsUiController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/controls/ui/util/BlurFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/ui/util/AUIFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "broadcastDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customUiController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsFragmentFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurFacade"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auiFacade"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 48
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 49
    iput-object p5, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    .line 50
    iput-object p6, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->blurFacade:Lcom/android/systemui/controls/ui/util/BlurFacade;

    .line 51
    iput-object p7, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    const-string p1, "CustomControlsActivity"

    .line 53
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    .line 60
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->canAccessLockScreenDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "canAccessLockScreenDevice"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSecureLocked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 67
    :cond_0
    sget p1, Lcom/android/systemui/R$layout;->activity_collapsing_toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 69
    sget p1, Lcom/android/systemui/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->blurFacade:Lcom/android/systemui/controls/ui/util/BlurFacade;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "this.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/BlurFacade;->setWindowBackground(Landroid/content/Context;Landroid/view/Window;)V

    .line 76
    sget p1, Lcom/android/systemui/R$id;->activity_root:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 78
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsActivity$onCreate$2$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/CustomControlsActivity$onCreate$2$1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 90
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/util/AUIFacade;->initialize()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    invoke-interface {v0}, Lcom/android/systemui/controls/ui/util/AUIFacade;->finalize()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    invoke-interface {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiController;->clear()V

    .line 120
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onHomeKeyPressed()V

    .line 130
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiController;->unsubscribeAndUnbindIfNecessary()V

    :cond_0
    return-void
.end method

.method public onRecentAppsKeyPressed()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onRecentAppsKeyPressed()V

    .line 125
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiController;->unsubscribeAndUnbindIfNecessary()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 97
    sget v0, Lcom/android/systemui/R$id;->frame_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "requireViewById<FrameLayout>(R.id.frame_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsActivity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "supportFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/android/systemui/controls/ui/CustomControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    return-void

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onStop()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/ControlsUiController;->hide()V

    return-void
.end method
