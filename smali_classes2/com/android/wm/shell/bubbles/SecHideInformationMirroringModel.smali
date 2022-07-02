.class public Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;
.super Ljava/lang/Object;
.source "SecHideInformationMirroringModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isLeboRunning(Landroid/content/Context;)Z
    .locals 1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "lelink_cast_on"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private isWifiDisplayRunning(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "display"

    .line 52
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method


# virtual methods
.method public shouldHideInformation(Landroid/content/Context;)Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/wm/shell/QpShellRune;->NOTI_HIDE_INFORMATION_MIRRORING:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;->isLeboRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;->isWifiDisplayRunning(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
