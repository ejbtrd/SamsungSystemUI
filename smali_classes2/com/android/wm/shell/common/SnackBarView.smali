.class public Lcom/android/wm/shell/common/SnackBarView;
.super Landroid/widget/LinearLayout;
.source "SnackBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMarginBottom:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$7ApLfhClFw2orQepCUlwwZEheG8(Lcom/android/wm/shell/common/SnackBarView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/SnackBarView;->lambda$addView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ojAuvvbEz2UWBdBzl-opa2g5oEA(Lcom/android/wm/shell/common/SnackBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/SnackBarView;->lambda$addView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculatePosition(Landroid/graphics/Rect;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/wm/shell/common/SnackBarView;->mMarginBottom:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    iget-object p1, p0, Lcom/android/wm/shell/common/SnackBarView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$addView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SnackBarView;->hide()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$addView$1(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/wm/shell/common/SnackBarView;->mCallbacks:Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;

    invoke-interface {p1}, Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;->onClickAction()V

    .line 68
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SnackBarView;->hide()V

    return-void
.end method


# virtual methods
.method addView(Landroid/graphics/Rect;)V
    .locals 8

    .line 58
    new-instance v0, Lcom/android/wm/shell/common/SnackBarView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/SnackBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/SnackBarView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    sget v0, Lcom/android/wm/shell/R$id;->snack_bar_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/SnackBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/SnackBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/SnackBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d8

    const v6, 0x1040100

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 75
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SnackBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/common/SnackBarView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/SnackBarView;->calculatePosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SnackBarView;->hide()V

    const/4 p0, 0x1

    return p0
.end method

.method hide()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mCallbacks:Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;

    invoke-interface {v0}, Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;->onDismiss()V

    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->snack_bar_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/common/SnackBarView;->mMarginBottom:I

    return-void
.end method

.method setCallback(Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/wm/shell/common/SnackBarView;->mCallbacks:Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;

    return-void
.end method
