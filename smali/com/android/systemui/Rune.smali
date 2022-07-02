.class public Lcom/android/systemui/Rune;
.super Lcom/android/systemui/BaseRune;
.source "Rune.java"


# static fields
.field public static final QPANEL_CHECK_MHSDBG:Z

.field public static final QPANEL_IS_SIMCHECK_DISABLED:Z

.field public static final SYSUI_APPLOCK:Z

.field public static final SYSUI_BINDER_CALL_MONITOR:Z

.field public static final SYSUI_GRADLE_BUILD:Z

.field public static final SYSUI_IS_TABLET_DEVICE:Z

.field public static final SYSUI_MULTI_SIM:Z

.field public static SYSUI_MULTI_USER:Z

.field public static final SYSUI_TEST_FOR_PLANK:Z

.field public static final SYSUI_UI_THREAD_MONITOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 142
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    .line 152
    sget-boolean v0, Lcom/android/systemui/GradleConfig;->IS_GRADLE_BUILT:Z

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_GRADLE_BUILD:Z

    .line 158
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    .line 162
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    .line 177
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_TEST_FOR_PLANK:Z

    .line 182
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v3, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-eq v0, v3, :cond_3

    .line 183
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v3, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    if-eq v0, v3, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 185
    sget-boolean v3, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->STRICT_MODE_ENABLED:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_4

    .line 187
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getRpCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    .line 221
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    sput-boolean v1, Lcom/android/systemui/Rune;->QPANEL_CHECK_MHSDBG:Z

    const-string v0, "SimCheck.disable"

    .line 222
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SIMCHECK_DISABLED:Z

    .line 239
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    return-void
.end method

.method public static getIf(ZLjava/util/function/IntSupplier;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static refreshMultiUserFeature()V
    .locals 1

    .line 235
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    return-void
.end method

.method public static runIf(ZLjava/util/function/IntSupplier;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 107
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static runIf(ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static runIf(ZLjava/util/function/BiConsumer;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static runIf(ZLjava/util/function/Consumer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static runIf(ZLjava/util/function/Consumer;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static runIf(ZLjava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static runIf(ZLjava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 56
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static runIf(ZLjava/util/function/BooleanSupplier;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
