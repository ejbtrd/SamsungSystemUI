.class public final Lcom/android/wm/shell/common/split/SplitWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "SplitWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

.field private mResizingSplits:Z

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field private final mWindowName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p3, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 71
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 95
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->TAG:Ljava/lang/String;

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SplitWindowManager#attachToParentSurface"

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;->attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method init(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->split_divider:I

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 116
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 117
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0x7f2

    const v5, 0x20840028

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x20000040

    or-int/2addr v0, v1

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 125
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v0, v1, v7}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/common/split/DividerView;->setup(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControlViewHost;)V

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Try to inflate divider view again without release first"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method release()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 140
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 145
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    :cond_2
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method setInteractive(Z)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-nez p0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerView;->setInteractive(Z)V

    return-void
.end method

.method setResizingSplits(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mResizingSplits:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setSplitScreenResizing(Z)V

    .line 158
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mResizingSplits:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    sget-object p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "Error calling setSplitScreenResizing"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method
