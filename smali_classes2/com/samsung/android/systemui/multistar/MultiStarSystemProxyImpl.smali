.class public Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;
.super Ljava/lang/Object;
.source "MultiStarSystemProxyImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIam:Landroid/app/IActivityManager;

.field private mIwm:Landroid/view/IWindowManager;

.field private final mLegacySplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    .line 46
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mLegacySplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    return-void
.end method


# virtual methods
.method public getDockSide()I
    .locals 0

    .line 53
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public getStableInsets()Landroid/graphics/Rect;
    .locals 2

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setDividerResizeMode(Z)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mLegacySplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->setDividerResizeMode(Z)V

    return-void
.end method

.method public setLongLiveApp(Ljava/lang/String;)V
    .locals 0

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->setLongLiveApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startDismissSplit(Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mLegacySplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->startDismissSplit(Z)V

    return-void
.end method
