.class final Lcom/android/systemui/keyguard/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 31
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-static {p1, p2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static t(II)V
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(II)V

    return-void
.end method

.method static t(III)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(III)V

    return-void
.end method

.method static t(IZ)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(IZ)V

    return-void
.end method

.method static t(IZZZ)V
    .locals 0

    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(IZZZ)V

    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 54
    invoke-static {p1, p2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    return-void
.end method
