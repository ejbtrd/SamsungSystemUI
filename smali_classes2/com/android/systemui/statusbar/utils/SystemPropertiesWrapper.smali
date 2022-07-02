.class public Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "SystemPropertiesWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmergencyCallbackMode()Z
    .locals 1

    const-string/jumbo p0, "ril.cdma.inecmmode"

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIne911()Z
    .locals 1

    const-string/jumbo p0, "ril.cdma.ine911"

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSvdo()Z
    .locals 1

    const-string/jumbo p0, "ro.ril.svdo"

    const/4 v0, 0x0

    .line 23
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSvlte1x()Z
    .locals 1

    const-string/jumbo p0, "ro.ril.svlte1x"

    const/4 v0, 0x0

    .line 19
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLteWideBand()Z
    .locals 1

    const-string/jumbo p0, "ril.lte_wideband"

    const-string v0, "0"

    .line 35
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTwoPhoneTestModeEnabled()Z
    .locals 1

    const-string p0, "debug.statbar_twophonemode_test"

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
