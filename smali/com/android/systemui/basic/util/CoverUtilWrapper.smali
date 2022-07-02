.class public Lcom/android/systemui/basic/util/CoverUtilWrapper;
.super Ljava/lang/Object;
.source "CoverUtilWrapper.java"


# instance fields
.field private mActionBeforeSecureConfirm:Ljava/lang/Runnable;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverStateChangedListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

.field private final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/basic/util/ModuleType;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$F_ny4fsWtLFn2esepBRDk2P6SDU(Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->lambda$new$1(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVc236vOLBBZ2UXcnj6CbypZ59M(ZILcom/android/systemui/basic/util/ModuleType;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->lambda$new$0(ZILcom/android/systemui/basic/util/ModuleType;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/CoverUtil;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    .line 31
    new-instance v0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/basic/util/CoverUtilWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverStateChangedListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/CoverUtil;->addListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    return-void
.end method

.method private isNeedActionBeforeSecureConfirm(Z)Z
    .locals 1

    if-nez p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$0(ZILcom/android/systemui/basic/util/ModuleType;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    .line 38
    invoke-direct {p0, v0}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->isNeedActionBeforeSecureConfirm(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;-><init>(ZI)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/basic/util/ModuleType;Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/basic/util/ModuleType;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getVisibleRect()Landroid/graphics/Rect;
    .locals 1

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isClearCameraCoverClosed()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClearCoverClosed()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClearSideCoverClosed()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMiniOpenCover()Z
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_COVER"

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "mini_open"

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isMiniSViewCoverClosed()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Lcom/android/systemui/basic/util/ModuleType;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGlobalActionsCoverActionBeforeSecureConfirm(Ljava/lang/Runnable;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/util/CoverUtil;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_0
    return-void
.end method
