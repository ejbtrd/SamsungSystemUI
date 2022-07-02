.class public final Lcom/android/wm/shell/bubbles/DismissView;
.super Landroid/widget/FrameLayout;
.source "DismissView.kt"


# instance fields
.field private final DISMISS_SCRIM_FADE_MS:I

.field private final animator:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private circle:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dismissArea:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isBeingEntered:Z

.field private isShowing:Z

.field private final spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 43
    sget v0, Lcom/android/wm/shell/R$layout;->bubble_dismiss_view:I

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 41
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Landroid/widget/FrameLayout;

    .line 54
    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 55
    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v0, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/16 p1, 0xc8

    .line 56
    iput p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:I

    .line 58
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x50

    .line 58
    invoke-direct {p1, v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$dimen;->floating_dismiss_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, v1, v1, v1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 63
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 64
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 p1, 0x4

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->dismissArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getCircle()Landroid/widget/FrameLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getDismissArea()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->dismissArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final hide()V
    .locals 5

    .line 102
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    .line 106
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 107
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const-string v3, "TRANSLATION_Y"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 108
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 107
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/jvm/functions/Function0;

    .line 109
    new-instance v3, Lcom/android/wm/shell/bubbles/DismissView$hide$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/DismissView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/DismissView;)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final isBeingEntered()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    return p0
.end method

.method public final isFirstEntered(FF)Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->dismissArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 139
    :goto_0
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    if-eq p2, p1, :cond_1

    .line 140
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    return v2

    :cond_1
    return v3
.end method

.method public final isShowing()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    return p0
.end method

.method public final resetCircle()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 131
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/wm/shell/R$drawable;->bubble_delete_ic_d:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/wm/shell/R$drawable;->bubble_delete_ic:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public final setCircleStucked()V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/wm/shell/R$drawable;->bubble_delete_ic_drop:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public final show()V
    .locals 4

    .line 80
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->resetCircle()V

    .line 88
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 89
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    new-array v0, v0, [Lkotlin/jvm/functions/Function0;

    .line 91
    new-instance v3, Lcom/android/wm/shell/bubbles/DismissView$show$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/DismissView$show$1;-><init>(Lcom/android/wm/shell/bubbles/DismissView;)V

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 93
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const-string v2, "TRANSLATION_Y"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final updateResources()V
    .locals 0

    return-void
.end method
