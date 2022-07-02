.class final Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mNotTouchable:Z

.field final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTouchRegion:Landroid/graphics/Region;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/common/SystemWindows;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mTouchRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mNotTouchable:Z

    .line 77
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;III)V
    .locals 7

    .line 89
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f2

    const v4, 0x20840028

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 94
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 101
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string p3, "DockedStackDivider"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mNotTouchable:Z

    if-eqz p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p3, v0

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p3, 0x3

    .line 109
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 p2, 0x700

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 113
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 119
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method remove()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method setSlippery(Z)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v1, 0x20000000

    if-eqz p1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v3, v1

    if-nez v4, :cond_0

    or-int p1, v3, v1

    .line 132
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const v1, -0x20000001

    and-int/2addr v1, v2

    .line 135
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 139
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Region;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/common/SystemWindows;->setTouchableRegion(Landroid/view/View;Landroid/graphics/Region;)V

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTouchRegion: mTouchRegion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DockedStackDivider"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setTouchable(Z)V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_1

    or-int/lit8 p1, v4, 0x10

    .line 149
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mNotTouchable:Z

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_2

    and-int/lit8 v3, v3, -0x11

    .line 157
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 160
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mNotTouchable:Z

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
