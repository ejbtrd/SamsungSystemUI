.class public Lcom/android/systemui/keyguard/SecurityLog;
.super Ljava/lang/Object;
.source "SecurityLog.java"


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/SecurityDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    return-void
.end method
