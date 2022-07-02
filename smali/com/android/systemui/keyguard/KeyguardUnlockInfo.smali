.class public final Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.super Ljava/lang/Object;
.source "KeyguardUnlockInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;,
        Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;,
        Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static HISTORY_MAX:I

.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final history:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    .line 27
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    .line 30
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    const/16 v0, 0x21

    .line 33
    sput v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->HISTORY_MAX:I

    .line 36
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p0    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pw"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KeyguardUnlockInfo"

    .line 170
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    monitor-enter v0

    .line 172
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "  "

    .line 173
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final getAuthDetail()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 120
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 119
    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 118
    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getLastInfoAndReset(Z)I
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 142
    :goto_0
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const v2, 0x186a0

    mul-int/2addr p0, v2

    .line 143
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr p0, v2

    .line 144
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v4, :cond_3

    if-eq v2, v1, :cond_1

    goto :goto_2

    .line 152
    :cond_1
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-nez v1, :cond_2

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v1

    goto :goto_1

    .line 146
    :cond_3
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-nez v1, :cond_4

    goto :goto_2

    .line 147
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_1
    mul-int/lit8 v1, v1, 0x64

    add-int/2addr p0, v1

    :cond_5
    :goto_2
    if-le p0, v0, :cond_6

    .line 160
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/2addr p0, v0

    .line 163
    :cond_6
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->getAuthDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory(Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    return p0
.end method

.method public static final isUnknownTrigger()Z
    .locals 2

    .line 114
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final leaveHistory(Ljava/lang/String;Z)V
    .locals 3

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeDateTimeStr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    sget v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->HISTORY_MAX:I

    if-le v1, v2, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit v0

    .line 133
    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    if-nez p0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const-string p0, "KeyguardUnlockInfo"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 134
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0
.end method

.method static synthetic leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 124
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final reset()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 43
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 44
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-void
.end method

.method public static final setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4
    .param p0    # Landroid/hardware/biometrics/BiometricSourceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 82
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 83
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    .line 84
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    const-string/jumbo v2, "setAuthDetail: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 4
    .param p0    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 90
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 91
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v1, 0x0

    .line 92
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    const-string/jumbo v2, "setAuthDetail: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final setAuthDetailSkipBouncer()V
    .locals 5

    .line 106
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v1, 0x0

    .line 107
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 108
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const-string/jumbo v2, "setAuthDetailSkipBouncer"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 109
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final setAuthDetailSmartLock()V
    .locals 5

    .line 98
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v1, 0x0

    .line 99
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 100
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const-string/jumbo v2, "setAuthDetailSmartLock"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 101
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 4
    .param p0    # Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 49
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v0, p0, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    const-string/jumbo v2, "setUnlockTrigger: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 5
    .param p0    # Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 69
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v0, p0, :cond_0

    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUnlockTriggerIfNotSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v0, v1, :cond_3

    .line 76
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    :cond_3
    return-void
.end method
