.class public Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;
.super Ljava/lang/Object;
.source "PipMenuIconsAlgorithm.java"


# instance fields
.field protected mDismissButton:Landroid/view/View;

.field protected mDragHandle:Landroid/view/View;

.field protected mSettingsButton:Landroid/view/View;

.field protected mTopEndContainer:Landroid/view/ViewGroup;

.field protected mViewRoot:Landroid/view/ViewGroup;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindInitialViewState()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mTopEndContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDismissButton:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    const v1, 0x800033

    invoke-static {v0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->setLayoutGravity(Landroid/view/View;I)V

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    invoke-static {p0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->setLayoutGravity(Landroid/view/View;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "PipMenuIconsAlgorithm"

    const-string v0, "One of the required views is null."

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static setLayoutGravity(Landroid/view/View;I)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    .line 49
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mTopEndContainer:Landroid/view/ViewGroup;

    .line 50
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    .line 51
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    .line 52
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDismissButton:Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->bindInitialViewState()V

    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
