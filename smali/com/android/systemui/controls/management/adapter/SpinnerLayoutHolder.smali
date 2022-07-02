.class final Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "MainControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
        ">",
        "Lcom/android/systemui/controls/management/adapter/Holder;"
    }
.end annotation


# instance fields
.field private final buttonClickCallback:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final launchButton:Lcom/android/systemui/controls/ui/view/ControlContainedButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private launchButtonLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "TT;>;"
        }
    .end annotation

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


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "TT;>;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerTouchCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerItemSelectedChangedCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonClickCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 564
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 560
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    .line 561
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    .line 562
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->buttonClickCallback:Landroid/view/View$OnClickListener;

    .line 565
    sget p2, Lcom/android/systemui/R$id;->controls_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.requireViewById(R.id.controls_spinner)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 568
    sget p3, Lcom/android/systemui/R$id;->launch_button_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const-string/jumbo p4, "view.requireViewById(R.id.launch_button_layout)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButtonLayout:Landroid/widget/LinearLayout;

    .line 571
    sget p3, Lcom/android/systemui/R$id;->launch_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p3, "view.requireViewById(R.id.launch_button)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButton:Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->getSpinnerTouchCallback()Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->setSpinnerTouchCallback(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->getSpinnerItemSelectedChangedCallback()Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->setSpinnerItemSelectedChangedCallback(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;)V

    .line 577
    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2, p5}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->setBadgeProvider(Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    .line 579
    :cond_0
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    if-eqz p2, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->getButtonClickCallback()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private final hideLaunchingAppButton()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButtonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButton:Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final showLaunchingAppButton()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButton:Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->buttonClickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/model/MainModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    if-nez v0, :cond_0

    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 589
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    if-eqz v1, :cond_2

    .line 590
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/model/MainComponentModel;->getShowButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->showLaunchingAppButton()V

    goto :goto_0

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->hideLaunchingAppButton()V

    .line 596
    :cond_2
    :goto_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainComponentModel;->getControlsSpinnerInfo()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainComponentModel;->getSelected()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->setItems(Ljava/util/List;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final getButtonClickCallback()Landroid/view/View$OnClickListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 562
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->buttonClickCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getSpinnerItemSelectedChangedCallback()Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 561
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    return-object p0
.end method

.method public final getSpinnerTouchCallback()Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 560
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    return-object p0
.end method
