.class public Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;
.super Ljava/lang/Object;
.source "ActivityOptionsWrapperImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->init()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getForceLaunchWindowingMode()I
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p0

    return p0
.end method

.method public getLaunchActivityType()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p0

    return p0
.end method

.method public getLaunchWindowingMode()I
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    return p0
.end method

.method public getSplitScreenCreateMode()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 17
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public isStartedFromWindowTypeLauncher()Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result p0

    return p0
.end method

.method public setForceLaunchWindowingMode(I)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    return-void
.end method

.method public setLaunchActivityType(I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    return-void
.end method

.method public setLaunchWindowingMdde(I)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-void
.end method

.method public setSplitScreenCreateMode(I)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    return-void
.end method

.method public setStartedFromWindowTypeLauncher(Z)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    return-void
.end method
