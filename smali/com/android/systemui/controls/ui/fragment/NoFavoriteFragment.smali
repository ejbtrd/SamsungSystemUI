.class public final Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;
.super Landroidx/fragment/app/Fragment;
.source "NoFavoriteFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->Companion:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/controller/util/BadgeSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlsActivityStarter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeSubject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    return-void
.end method

.method public static final synthetic access$getControlsActivityStarter$p(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;)Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "NoFavoriteFragment"

    const-string v1, "onCreate"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "requireContext()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget v0, Lcom/android/systemui/R$menu;->controls_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_1

    .line 72
    sget v0, Lcom/android/systemui/R$id;->manage_apps:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.view.menu.SeslMenuItem"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeObserver;-><init>(Landroidx/appcompat/view/menu/SeslMenuItem;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-interface {v0, v1}, Lcom/android/systemui/controls/controller/util/BadgeSubject;->register(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V

    .line 75
    iput-object v1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 79
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "NoFavoriteFragment"

    const-string v0, "onCreateView"

    .line 50
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget p3, Lcom/android/systemui/R$layout;->fragment_controls_no_favorite:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layout.fragment_controls_no_favorite, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mView:Landroid/view/View;

    const/4 p2, 0x0

    const-string p3, "mView"

    if-eqz p1, :cond_2

    .line 52
    sget v0, Lcom/android/systemui/R$id;->manage_control_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    .line 53
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;-><init>(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;Lcom/android/systemui/controls/ui/view/ControlContainedButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "NoFavoriteFragment"

    const-string v1, "onDestroy"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-interface {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeSubject;->unregister(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 125
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 91
    sget v1, Lcom/android/systemui/R$id;->manage_apps:I

    const/4 v2, 0x0

    const-string v3, "mContext"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 92
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;

    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 96
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    const-class v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 95
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->settings:I

    if-ne v0, v1, :cond_5

    .line 102
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;

    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 106
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_4

    const-class v0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;

    .line 105
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/util/BadgeSubject;->invalidate()V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method
