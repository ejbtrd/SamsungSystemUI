.class public Lcom/android/systemui/log/dagger/LogModule;
.super Ljava/lang/Object;
.source "LogModule.java"


# direct methods
.method public static provideBroadcastDispatcherLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "BroadcastDispatcherLog"

    const/16 v1, 0x1f4

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideDozeLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "DozeLog"

    const/16 v1, 0x64

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideLogcatEchoTracker(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTracker;
    .locals 1

    .line 112
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->create(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    new-instance p0, Lcom/android/systemui/log/LogcatEchoTrackerProd;

    invoke-direct {p0}, Lcom/android/systemui/log/LogcatEchoTrackerProd;-><init>()V

    return-object p0
.end method

.method public static provideMediaLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "MediaLog"

    const/16 v1, 0x32

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideNotifInteractionLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "NotifInteractionLog"

    const/16 v1, 0x32

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideNotificationSectionLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "NotifSectionLog"

    const/16 v1, 0x3e8

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideNotificationsLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "NotifLog"

    const/16 v1, 0x3e8

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static providePanelLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "PanelLog"

    const/16 v1, 0x5dc

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static providePrivacyLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "PrivacyLog"

    const/16 v1, 0x64

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideQuickSettingsLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "QSLog"

    const/16 v1, 0x1f4

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static provideToastLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "ToastLog"

    const/16 v1, 0x32

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method
