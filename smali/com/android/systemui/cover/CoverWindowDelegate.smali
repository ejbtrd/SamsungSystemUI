.class public Lcom/android/systemui/cover/CoverWindowDelegate;
.super Ljava/lang/Object;
.source "CoverWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoverWindowDelegate"


# instance fields
.field private mBackgroundDecorView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCoverDisplay:Landroid/view/Display;

.field private mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

.field private mIsShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/cover/CoverWindowDelegate;)Landroid/view/Display;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    return-object p0
.end method

.method private createBackgroundLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 192
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/16 p0, 0xa47

    .line 194
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string p0, "VIRTUAL-COVER-BACKGROUND"

    .line 195
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    .line 196
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    const/16 p0, 0x708

    .line 200
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x10

    .line 204
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 p0, 0x5

    .line 205
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p0, 0x2

    .line 206
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p0, 0x1

    .line 207
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 208
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method private createDecorView()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    .locals 2

    .line 153
    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;-><init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V

    return-object v0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 157
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const/16 v1, 0xa46

    .line 159
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "VIRTUAL-COVER"

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 164
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x33

    .line 165
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x833

    .line 167
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string p0, "COVER"

    .line 168
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    .line 169
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 170
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide/16 v1, 0x1770

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v1, 0x0

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    :goto_0
    const p0, 0x20700

    .line 176
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x10

    .line 180
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 p0, 0x5

    .line 181
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p0, 0x2

    .line 182
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p0, 0x1

    .line 183
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 185
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method


# virtual methods
.method public attach()Landroid/view/ViewGroup;
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v1, "attach : it is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 52
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createDecorView()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 64
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createBackgroundLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object p0
.end method

.method public detach()V
    .locals 5

    const-string/jumbo v0, "removeViewImmediate\n"

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-nez v1, :cond_0

    .line 74
    sget-object p0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v0, "detach : it is NOT showing"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-nez v1, :cond_1

    .line 79
    sget-object p0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v0, "detach : decorView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 86
    sget-object v3, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 91
    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 94
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 96
    sget-object v3, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 99
    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    :cond_2
    return-void
.end method

.method public maximize()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 121
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 126
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 127
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public minimize()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 107
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    .line 109
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 110
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 111
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    .line 112
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 113
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setCoverDisplay(Landroid/view/Display;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    return-void
.end method
