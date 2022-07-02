.class public Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;
.super Ljava/lang/Object;
.source "DividerSmartTip.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private mView:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$bgWPN40GySHLJVDwrFet8t89O3k(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->lambda$setTipPopUp$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->setTipPopUp()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;IIZZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->showTipPopUp(IIZZ)V

    return-void
.end method

.method private synthetic lambda$setTipPopUp$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->removeView()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private removeView()V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeView: mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerSmartTip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    return-void
.end method

.method private setTipPopUp()V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->divider_tip_popup_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    .line 35
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7d8

    const v5, 0x1040118

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v1, "DividerSmartTip"

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 45
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView: mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_0
    return-void
.end method

.method private showTipPopUp(IIZZ)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DividerSmartTip"

    const-string/jumbo v1, "show DividerSmartTip"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/16 v1, 0x8c

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColorWithAlpha(I)V

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p1, p4}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p1, p3}, Lcom/samsung/android/widget/SemTipPopup;->setPopupWindowClippingEnabled(Z)V

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissTipPopUp()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->removeView()V

    return-void
.end method

.method public requestShowPopUp(IIZZ)V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->showTipPopUp(IIZZ)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mView:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;IIZZ)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
