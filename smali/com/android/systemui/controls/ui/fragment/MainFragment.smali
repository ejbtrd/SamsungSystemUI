.class public final Lcom/android/systemui/controls/ui/fragment/MainFragment;
.super Landroidx/fragment/app/Fragment;
.source "MainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainFragment.kt\ncom/android/systemui/controls/ui/fragment/MainFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;
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

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->Companion:Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/controller/util/BadgeSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlsActivityStarter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeSubject"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    return-void
.end method

.method private final createListView()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/android/systemui/R$id;->allControlsWithTemplates:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v2, "this"

    .line 134
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->setRecyclerViewSideMargin(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 136
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "mView.requireViewById<RecyclerView>(R.id.allControlsWithTemplates).apply {\n            setRecyclerViewSideMargin(this)\n            seslSetGoToTopEnabled(true)\n        }"

    .line 133
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->setAdapter(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    :goto_0
    return-void

    :cond_1
    const-string p0, "mView"

    .line 133
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setRecyclerViewSideMargin(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 149
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->controls_list_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->control_base_item_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 154
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setSideMargins(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "MainFragment"

    const-string v1, "onCreate"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "requireContext()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 50
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

    .line 54
    sget v0, Lcom/android/systemui/R$menu;->controls_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_1

    .line 57
    sget v0, Lcom/android/systemui/R$id;->manage_apps:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.view.menu.SeslMenuItem"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeObserver;-><init>(Landroidx/appcompat/view/menu/SeslMenuItem;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-interface {v0, v1}, Lcom/android/systemui/controls/controller/util/BadgeSubject;->register(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V

    .line 60
    iput-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 64
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "MainFragment"

    const-string v0, "onCreateView"

    .line 115
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget p3, Lcom/android/systemui/R$layout;->fragment_controls_main:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layout.fragment_controls_main, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mView:Landroid/view/View;

    const/4 p2, 0x0

    const-string p3, "mView"

    if-eqz p1, :cond_2

    .line 117
    sget v0, Lcom/android/systemui/R$id;->main_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    const-string/jumbo v1, "this"

    .line 119
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$integer;->controls_basic_width_percentage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->createListView()V

    .line 125
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 117
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public onDestroy()V
    .locals 2

    .line 76
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-interface {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeSubject;->unregister(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V

    :goto_0
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 81
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 86
    sget v1, Lcom/android/systemui/R$id;->manage_apps:I

    const/4 v2, 0x0

    const-string v3, "mContext"

    if-ne v0, v1, :cond_2

    .line 87
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;

    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    const-class v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 90
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->settings:I

    if-ne v0, v1, :cond_5

    .line 97
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;

    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 101
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_4

    const-class v0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;

    .line 100
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 101
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/util/BadgeSubject;->invalidate()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public final setAdapter(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const-string p0, "listView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 144
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    return-void
.end method
