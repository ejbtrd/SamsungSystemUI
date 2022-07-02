.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
.super Ljava/lang/Object;
.source "SystemEventChipAnimationController.kt"


# instance fields
.field private animationDotView:Landroid/view/View;

.field private animationWindowView:Landroid/widget/FrameLayout;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentAnimatedView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private initialized:Z

.field private final locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarViewFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarWindowController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationPublisher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    return-void
.end method

.method private final init()V
    .locals 3

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->initialized:Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    const-string/jumbo v1, "statusBarViewFactory.statusBarWindowView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 131
    sget v1, Lcom/android/systemui/R$layout;->system_event_animation_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    .line 130
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 132
    sget v1, Lcom/android/systemui/R$id;->dot_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "animationWindowView.findViewById(R.id.dot_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDotView:Landroid/view/View;

    .line 133
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800015

    .line 134
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const-string p0, "animationWindowView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo p0, "statusBarWindowView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final layoutParamsDefault()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 143
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800015

    .line 144
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->start()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    return-object v0
.end method

.method private final left()I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->getMarginLeft()I

    move-result p0

    return p0
.end method

.method private final right()I
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->getMarginRight()I

    move-result p0

    return p0
.end method

.method private final start()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->right()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->left()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const-string p0, "animationWindowView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onChipAnimationEnd(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_3
    const-string p0, "animationWindowView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onChipAnimationStart(Lkotlin/jvm/functions/Function1;I)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "viewCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->initialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->init()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    .line 68
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    .line 69
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->layoutParamsDefault()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    neg-float p2, p2

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->getMarginLeft()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->getMarginRight()I

    move-result p0

    invoke-virtual {p1, v0, p2, p0, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    const-string p0, "animationWindowView"

    .line 69
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 81
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    if-nez p0, :cond_5

    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onChipAnimationUpdate(Landroid/animation/ValueAnimator;I)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "animator"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    int-to-float p1, p2

    mul-float/2addr v0, p1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    neg-float v0, v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method
