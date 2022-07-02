.class public Lcom/android/systemui/cover/SysUICoverService;
.super Lcom/samsung/android/cover/SemCoverService;
.source "SysUICoverService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/android/systemui/cover/SysUICoverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/cover/SemCoverService;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    return-void
.end method


# virtual methods
.method public getCoverHost()Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->getCoverHost()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/cover/SemCoverService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onCoverAppCovered(Z)I

    move-result p0

    return p0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onCoverDetached()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->onCoverDetached()V

    return-void
.end method

.method public onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onCreate()V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 34
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onDestroy()V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->onDestroy()V

    return-void
.end method
