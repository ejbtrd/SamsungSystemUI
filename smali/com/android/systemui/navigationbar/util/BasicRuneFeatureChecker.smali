.class public Lcom/android/systemui/navigationbar/util/BasicRuneFeatureChecker;
.super Ljava/lang/Object;
.source "BasicRuneFeatureChecker.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFoldableDevice()Z
    .locals 0

    .line 29
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDisplaySwitchingSupported()Z

    move-result p0

    return p0
.end method

.method public isOpenThemeSupported()Z
    .locals 0

    .line 19
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_OPEN_THEME:Z

    return p0
.end method

.method public isRemoteViewSupported()Z
    .locals 0

    .line 14
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    return p0
.end method

.method public isTablet()Z
    .locals 0

    .line 24
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    return p0
.end method
