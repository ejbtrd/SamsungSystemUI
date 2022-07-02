.class public Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;
.super Ljava/lang/Object;
.source "DividerPanelWindowManager.java"


# instance fields
.field private mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "window"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method private calculatePosition(IIZLandroid/graphics/Rect;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getDividerSize()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz p3, :cond_0

    .line 92
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 93
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, p3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 94
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 96
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTop()I

    move-result p3

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    iget p1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;IIZLandroid/graphics/Rect;)V
    .locals 7

    .line 56
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0xa2b

    const v4, 0x40020

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "DividerPanel"

    .line 60
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 62
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 63
    sget v1, Lcom/android/wm/shell/R$style;->SplitDividerPanel_WindowAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x700

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->calculatePosition(IIZLandroid/graphics/Rect;)V

    .line 70
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method injectDependencies(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    return-void
.end method

.method public remove()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove, mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerPanelWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->mView:Landroid/view/View;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
