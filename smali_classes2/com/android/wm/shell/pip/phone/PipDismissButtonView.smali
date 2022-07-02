.class public Lcom/android/wm/shell/pip/phone/PipDismissButtonView;
.super Landroid/widget/FrameLayout;
.source "PipDismissButtonView.java"


# instance fields
.field private mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->createDismissButtonView()V

    const/16 p1, 0x8

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private createDismissButtonView()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->cleanUpDismissTarget()V

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->dismiss_button_view:I

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/DismissButtonView;

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 95
    sget-object v1, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->PIP:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setDismissType(Lcom/android/wm/shell/common/DismissButtonView$DismissType;)V

    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getRectForTouchRegion(II)Landroid/graphics/Rect;
    .locals 2

    .line 83
    new-instance p0, Landroid/graphics/Rect;

    add-int/lit8 v0, p1, -0x3

    add-int/lit8 v1, p2, -0x3

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p2, p2, 0x3

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method cleanUpDismissTarget()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->cleanUpDismissTarget()V

    return-void
.end method

.method createOrUpdateDismissTarget()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->createDismissButtonView()V

    .line 74
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DismissButtonView;->createOrUpdateWrapper(Landroid/widget/FrameLayout;)V

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    sget v0, Lcom/android/wm/shell/R$string;->remove:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DismissButtonView;->setText(I)V

    return-void
.end method

.method hideDismissTargetMaybe()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipDismissButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipDismissButtonView;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->hide(Ljava/lang/Runnable;)V

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(ZZ)V

    return-void
.end method

.method isEnterDismissTarget()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->isEnterDismissButton()Z

    move-result p0

    return p0
.end method

.method showDismissTargetMaybe(Landroid/graphics/PointF;Landroid/graphics/Insets;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->createOrUpdateDismissTarget()V

    :cond_0
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/DismissButtonView;->show(Landroid/graphics/Insets;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->updateDismissTargetView(Landroid/graphics/PointF;)V

    return-void
.end method

.method updateDismissTargetView(Landroid/graphics/PointF;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissTargetView:Lcom/android/wm/shell/common/DismissButtonView;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    .line 65
    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->getRectForTouchRegion(II)Landroid/graphics/Rect;

    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    return-void
.end method
