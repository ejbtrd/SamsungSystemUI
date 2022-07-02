.class public Lcom/android/systemui/lockstar/PluginLockStarManager;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;",
        ">;",
        "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLockStarContainer:Landroid/view/ViewGroup;

.field private final mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

.field private mLockStarViewStub:Landroid/view/ViewStub;

.field private mPluginContext:Landroid/content/Context;

.field private mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field private mRootView:Landroid/view/ViewGroup;

.field private final mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    .line 42
    new-instance p1, Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-direct {p1}, Lcom/android/systemui/lockstar/LockStarPresenter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    return-void
.end method

.method private removeAllAddedViews()V
    .locals 2

    const-string v0, "LStar|PluginLockStarManager"

    const-string/jumbo v1, "removeAllAddedViews"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "lockstarContainer"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Landroid/view/ViewGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "*>;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object p0

    return-object p0
.end method

.method public getPluginLockStar()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    return-object p0
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public isLockStarEnabled()Z
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result p0

    return p0
.end method

.method public onChangedLockStarEnabled(Z)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedLockStarEnabled :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/LockStarPresenter;->onChangeEnable(Z)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onPluginConnected(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;Landroid/content/Context;)V
    .locals 2

    const-string v0, "LStar|PluginLockStarManager"

    const-string v1, "onPluginConnected"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginContext:Landroid/content/Context;

    .line 67
    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/LockStarViewContainer;

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const-string p1, "Failed to get lock star container"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->init(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onPluginDisconnected(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;I)V
    .locals 0

    const-string p1, "LStar|PluginLockStarManager"

    const-string p2, "onPluginDisconnected"

    .line 83
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->removeAllAddedViews()V

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onChangedLockStarEnabled(Z)V

    return-void
.end method

.method public onPluginLoadFailed(I)V
    .locals 1

    const-string p1, "LStar|PluginLockStarManager"

    const-string v0, "onPluginLoadFailed"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->removeAllAddedViews()V

    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRootViewAttached :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRootView:Landroid/view/ViewGroup;

    .line 50
    sget v0, Lcom/android/systemui/R$id;->lockstar_view_container_stub:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    if-nez p1, :cond_1

    const-string p1, "Illegal Access. view stub is null"

    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    if-eqz p1, :cond_2

    .line 57
    const-class v0, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    :cond_2
    return-void
.end method

.method public onUpdateModifiers(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "*>;>;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateModifiers :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/LockStarPresenter;->onUpdateModifiers(Ljava/util/Map;)V

    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/lockstar/LockStarPresenter;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)Z

    move-result p0

    return p0
.end method

.method public unregisterCallback(Ljava/lang/String;)Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/LockStarPresenter;->unregisterCallback(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
