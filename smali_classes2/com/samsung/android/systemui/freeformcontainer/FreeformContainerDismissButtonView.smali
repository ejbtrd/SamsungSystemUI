.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;
.super Landroid/widget/FrameLayout;
.source "FreeformContainerDismissButtonView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDismissButtonShowing:Z

.field private mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

.field private mDismissingIconRunnable:Ljava/lang/Runnable;

.field private mDismissingIconView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$lDofowOXK0pQIgNkOO_ihZ5uoxg(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->lambda$hide$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$layout;->dismiss_button_view:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/DismissButtonView;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 52
    sget v0, Lcom/android/systemui/R$string;->remove:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DismissButtonView;->setText(I)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->FREEFORM:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DismissButtonView;->setDismissType(Lcom/android/wm/shell/common/DismissButtonView$DismissType;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 p1, 0x8

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$hide$0(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->setDismissButtonShowing(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->clear()V

    .line 73
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method cleanUpDismissTarget()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->cleanUpDismissTarget()V

    return-void
.end method

.method clear()V
    .locals 2

    .line 99
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[FreeformContainerDismissButtonView] clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 101
    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconRunnable:Ljava/lang/Runnable;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 105
    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    :cond_2
    const/16 v0, 0x8

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method createOrUpdateDismissButton()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DismissButtonView;->createOrUpdateWrapper(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method dismissIcon(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 3

    .line 79
    iput-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconRunnable:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    .line 81
    iget-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/DismissButtonView;->getDismissArea()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonView;->getDismissArea()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 84
    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;Landroid/view/View;)V

    invoke-static {v1, p3, v0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createMoveTrashToTrashBoxAnimation(Landroid/view/animation/Animation$AnimationListener;FFLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method hide(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "FreeformContainer"

    const-string v1, "[FreeformContainerDismissButtonView] hide()"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->hide(Ljava/lang/Runnable;)V

    return-void
.end method

.method isDismissButtonShowing()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    return p0
.end method

.method isEnterDismissButton()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->isEnterDismissButton()Z

    move-result p0

    return p0
.end method

.method setDismissButtonShowing(Z)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    if-eq v0, p1, :cond_0

    .line 120
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissingIconRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method show(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "FreeformContainer"

    const-string v1, "[FreeformContainerDismissButtonView] show()"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->setDismissButtonShowing(Z)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->updateDismissButtonView(Landroid/graphics/Rect;)V

    .line 63
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 64
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    .line 65
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->show(Landroid/graphics/Insets;)V

    return-void
.end method

.method updateDismissButtonView(Landroid/graphics/Rect;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    return-void
.end method
